<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework. You can also check out [Laravel Learn](https://laravel.com/learn), where you will be guided through building a modern Laravel application.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Redberry](https://redberry.international/laravel-development)**
- **[Active Logic](https://activelogic.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

===================================================================================================================================================================

#CREDIT:

Pembagian tugas proyek:
•	Project Manager: DIRA FITRI ANNISA (2405102079)
•	System Analyst dan Investor: PENRA ONESIMUS SAMOSIR (2405102103)
•	Frontend Developer dan Web Designer: HOLIKRISTIN BR GINTING (2405102019)
•	Backend Developer dan Database Administrator: NAIA BILBINA (2405102091)

# MANUAL BOOK
3.1	Pendahuluan
RestoFeasto merupakan sistem informasi reservasi restoran dan pre-order berbasis web yang dirancang untuk membantu pelanggan dalam melakukan reservasi meja, pemesanan menu, serta pembayaran dengan upload bukti transaksi. Sistem ini memiliki tiga jenis pengguna, yaitu Admin, Kasir, dan Pelanggan. Manual book ini disusun sebagai panduan penggunaan sistem agar setiap pengguna dapat mengoperasikan fitur yang tersedia dengan mudah dan sesuai dengan hak aksesnya.
3.2	Hak Akses Pengguna (Role)
3.2.1	Admin, memiliki akses untuk:
•	Mengelola data pengguna.
•	Mengelola menu makanan dan minuman.
•	Mengelola kategori menu.
•	Mengelola data meja restoran.
•	Melihat seluruh transaksi.
•	Mengelola status pesanan.
•	Memantau aktivitas sistem.

3.2.2	Kasir, memiliki akses untuk:
•	Melihat daftar pesanan masuk.
•	Melihat bukti pembayaran.
•	Memverifikasi pembayaran.
•	Mengubah status pesanan.
•	Melihat riwayat transaksi.
3.2.3	Pelanggan, memiliki akses untuk:
•	Registrasi akun.
•	Login ke sistem.
•	Melakukan reservasi meja.
•	Memilih menu makanan.
•	Upload bukti pembayaran.
•	Melihat riwayat pesanan.
•	Memberikan review atau feedback.

3.3	Panduan Instalasi Sistem
Dikarenakan website belum dihosting, maka sebelum menjalankan aplikasi website, pastikan perangkat telah memiliki:
•	PHP versi 8 atau lebih baru
•	Composer
•	MySQL
•	XAMPP
•	Laravel
Cara 1:
Download file zip code dari link repo GitHub, dan extract all folders.
Cara 2 (akses sebagai collaborator):
Buka Terminal. Masuk ke: cd C:\xampp\htdocs . Clone repository: git clone https://github.com/holikristin-rgb/Web_RestoFeasto.git
Aktifkan Apache dan MySQL di XAMPP Anda. Import database db_restofeasto.sql yang terletak di folder Web_RestoFeasto/database/ db_restofeasto.sql ke database baru di localhost/phpmyadmin Anda. Pastikan folder project (web code) sudah di direktori C:\xampp\htdocs. Install Dependency dengan Buka terminal pada folder project di VSCode lalu jalankan:
composer install
Jika xampp dan php utama anda masih versi 8.0---, Anda bisa download Xampp Versi 8.2+, serta php 8,2 lalu jalankan dalam 1 baris perintah:
C:\xampp82\php\php.exe C:\ProgramData\ComposerSetup\bin\composer.phar install
Cek apakah .env sudah ada di folder utama, atau di PowerShell dengan perintah:
dir .env*
Kalau hanya ada file: .env.example , buatlah .env dengan perintah di terminal:
	copy .env.example .env
Generate Key Laravel di terminal:
php artisan key:generate
Jika xampp utama anda versi 8.0---, Anda bisa jalankan perintah:
C:\xampp82\php\php.exe artisan key:generate
Akan tampil:
INFO Application key set successfully.
Atur/cek konfigurasi database di file .env, sesuaikan dengan database yang sudah diimport:
	DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_restofeasto
DB_USERNAME=root
DB_PASSWORD=
Jika database sudah pernah diisi dengan file SQL, jangan migrate dahulu (php artisan migrate).
Jalankan Laravel:
	php artisan serve
Jika xampp utama anda versi 8.0---, Anda bisa jalankan perintah:
C:\xampp82\php\php.exe artisan serve
Akan tampil:
PS C:\xampp\htdocs\Web_RestoFeasto> C:\xampp82\php\php.exe artisan serve
   INFO  Server running on [http://127.0.0.1:8000].  
  Press Ctrl+C to stop the server
Lalu, buka browser, akses: http://127.0.0.1:8000

3.4	Panduan Penggunaan untuk Pelanggan
Langkah-langkah registrasi yaitu: Buka halaman Home -> klik tombol Register -> isi data:
•	Nama
•	Email
•	Password
•	Klik tombol Daftar
•	Ketik kode OTP yang dikirim ke email Anda
•	Sistem akan menyimpan akun pengguna
Pilih tombol Login. Jika ingin mengganti password, klik lupa password dan lakukan verifikasi OTP dengan Email yang Anda daftarkan dan ikuti petunjuknya. Masukkan email dan password. Klik tombol Masuk. Pengguna akan diarahkan ke dashboard.
Pilih pesan pada menu makanan/minuman. Tentukan jumlah pesanan. Klik lanjutkan ke reservasi. Pilih tanggal reservasi. Pilih jumlah tamu. Pilih meja yang tersedia. Klik Buat Reservasi Sekarang.
Sistem akan menghitung total harga dan fitur QR Pembayaran Dana Merchant. Klik choose file bukti pembayaran dan klik kirim bukti pembayaran. Selanjutnya pembayaran akan dikonfirmasi kasir, Anda dapat datang ke restauran di  Hari-H dan menunjukkan ID Reservasi kepada Pelayan.
Setelah pelanggan selesai berkunjung, kasir akan klik “tandai selesai”, dan anda dapat memberikan feedback dan rating di halaman riwayat reservasi dan pembayaran.
3.5	Panduan Penggunaan untuk Kasir
Pilih login. Tambahkan /kasir pada ujung belakang URL Website. Login menggunakan akun kasir: kasir@restofeasto.com yang otomatis muncul. Sistem akan menampilkan Panel Kasir. Lihat detail pesanan pelanggan. Kasir juga dapat melihat Landing Page dengan klik logo “RestoFeasto” di pojok kiri atas.
Buka “lihat bukti“ pembayaran. Klik terima atau tolak. Klik Konfirmasi jika pembayaran oleh pelanggan sudah dilakukan. Kasir dapat mencocokkan ID Reservasi yang pelanggan berikan dengan yang ada di panel kasir saat mereka berkunjung.
Setelah pelanggan sudah selesai berkunjung, kasir dapat klik tombol “tandai selesai” untuk menandakan meja tersebut telah kosong dan pelanggan selesai berkunjung. Password kasir dapat diganti melalui dashboard role SuperAdmin.
3.6	Panduan Penggunaan untuk Admin
Dashboard admin digunakan untuk mengelola data restoran pada fitur dan tombol yang disediakan, seperti:
•	Kelola Menu
•	Kategori Menu
•	Meja Makan
•	Daftar Staff (Staff) beserta password
•	Ulasan Pelanggan
•	Pengaturan Resto
Cara login: Klik login. Tambahkan /admin pada ujung belakang URL Website. Login menggunakan akun admin: admin@restofeasto.com yang otomatis muncul. Admin juga dapat melihat Landing Page dengan klik logo “RestoFeasto” di pojok kiri atas. Akun SuperAdmin bersifat permanen, hanya bisa diedit datanya (seperti password, dan lain-lain) dan tidak dapat dihapus.
