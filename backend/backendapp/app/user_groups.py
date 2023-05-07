from django.contrib.auth.models import Group
from django.contrib.auth import get_user_model
from django.shortcuts import render

User = get_user_model()
user = User.objects.get(username='example_student')
group = Group.objects.get(name='Students')
user.groups.add(group)

user = User.objects.get(username='example_teacher')
group = Group.objects.get(name='Teachers')
user.groups.add(group)

from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import user_passes_test

@login_required
@user_passes_test(lambda u: u.groups.filter(name='Students').exists(), login_url='/')
def student_dashboard(request):
    text= "Welcome students"
    return render(request, 'student_dashboard.html',{'text':text})

@login_required
@user_passes_test(lambda u: u.groups.filter(name='Teachers').exists(), login_url='/')
def teacher_dashboard(request):
    
    pass