from django.contrib import admin
from django.urls import path
from main.views import home # Import fungsi yang kita buat tadi

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home), # Biarkan kosong ('') agar jadi halaman utama
]