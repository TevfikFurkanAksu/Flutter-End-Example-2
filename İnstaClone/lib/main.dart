import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sociaworld/gonderikarti.dart';
import 'package:sociaworld/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            )),
        title: Text(
          "SociaWorld",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(
                    children: [
                      duyuru("SFÇ seni takip etti", "3 dakika önce"),
                      duyuru("asdasda seni takip etti", "8 dakika önce"),
                      duyuru("SFfdgdfgÇ seni takip etti", "10 dakika önce"),
                    ],
                  );
                });
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.purple,
                size: 32.0,
              )),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey.shade100, boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 5.0)
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                  "tevfik",
                  "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg",
                  "Tevfik Furkan",
                  "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg"
                ),
                profilKartiOlustur(
                  "furkan",
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
                  "Tevfik Furkan",
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"
                ),
                profilKartiOlustur(
                  "batuhan",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
                  "Batuhan Sarp",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"
                ),
                profilKartiOlustur(
                  "sönmez",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
                  "Sönmez Çimen",
                 "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"
                ),
                profilKartiOlustur(
                  "eren",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
                  "Eren Bayraktar",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"
                ),
                profilKartiOlustur(
                  "mertbaba",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
                  "Mertbaba Okulmuş",
                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"

                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
            isimSoyad: "Eren Bayraktar",
            gecenSure: "2 Gün Önce",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
            aciklama: "Sevimli Bir Dost",
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
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple.shade300,
        child: Icon(Icons.add_a_photo, color: Colors.white,),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(mesaj,style: TextStyle(fontSize: 15.0,),),
                          Text(gecenSure),
                        ],
                      ),
                    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimlinki: resimLinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyad: isimSoyad,
                    kapakResimlinki: kapakResimLinki,
                  )));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(resimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
