from django.shortcuts import render
from rest_framework import generics
from rest_framework.permissions import IsAuthenticated
from .models import (
    User, Group, Membership, Post, Comment,
    ScannedObject, Quiz, Badge, EcoProduct, WasteClassification
)
from .serializers import (
    UserSerializer, GroupSerializer, MembershipSerializer, PostSerializer,
    CommentSerializer, ScannedObjectSerializer, QuizSerializer,
    BadgeSerializer, EcoProductSerializer, WasteClassificationSerializer
)

# ----- User Views -----
class UserListCreateView(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    #permission_classes = [IsAuthenticated]

class UserDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    lookup_field = 'pk'
    #permission_classes = [IsAuthenticated]

# ----- Group Views -----
class GroupListCreateView(generics.ListCreateAPIView):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    #permission_classes = [IsAuthenticated]

class GroupDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    lookup_field = 'pk'
    #permission_classes = [IsAuthenticated]

# ----- Membership Views -----
class MembershipListCreateView(generics.ListCreateAPIView):
    queryset = Membership.objects.all()
    serializer_class = MembershipSerializer
    #permission_classes = [IsAuthenticated]

class MembershipDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Membership.objects.all()
    serializer_class = MembershipSerializer
    lookup_field = 'pk'
    #permission_classes = [IsAuthenticated]

# ----- Post Views -----
class PostListCreateView(generics.ListCreateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    #permission_classes = [IsAuthenticated]

class PostDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    lookup_field = 'pk'
    #permission_classes = [IsAuthenticated]

# ----- Comment Views -----
class CommentListCreateView(generics.ListCreateAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer
    #permission_classes = [IsAuthenticated]

class CommentDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer
    lookup_field = 'pk'
    #permission_classes = [IsAuthenticated]

# ----- ScannedObject Views -----
class ScannedObjectListCreateView(generics.ListCreateAPIView):
    queryset = ScannedObject.objects.all()
    serializer_class = ScannedObjectSerializer
    #permission_classes = [IsAuthenticated]

class ScannedObjectDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = ScannedObject.objects.all()
    serializer_class = ScannedObjectSerializer
    lookup_field = 'pk'
    #permission_classes = [IsAuthenticated]

# ----- Quiz Views -----
class QuizListCreateView(generics.ListCreateAPIView):
    queryset = Quiz.objects.all()
    serializer_class = QuizSerializer

class QuizDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Quiz.objects.all()
    serializer_class = QuizSerializer
    lookup_field = 'pk'

# ----- Badge Views -----
class BadgeListCreateView(generics.ListCreateAPIView):
    queryset = Badge.objects.all()
    serializer_class = BadgeSerializer

class BadgeDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Badge.objects.all()
    serializer_class = BadgeSerializer
    lookup_field = 'pk'

# ----- EcoProduct Views -----
class EcoProductListCreateView(generics.ListCreateAPIView):
    queryset = EcoProduct.objects.all()
    serializer_class = EcoProductSerializer

class EcoProductDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = EcoProduct.objects.all()
    serializer_class = EcoProductSerializer
    lookup_field = 'pk'

# ----- WasteClassification Views -----
class WasteClassificationListCreateView(generics.ListCreateAPIView):
    queryset = WasteClassification.objects.all()
    serializer_class = WasteClassificationSerializer

class WasteClassificationDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = WasteClassification.objects.all()
    serializer_class = WasteClassificationSerializer
    lookup_field = 'pk'


def home(request):
    return render(request, 'index.html')