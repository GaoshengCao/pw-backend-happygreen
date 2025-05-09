from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),

    # User endpoints
    path('users/', views.UserListCreateView.as_view(), name='user-list-create'),
    path('users/<int:pk>/', views.UserDetailView.as_view(), name='user-detail'),

    # Group endpoints
    path('groups/', views.GroupListCreateView.as_view(), name='group-list-create'),
    path('groups/<int:pk>/', views.GroupDetailView.as_view(), name='group-detail'),

    # Membership endpoints
    path('memberships/', views.MembershipListCreateView.as_view(), name='membership-list-create'),
    path('memberships/<int:pk>/', views.MembershipDetailView.as_view(), name='membership-detail'),

    # Post endpoints
    path('posts/', views.PostListCreateView.as_view(), name='post-list-create'),
    path('posts/<int:pk>/', views.PostDetailView.as_view(), name='post-detail'),

    # Comment endpoints
    path('comments/', views.CommentListCreateView.as_view(), name='comment-list-create'),
    path('comments/<int:pk>/', views.CommentDetailView.as_view(), name='comment-detail'),

    # ScannedObject endpoints
    path('scanned-objects/', views.ScannedObjectListCreateView.as_view(), name='scannedobject-list-create'),
    path('scanned-objects/<int:pk>/', views.ScannedObjectDetailView.as_view(), name='scannedobject-detail'),

    # Quiz endpoints
    path('quizzes/', views.QuizListCreateView.as_view(), name='quiz-list-create'),
    path('quizzes/<int:pk>/', views.QuizDetailView.as_view(), name='quiz-detail'),

    # Badge endpoints
    path('badges/', views.BadgeListCreateView.as_view(), name='badge-list-create'),
    path('badges/<int:pk>/', views.BadgeDetailView.as_view(), name='badge-detail'),

    # EcoProduct endpoints
    path('eco-products/', views.EcoProductListCreateView.as_view(), name='ecoproduct-list-create'),
    path('eco-products/<int:pk>/', views.EcoProductDetailView.as_view(), name='ecoproduct-detail'),

    # WasteClassification endpoints
    path('waste-classifications/', views.WasteClassificationListCreateView.as_view(), name='wasteclassification-list-create'),
    path('waste-classifications/<int:pk>/', views.WasteClassificationDetailView.as_view(), name='wasteclassification-detail'),
]
