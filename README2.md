# TUGAS 8

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Perbedannya adalah saat perpindahan layer, navigator.push menambahkan rute lain keatas tumpukan screen (stack), sedangkan navigator.pushReplacement tidak menimpa layer sebelumnya melainkan mengganti dengan layer itu sendiri yang ditunjuk oleh page dari navigator.pushReplacement.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
1. Drawer() berfungsi untuk menambahkan panel yang terdapat pada sisi kiri aplikasi guna melakukan perpindahan layer yang kita ingingkan.
2. Column, Padding, Center, Row() berfungsi untuk mengatur posisi widget
3. DrawerHeader() berfungsi untuk menambahkan header pada drawer untuk memisahkan list drawer yg kita buat.
4. BoxDecoration() berfungsi untuk menambahkan sebuah kotak pada DrawerHeader guna memberi jarak dari list drawer.
5. Text() berfungsi untuk menampilkan sebuah teks.
6. LisTile() berfungsi untuk menambahkan komponen layer yang terdapat pada drawer.
7. Icon() berfungsi untuk menambahkan sebuah icon.
8. TextButton() berfungsi untuk menambahkan button text
9. dropDownButton() berfungsi untuk membuat tampilan yang menumpuk didalamnya guna memilih input yang tersedia.
10. showDatePicker() berfungsi nuntuk menampilkan sebuah date.
11. TextStyle() berfungsi untuk menambahkan style yang kita inginkan pada text tersebut.
12. DateFormat() berfungsi untuk memformat sebuah date yang kita inginkan.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
1. onSaved()
2. onChanged()
3. onPressed()

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
yaitu dengan cara menimpa layer sebelumnya dengan methode navigator.push dan bisa juga berpindah layer yang dituju tanpa menimpa dengan method navigator.pushReplacement.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. membuat file drawer.dart untuk menerapkan template drawer pada setiap file yang kita inginkan. disini saya menambahkan pada file main, form dan data.dart.
2. membuat file form.dart untuk membuat input masukan user dan membuat widget yang dibutuhkan pada file form.dart tersebut serta menimpannya.
3. membuat file data.dart untuk menampilkan hasil inputan user yang disimpan pada form.dart.