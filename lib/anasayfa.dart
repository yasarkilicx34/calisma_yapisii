import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  @override
  void initState() {
    super.initState();
    print("init state çalıştı");
  }


  Future<int> toplama(int sayi1,int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuc : $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac + 1;
              });


            }, child: Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "AHMET", yas: 23, boy: 1.78, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  OyunEkrani(kisi: kisi)))
                  .then((value) {
                print("anasayfaya dönüldü");
              });


            }, child: Text("Başla")),
            Visibility(visible: kontrol,child: Text("Merhaba")),
            Text(kontrol ? "Merhaba" : "Güle Güle", style: TextStyle(color: kontrol ? Colors.blue : Colors.red),),

            ((){
              if(kontrol){
              return const Text("Merhaba");
              }else{
                return const Text("Gule Gule");
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;

              });


            }, child: Text("Durum 1 True")),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = false;

              });


            }, child: Text("Durum 1 False")),
            FutureBuilder<int>(
                future: toplama(10, 20),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Hata Oluştu");
                  }
                  if (snapshot.hasData) {
                    return Text('Sonuç: ${snapshot.data}');
                  }
                  return const Text("Sonuç yok"); 
                }
            ),



          ],

        ),
      ),
    );
  }
}
