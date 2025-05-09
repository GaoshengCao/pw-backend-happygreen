from django.urls import path
from . import views
urlpatterns = [
    path('blogpost/', views.BlogPostListCreate.as_view(), name='blogpost-list-create'),
    path('blogpost/<int:pk>/', views.BlogPostDetail.as_view(), name='blogpost-detail'),
    path('', views.index, name='index'),
]