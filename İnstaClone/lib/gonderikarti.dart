import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';

class GonderiKarti extends StatelessWidget {

  final String profilResimLinki;
  final String isimSoyad;
  final String gecenSure;
  final String gonderiResimLinki;
  final String aciklama;

  const GonderiKarti({Key? key, required this.profilResimLinki,required this.isimSoyad,required this.gecenSure,required this.gonderiResimLinki,required this.aciklama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(
                                    profilResimLinki),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyad,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            gecenSure,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                aciklama,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                gonderiResimLinki,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ikonluButonum(
                    ikonum: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyonum: () {
                      print("Beğen");
                    },
                  ),
                  ikonluButonum(
                    ikonum: Icons.comment,
                    yazi: "Yorum yap",
                    fonksiyonum: () {
                      print("Yorum Yap");
                    },
                  ),
                  // ignore: deprecated_member_use
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ikonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;

  ikonluButonum(
      {required this.ikonum, required this.yazi, required this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
