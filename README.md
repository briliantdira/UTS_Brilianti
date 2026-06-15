# Portofolio Brilianti Adira Anamani

## Struktur File
```
portfolio/
├── index.html      ← Halaman utama
├── style.css       ← Semua styling (terpisah dari HTML)
└── profile-dira.jpeg  ← Foto profil (copy dari folder static Django)
```

## Cara Deploy

### GitHub Pages (Gratis & Mudah)
1. Buat akun di github.com
2. Buat repository baru (misal: `portofolio`)
3. Upload ketiga file di atas
4. Masuk ke Settings → Pages → Source: pilih `main branch`
5. Portofolio bisa diakses di: `https://username.github.io/portofolio`

### Netlify (Gratis, Drag & Drop)
1. Buka netlify.com → Sign up gratis
2. Drag & drop folder `portfolio/` ke dashboard Netlify
3. Selesai! Kamu dapat URL otomatis

### Vercel (Gratis)
1. Buka vercel.com → Sign up dengan GitHub
2. Import repository GitHub kamu
3. Deploy otomatis

## Cara Menambahkan Dokumentasi ke Kartu
Buka `index.html`, cari bagian `const modalData = {` lalu edit:
- `intro`: teks pengantar dari kamu tentang kegiatan tersebut
- `highlights`: poin-poin kegiatan yang ingin ditonjolkan
- Ganti placeholder foto dengan tag `<img>` di bagian `modal-photo-placeholder`

## Catatan
- Foto profil: pastikan file `profile-dira.jpeg` ada di folder yang sama dengan `index.html`
- Semua kontak (WhatsApp, Email, LinkedIn, Instagram) sudah bisa diklik langsung
- Portofolio 100% responsif untuk HP dan desktop
