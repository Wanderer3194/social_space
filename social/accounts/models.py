from django.db import models
from django.contrib.auth import User, PermissionsMixin


class User(User, PermissionsMixin):

    def __str__(self):
        return "@{}".format(self.username)
    

