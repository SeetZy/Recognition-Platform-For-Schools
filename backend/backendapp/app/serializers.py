from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.validators import UniqueTogetherValidator
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group
from django.contrib.auth import get_user_model



class UserSerializer(serializers.ModelSerializer):

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user

    class Meta:
        model = User
        fields = (
            'username',
            'first_name',
            'last_name',
            'email',
            'password',
        )
        validators = [
            UniqueTogetherValidator(
                queryset=User.objects.all(),
                fields=['username', 'password']
            )
        ]

User = get_user_model()
class Teacher(UserCreationForm):
    class Meta:
        model = User
        fields=('username','school','subject','password')

    def save(self,commit=True):
        user = super().save(commit=False)
        user.groups.add(Group.objects.get(name='Teachers'))
        if commit:
            user.save()
        return user
