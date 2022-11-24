#  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
bisa, namun kurang efektif  seperti contohnya kita tidak dapat mengakses data JSON tersebut sebagai sebuah 'class'.

#  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- MaterialPageRoute --> Berfungsi untuk melakukan perubahan page (change screen).
- Container --> Berfungsi untuk menampung widget-widget yang akan digunakan.
- ListView --> Berfungsi sebagai list widget.
- FutureBuilder --> Berfungsi untuk membuat (create) widget ketika menangkap data.
- Text --> Berfungsi untuk membuat text.
- TextStyle --> Berfungsi untuk styling text.
- ElevatedButton --> Berfungsi untuk membuat button di bawah
- BoxDecoration --> Berfungsi untuk styling container / box.
- Column --> Berfungsi sebagai container yang berbasis kolom.
- CheckBox --> Berfungsi sebagai state untuk mengganti status film_watched.

# Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Pertama, menambahkan dependancy http dengan menginstall http pada cmd flutter pub add http.
- Kemudian, membuat model dari data yang akan di GET (Bersifat OPTIONAL).
- Lalu, membuat HTTP Request untuk GET.
- Selanjutnya, GET yang sudah didapat tersebut, kita ubah menjadi model.
- Terakhir, menampilkan data menggunakan FutureBuilder yang berisi widget / component dengan data yang telah sukses di GET.

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Langkah Pertama, menambahkan dependancy http dengan menginstall http pada cmd flutter pub add http.
- Langkah Kedua, membuat model watchlist untuk data My WatchList
- Langkah Ketiga, membuat page mywatchlist.dart.
- Langkah Keempat, menambahkan page My Watch List ke drawer.
- Langkah Kelima, membuat folder berisi file fetchData.dart untuk melakukan fetch data dari URL.
- Langkah Keenam, melakukan fetch dengan futureBuilder untuk menampilkan pada page mywatchlist.dart.
- Langkah ketujuh, data yang sudah sukses terambil akan di looping dengan item builder, kemudian akan membentuk komponen seperti card.
- Langkah terakhir, membuat navigator push yang berfungsi untuk menampilkan detail dari masing-masing film yang berhasil di GET ketika card komponen di click.