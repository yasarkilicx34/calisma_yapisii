import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() => _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanıcı Etkilesimi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: const Text("Silmek istiyor musunuz ?"),
               action: SnackBarAction(label: "Evet",onPressed: (){

                 ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: const Text("silindi"),)


                 );

               }),
               ),
             );

            }, child: Text("Snackbar")),
            ElevatedButton(onPressed: (){

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: const Text("Silmek istiyor musunuz ?",style: TextStyle(color: Colors.indigoAccent),),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(label: "Evet",textColor: Colors.white,onPressed: (){

                    ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: const Text("silindi"),)


                    );

                  }),
                ),
              );

            }, child: Text("Snackbar (Özel)")),
            ElevatedButton(onPressed: (){
           
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Başlık"),
                      content: const Text("İçerik"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);

                        }, child: const Text("İptal")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);

                        }, child: const Text("Tamam")),
                      ],
                    );
                  }
              );


            }, child: Text("Alert")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Kayıt işlemi"),
                      content: TextField(controller: tfControl,decoration: const InputDecoration(hintText: "Veri"),),
                      backgroundColor: Colors.blue,
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);

                        }, child: const Text("İptal",style: TextStyle(color: Colors.white),)),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          tfControl.text = "";

                        }, child: const Text("Tamam",style: TextStyle(color: Colors.white),)),
                      ],
                    );
                  }
              );


            }, child: Text("Alert özel")),

          ],
        ),
      ),
    );
  }
}
