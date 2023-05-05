from django.urls import path
from . import views
from .views import UserRecordView

app_name = 'backendcore'
urlpatterns =[
    path('hellodjango', views.hello_django, name='hellodjango'),
    path('user/', UserRecordView.as_view(), name='users')
]