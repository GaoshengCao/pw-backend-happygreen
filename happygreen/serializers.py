from rest_framework import serializers

from .models import (
    User, Group, Membership, Post, Comment,
    ScannedObject, Quiz, Badge, EcoProduct, WasteClassification
)


# ----- User Serializer -----
class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    class Meta:
        model = User
        fields = ['id', 'username', 'password', 'profile_pic', 'points', 'level', 'date_joined']
        read_only_fields = ['id', 'points', 'level', 'date_joined']

    def create(self, validated_data):
        password = validated_data.pop('password')
        user = User(**validated_data)
        user.set_password(password)
        user.save()
        return user

# ----- Group Serializer -----
class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = Group
        fields = ['id', 'name', 'created_by', 'created_at']
        read_only_fields = ['id', 'created_at']

# ----- Membership Serializer -----
class MembershipSerializer(serializers.ModelSerializer):
    class Meta:
        model = Membership
        fields = ['id', 'user', 'group', 'role', 'joined_at']
        read_only_fields = ['id', 'joined_at']

# ----- Post Serializer -----
class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ['id', 'group', 'author', 'text', 'image', 'location_lat', 'location_lng', 'created_at']
        read_only_fields = ['id', 'created_at']

# ----- Comment Serializer -----
class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['id', 'post', 'author', 'text', 'created_at']
        read_only_fields = ['id', 'created_at']

# ----- ScannedObject Serializer -----
class ScannedObjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = ScannedObject
        fields = ['id', 'user', 'object_type', 'description', 'image', 'recognized_at', 'location_lat', 'location_lng']
        read_only_fields = ['id', 'recognized_at']

# ----- Quiz Serializer -----
class QuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = Quiz
        fields = ['id', 'title', 'description']
        read_only_fields = ['id']

# ----- Badge Serializer -----
class BadgeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Badge
        fields = ['id', 'name', 'description', 'icon']
        read_only_fields = ['id']

# ----- EcoProduct Serializer -----
class EcoProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = EcoProduct
        fields = ['id', 'barcode', 'name', 'brand', 'eco_score', 'sustainable_alt']
        read_only_fields = ['id']

# ----- WasteClassification Serializer -----
class WasteClassificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = WasteClassification
        fields = ['id', 'material', 'bin_color', 'instructions', 'image']
        read_only_fields = ['id']
