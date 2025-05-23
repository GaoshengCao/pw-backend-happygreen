from django.db import models
from django.contrib.auth.models import AbstractUser

# Custom User (senza email)
class User(AbstractUser):
    email = None  # Disabilito l'email
    profile_pic = models.ImageField(upload_to='profiles/', null=True, blank=True)
    points = models.IntegerField(default=0)
    level = models.IntegerField(default=1)
    date_joined = models.DateTimeField(auto_now_add=True)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []  # Solo username e password
    pass

# Gruppi di amici
class Group(models.Model):
    name = models.CharField(max_length=100)
    created_by = models.ForeignKey(User, on_delete=models.CASCADE, related_name='groups_created')
    created_at = models.DateTimeField(auto_now_add=True)

# Relazione User-Group con attributi
class Membership(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='memberships')
    group = models.ForeignKey(Group, on_delete=models.CASCADE, related_name='memberships')
    role = models.CharField(max_length=20, choices=[('admin', 'Admin'), ('member', 'Member')])
    joined_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('user', 'group')

# Post nel gruppo
class Post(models.Model):
    group = models.ForeignKey(Group, on_delete=models.CASCADE, related_name='posts')
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name='posts')
    text = models.TextField(blank=True)
    image = models.ImageField(upload_to='posts/', null=True, blank=True)
    location_lat = models.FloatField(null=True, blank=True)
    location_lng = models.FloatField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

# Commenti ai post
class Comment(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name='comments')
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name='comments')
    text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

# Oggetti scansionati
class ScannedObject(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='scanned_objects')
    object_type = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    image = models.ImageField(upload_to='scanned_objects/', null=True, blank=True)
    recognized_at = models.DateTimeField(auto_now_add=True)
    location_lat = models.FloatField(null=True, blank=True)
    location_lng = models.FloatField(null=True, blank=True)

# Quiz e domande
class Quiz(models.Model):
    question_text = models.CharField(max_length=200)
    correct_answer = models.CharField(max_length=200)
    wrong_answers = models.JSONField()  # Lista di risposte errate

# Risultati dei quiz
class QuizResult(models.Model):
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE, related_name='results')
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='quiz_results')
    score = models.IntegerField()
    completed_at = models.DateTimeField(auto_now_add=True)

# Badge e assegnazioni
class Badge(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()
    icon = models.ImageField(upload_to='badges/')

class UserBadge(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='badges')
    badge = models.ForeignKey(Badge, on_delete=models.CASCADE, related_name='users')
    earned_at = models.DateTimeField(auto_now_add=True)

# Prodotti eco-friendly tramite barcode
class EcoProduct(models.Model):
    barcode = models.CharField(max_length=50, unique=True)
    name = models.CharField(max_length=200)
    brand = models.CharField(max_length=100, blank=True)
    eco_score = models.CharField(max_length=2)  # A-E
    sustainable_alt = models.JSONField(blank=True)  # Alternative suggerite

# Classificazione dei rifiuti
class WasteClassification(models.Model):
    material = models.CharField(max_length=50)
    bin_color = models.CharField(max_length=30)
    instructions = models.TextField()
    image = models.ImageField(upload_to='waste_classes/')
