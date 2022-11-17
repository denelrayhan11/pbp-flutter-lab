import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/dataBudget.dart';
import 'package:counter_7/drawer.dart';

class DataBudget{
  String judul;
  int nominal;
  String tipe;
  DateTime date;

  DataBudget(this.judul, this.nominal, this.tipe, this.date);
}

class SimpanData{
  static List<DataBudget> contain = <DataBudget>[];
}

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String kategori = 'Pemasukan';
  List<String> listKategori = ['Pemasukan', 'Pengeluaran'];
  DateTime _date = DateTime.now(); 
  
    @override
    Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
            drawer: const myDrawer(),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        // Menggunakan padding sebesar 8 pixels
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Membeli atau Menjual Sesuatu",
                            labelText: "Judul",
                            // Menambahkan icon agar lebih intuitif
                            icon: const Icon(Icons.people),
                            // Menambahkan circular border agar lebih rapi
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          // Menambahkan behavior saat nama diketik
                          onChanged: (String? value) {
                            setState(() {
                              _judul = value!;
                            });
                          },
                          // Menambahkan behavior saat data disimpan
                          onSaved: (String? value) {
                            setState(() {
                              _judul = value!;
                            });
                          },
                          // Validator sebagai validasi form 
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Judul tidak boleh kosong!';
                            }
                            return null;
                          },
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Masukkan Nominal Anda",
                            labelText: "Nominal",
                            // Menambahkan icon agar lebih intuitif
                            icon: const Icon(Icons.money_sharp),
                            // Menambahkan circular border agar lebih rapi
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              _nominal = int.parse(value!);
                            });
                          },
                          // Menambahkan behavior saat data disimpan
                          onSaved: (String? value) {
                            setState(() {
                              _nominal = int.parse(value!);
                            });
                          },
                          // Validator sebagai validasi form
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Nominal tidak boleh kosong!';
                            }
                            return null;
                          },// Only numbers can be entered
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.class_),
                        title: const Text(
                          'Tipe',
                        ),
                        trailing: DropdownButton(
                          value: kategori,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: listKategori.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              kategori = newValue!;
                            });
                          },
                        ),
                      ),
                      Center(
                        child: TextButton(
                          child: Text("Pilih tanggal"),
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099),
                            ).then((date) {
                              //tambahkan setState dan panggil variabel _dateTime.
                              setState(() {
                                _date = date!;
                              });
                            });
                          },
                        ),
                      ),
                      Center(
                        child: Text(
                          "Pilihan Tanggal: " + _date.toString().split(' ')[0],
                          style: const TextStyle(
                            fontSize: 16.0,
                            // color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {
                          
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 15,
                                  child: Container(
                                    child: ListView(
                                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                                      shrinkWrap: true,
                                      children: <Widget>[
                                        Center(child: const Text('Berhasil Menambahkan Data')),
                                        SizedBox(height: 20),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Kembali'),
                                        ) 
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                            SimpanData.contain.add(DataBudget(_judul, _nominal, kategori,_date));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
      }
}