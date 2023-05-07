from django.urls import path
from .views import UserRecordView,teacher_registration

app_name = 'app'
urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
    path('teacher-registration',teacher_registration,name='teacher-registration')
]