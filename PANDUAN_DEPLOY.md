# 🚀 Panduan Deploy ke Render — Portofolio Brilianti

## Langkah 1 — Siapkan file di proyekmu

Copy file-file berikut ke dalam folder proyek Django kamu (UTS_Brilianti/):

```
UTS_Brilianti/
├── core/
│   ├── settings.py        ← GANTI dengan settings.py dari zip ini
│   ├── urls.py            (tidak perlu diubah)
│   ├── views.py           (tidak perlu diubah)
│   └── wsgi.py            (tidak perlu diubah)
├── static/
│   ├── css/
│   │   └── style.css      ← pastikan ada
│   └── profile-dira.jpeg  ← pastikan ada
├── templates/
│   └── index.html         ← pastikan sudah pakai {% load static %}
├── requirements.txt       ← FILE BARU dari zip ini
├── build.sh               ← FILE BARU dari zip ini
└── render.yaml            ← FILE BARU dari zip ini
```

---

## Langkah 2 — Update index.html (wajib!)

Buka `templates/index.html`, tambahkan di baris PALING ATAS (sebelum <!DOCTYPE>):

```
{% load static %}
```

Lalu ubah pemanggilan CSS dan foto:

```html
<!-- CSS -->
<link rel="stylesheet" href="{% static 'css/style.css' %}">

<!-- Foto profil -->
<img src="{% static 'profile-dira.jpeg' %}" alt="Foto Brilianti">
```

---

## Langkah 3 — Upload ke GitHub

1. Buka github.com → New repository
2. Nama repo: `portofolio-brilianti` (atau terserah)
3. Pilih **Private** (biar aman)
4. Upload semua file proyek ke repo itu

Atau pakai Git di terminal:
```bash
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/USERNAME/NAMA_REPO.git
git push -u origin main
```

---

## Langkah 4 — Deploy di Render

1. Buka **render.com** → Sign up / Login (bisa pakai akun GitHub)
2. Klik **New +** → **Web Service**
3. Pilih **Connect a repository** → pilih repo GitHub kamu
4. Isi pengaturan:

| Setting | Nilai |
|---|---|
| Name | portofolio-brilianti |
| Runtime | Python |
| Build Command | `./build.sh` |
| Start Command | `gunicorn core.wsgi:application` |

5. Klik **Advanced** → **Add Environment Variable**:
   - `SECRET_KEY` → klik **Generate** (biarkan Render yang buat)
   - `DEBUG` → `False`

6. Klik **Create Web Service**

Render akan mulai build (sekitar 2-3 menit). Setelah selesai kamu dapat URL seperti:
`https://portofolio-brilianti.onrender.com`

---

## ⚠️ Catatan Penting

- **File `build.sh`** harus punya permission execute. Kalau deploy gagal karena ini, jalankan di terminal lokal:
  ```bash
  chmod +x build.sh
  git add build.sh
  git commit -m "fix build.sh permission"
  git push
  ```

- **Render free tier** akan sleep setelah 15 menit tidak ada pengunjung. Saat ada pengunjung baru, loading pertama ~30 detik. Ini normal untuk paket gratis.

- **SECRET_KEY** jangan pernah ditulis langsung di settings.py dan jangan di-upload ke GitHub!
