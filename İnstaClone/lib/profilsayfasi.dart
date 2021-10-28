import 'package:flutter/material.dart';

import 'gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {

  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimlinki;
  final String profilResimlinki;

  const ProfilSayfasi({Key? key,required this.isimSoyad,required this.kullaniciAdi,required this.kapakResimlinki,required this.profilResimlinki}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
                //color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(
                          kapakResimlinki),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 0,
                child: Hero(
                  tag: kullaniciAdi,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                      image: DecorationImage(
                          image: NetworkImage(
                               profilResimlinki),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190,
                left: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimSoyad,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200,
                      border: Border.all(width: 2.0, color: Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exposure_plus_1,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ))
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sayac("Takipçi","20K"),
                sayac("Takip","500"),
                sayac("Paylaşım","22"),
              ],
            ),
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
            isimSoyad: "Batuhan Sarp",
            gecenSure: "5 Gün Önce",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
            aciklama: "Kedi",
          ),
        ],
      ),
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sayi,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    baslik,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  )
                ],
              );
  }
}
