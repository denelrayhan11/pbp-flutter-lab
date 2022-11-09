## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Widget stateless adalah widget yang menjelaskan bagian dari antarmuka pengguna dengan membangun konstelasi widget lain yang menggambarkan antarmuka pengguna secara lebih konkret. Proses pembangunan berlanjut secara rekursif hingga deskripsi antarmuka pengguna sepenuhnya konkret
- Widget stateful adalah widget yang menggambarkan bagian dari antarmuka pengguna dengan membangun konstelasi widget lain yang menggambarkan antarmuka pengguna secara lebih konkret. Proses pembangunan berlanjut secara rekursif hingga deskripsi antarmuka pengguna sepenuhnya konkret
- Widget dapat berupa stateful atau stateless. Jika widget dapat berubah—ketika pengguna berinteraksi dengannya, misalnya—itu stateful.

Widget tanpa kewarganegaraan tidak pernah berubah. Icon, IconButton, dan Text adalah contoh widget stateless. Subkelas widget stateless StatelessWidget.

Widget stateful bersifat dinamis: misalnya, ia dapat mengubah tampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data. Kotak centang, Radio, Slider, InkWell, Form, dan TextField adalah contoh widget stateful. Subkelas widget stateful StatefulWidget.

Status widget disimpan dalam objek State, memisahkan status widget dari penampilannya. Status terdiri dari nilai yang dapat berubah, seperti nilai penggeser saat ini atau apakah kotak centang dicentang. Saat status widget berubah, objek status memanggil setState(), memberi tahu framework untuk menggambar ulang widget.
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. MaterialApp : adalah sebuah parent dimana yang diapitnya akan menerapkan style material design
2. Scaffold : Widget ini memiliki peran untuk mengatur struktur visual layout dengan mengimplementasikan material design
3. Text : Widget ini berfungsi untuk menampilkan text pada aplikasi
4. TextStyle : Widget ini berfungsi untuk memberikan styling pada text misalnya warna dan memiliki syntax mirip css
5. Padding : membuat layout pada tampilan aplikasi untuk masing-masing widget
6. FloatingActionButton: Widget ini berfungsi untuk membuat sebuah tombol
## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() merupakan sebuah fungsi yang berguna untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut sesuai dengan nilai yang sudah diubah. Variabel yang dapat terdampak pada fungsi tersebut adalah variabel yang bersifat stateful widget shingga variable harus yang sifatnya mutable atau tidak statis dan terdeklarasi secara global di sebuah class.
## Jelaskan perbedaan antara const dengan final
1. Const mengharuskan variabel harus diinialisasi pada saat kompilasi sedangkan final tidak mengharuskan variabel memiliki nilai didalam kode pada saat kompilasi.
2. Nilai pada final dapat memiliki nilai yang berbeda dalam variabel yang sama. Sedangkan const tidak dapat memiliki nilai yang berbeda dalam variabel anggota yang sama.
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Awalnya saya Membuat program Flutter dengan menjalankan perintah "flutter create counter_7" didalam repositori repo-tugas-pbp

2. Lalu membuat variabel counter pada class MyHomePageState untuk menampilkan angka pada aplikasi

3. Lalu membuat method _decrementCounter() sama seperti _incrementCounter() yang sebelumnya sudah ada saat kita membuat app baru, namun bedanya method ini akan mengurangi nilai pada counter. Ketika counter akan dikurangi dan menghasilkan -1 maka counter akan diset menjadi 0 (0 merupakan nilai maksimal decrement counter). Proses decrement variabel dilakukan dalam fungsi setState().

4. Lalu saya Membuat isi field FloatingAcitonButton sesuai dengan kebutuhan proyek, yaitu berisi 2 buah button dimana terdapat button decrement di kiri bawah dan button increment di kanan bawah. Kedua button tersebut juga disambungkan dengan properti onPressed. Dan membuat layout di dalam mainAxisAlignment menggunakan Padding.

5. Bind decrement functionnya pada onPressed props di button decrement dan bind function increment pada onPressed props di button increment dan bind iconnya dengan icons.remove untuk decrement dan icons.add untuk increment.

6. Membuat widget Text dan tambahkan handler if else, ketika counter genap maka keluarkan Text Genap, else Text Ganjil