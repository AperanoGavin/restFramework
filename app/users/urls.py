from django.urls import path
from .views import CustomUserViewSet

urlpatterns = [
    path('users/', CustomUserViewSet.as_view({'get': 'list', 'post': 'create'}), name='users-list'),
    path('users/<int:pk>/', CustomUserViewSet.as_view({'get': 'retrieve'}), name='user-detail'),
]
