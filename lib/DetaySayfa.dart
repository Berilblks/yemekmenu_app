import 'package:flutter/material.dart';
import 'package:yemekmenuu_app/Yemekler.dart';

class Detaysayfa extends StatefulWidget {

  Yemekler yemek;

  Detaysayfa({required this.yemek});

  @override
  State<Detaysayfa> createState() => _DetaysayfaState();
}

class _DetaysayfaState extends State<Detaysayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyat} \u{20BA}", style: TextStyle(fontSize: 40, color: Colors.indigo),),
            ElevatedButton(
                onPressed: (){
                  print("${widget.yemek.yemek_adi} sipariş verildi");
                },
                child: Text("SİPARİŞ VER"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
