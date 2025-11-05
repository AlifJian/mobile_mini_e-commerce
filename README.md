# 🛍️ Flutter E-Commerce App (Tanpa Backend)

Proyek ini merupakan **aplikasi e-commerce sederhana berbasis Flutter** yang tidak menggunakan backend.
Semua data produk dan cart disimpan secara lokal menggunakan state management bawaan Flutter.

Aplikasi ini terdiri dari tiga halaman utama:

* 🏠 **Shop Page** — Menampilkan daftar produk yang tersedia.
* 🛒 **Cart Page** — Menampilkan item yang telah dimasukkan ke keranjang beserta total harga.
* 🚀 **Intro Page** — Halaman pembuka yang memperkenalkan aplikasi sebelum masuk ke toko.

Tujuan proyek ini adalah untuk mempelajari **alur dasar aplikasi e-commerce** di Flutter seperti:

* Navigasi antar halaman
* Pengelolaan state cart
* Desain UI responsif dengan `ListView`

---

## 📸 **Tampilan Aplikasi**

### Intro Page

<img width="517" height="807" alt="image" src="https://github.com/user-attachments/assets/beeb3d4a-c4d6-4542-b16f-f43e4303ca9f" />

### Shop Page

<img width="505" height="805" alt="image" src="https://github.com/user-attachments/assets/81a38856-2778-47ed-9207-3854ffb0d4f8" />

---

<img width="508" height="803" alt="image" src="https://github.com/user-attachments/assets/3eb534e6-17ae-44c6-b58b-88b67f898bf4" />

### Drawer

<img width="500" height="796" alt="image" src="https://github.com/user-attachments/assets/96b01eba-3bf8-4bbc-ab79-2ed6773c3a13" />

### Cart Page

<img width="501" height="800" alt="image" src="https://github.com/user-attachments/assets/f681b5c8-4548-4f46-b841-01a9c46cb143" />

---

<img width="508" height="807" alt="image" src="https://github.com/user-attachments/assets/a528e82d-0fd7-4fd5-a543-f3bb9dce7de7" />

---

## ⚙️ **Teknologi yang Digunakan**

* **Flutter 3.x+**
* **Dart**
* **Provider** untuk manajemen state sederhana
* **Local data (tanpa backend)**

---

## 🚀 **Cara Menjalankan Proyek**

```bash
git clone https://github.com/AlifJian/mobile_mini_e-commerce
cd flutter_ecommerce_no_backend
flutter pub get
flutter run
```

---

## 🧩 **Struktur Folder Singkat**

```
lib/
│
├── main.dart
├── pages/
│   ├── intro_page.dart
│   ├── shop_page.dart
│   └── cart_page.dart
├── themes/
    └── dark_theme.dart
├── components/
│   ├── drawer_gw.dart
│   ├── list_tile_gw.dart
│   ├── product_tile.dart
│   └── tombol_gw.dart 
└── models/
    ├── product.dart
    └── shop.dart
```

---

## 💡 **Catatan**

Proyek ini cocok sebagai dasar untuk:

* Belajar membuat tampilan e-commerce di Flutter.
* Eksperimen menambahkan backend (Firebase, Supabase, atau API lokal) di tahap berikutnya.

---
