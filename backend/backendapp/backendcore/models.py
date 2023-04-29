from django.db import models

# Create your models here.

class Local(models.Model):
    _DATABASE = 'default'
    
class Remote(models.Model):
    _DATABASE = 'remote'
     