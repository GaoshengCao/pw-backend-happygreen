from django.shortcuts import render
from rest_framework import generics
from happygreen.models import BlogPost
from happygreen.serializers import BlogPostSerializer
from django.http import HttpResponse

class BlogPostListCreate(generics.ListCreateAPIView):
    queryset = BlogPost.objects.all()
    serializer_class = BlogPostSerializer

class BlogPostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = BlogPost.objects.all()
    serializer_class = BlogPostSerializer
    lookup_field = 'pk'

def index(request):
    return render(request, 'index.html')