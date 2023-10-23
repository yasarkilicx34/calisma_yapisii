import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/kisiler.dart';


class OyunEkrani extends StatefulWidget {

Kisiler kisi;


OyunEkrani({required this.kisi});

@override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  Future<bool> geriDonusTusu(BuildContext context) async {
    print("navigation  geri tuşu seçildi");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
          print("Appbar geri tuşu seçildi");
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),

              ElevatedButton(onPressed: (){

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani()));

              }, child: Text("Bitti")),


            ],

          ),
        ),
      ),
    );
  }
}
