import 'package:flutter/material.dart';
import 'package:counter_7/forms.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:intl/intl.dart';



class MyDataBudgetPage extends StatefulWidget {
    const MyDataBudgetPage({super.key});

    @override
    State<MyDataBudgetPage> createState() => _MyDataBudgetPageState();
}

class _MyDataBudgetPageState extends State<MyDataBudgetPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: myDrawer(),
            body: ListView.builder(
              itemCount: SimpanData.contain.length,
              itemBuilder: (context,index) {
                final item = SimpanData.contain[index];
                return ListTile(
                  title:Text(item.judul),
                  subtitle:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[Text(item.nominal.toString()), 
                  Text(item.tipe),
                  //Text(item.date.toString().substring(0,10))
                  Text(
                    DateFormat(
                      'EEEE, d MMMM, yyyy'
                    ).format(item.date),
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left),
                  ]),
                  
                );
              },
            ),
        );
    }
}