from django.db import models
from django.contrib.auth.models import AbstractUser, Group

# Create your models here.


class CustomUser(AbstractUser):
    # Add your custom fields here if needed
    pass