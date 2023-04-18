from django.urls import path
from . import views
from .views import UserRecordView


urlpatterns =[
    path('hellodjango', views.hello_django, name='hellodjango'),
    path('user/', UserRecordView.as_view(), name='users')
]