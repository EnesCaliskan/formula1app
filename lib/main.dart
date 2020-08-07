import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

Color redBullBlue = const Color(0xFF1E41FF);
Color mercedesAccent = const Color(0xFF00D2BE);
Color mcLarenOrange = const Color(0xFFFF8700);
Color racingPointPink = const Color(0xFFF596C8);
Color renaultYellow = const Color(0xFFFFF500);
Color romeoRed = const Color(0xFF9B0000);
Color atBlue = const Color(0xFF00003c);
Color williamsBlue = const Color(0xFF0082FA);


class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.width, this.height})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;
  final double height;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

// drivers

class HeroSeb extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/sss.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Sebastian Vettel'),
              backgroundColor: Colors.red[500],
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/sebhe.png"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/sss.png',
                          width: 140.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Ferrari",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Ülke : Almanya 🇩🇪",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Podyumlar : 120",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Puan : 2995",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Yarış : 245",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Şampiyonluk : 4",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Doğum Tarihi : 03/07/1987",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Doğum Yeri : Heppenheim, Almanya",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "2006 Türkiye Grand Prix haftasonunda, Cuma günkü antrenman seansında, 19 yaş 53 günlükken, piste Sauber takımının üçüncü pilotu olarak piste çıkan Vettel,"
                      " Formula 1 tarihinin en genç pilotu unvanını kazanmıştır."
                      "17 Haziran 2007 tarihinde koşulan Birleşik Devletler Grand Prix'inde, 'Bir Formula 1 yarışında start alan en genç 6. pilot' unvanını kazanmakla kalmamış, aynı yarışta "
                      "'bir Formula 1 yarışında puan alan en genç pilot' rekorunu da kırmıştır. "
                      "30 Eylül 2007 tarihindeki Çin Grand Prix'ine bir ara liderlik eden Vettel, bu yarışta da 'Bir Formula 1 yarışına liderlik eden en genç pilot' rekorunu kırmıştır."
                      " 2008 İtalya Grand Prix'inde 'Bir Formula 1 yarışında pol pozisyonunu kazanan en genç pilot' ve 'Bir Formula 1 yarışını kazanan en genç pilot' rekorlarını kıran Vettel, 'Farklı iki takımda yarış kazanan en genç pilot' rekoruna da sahiptir."
                      " Vettel Abu Dabi Grand Prix'i sonunda 2010 yılında pilotlar şampiyonluğuna ulaşarak 'F1 şampiyonu olan en genç pilot' unvanını Lewis Hamilton'ın elinden almış ve yeni bir rekorun sahibi olmuştur. "
                      "Bir anlamda rekorların adamı olan Michael Schumacher'in izinden gittiğini göstermiştir. 2011 sezonunda 2011 Formula 1 sezonu'nu domine ederek bitime beş yarış kala şampiyonluğunu ilan etmiştir.",
                      style: TextStyle(color: Colors.red),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroLec extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 4.0;
    return PhotoHero(
      photo: 'images/drivers/ttt.png',
      width: 150.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Charles Leclerc'),
              backgroundColor: Colors.red[500],
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/charles.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/ttt.png',
                          width: 140.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Ferrari",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Ülke : Monaco 🇲🇨",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Podyumlar : 12",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Puan : 336",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Yarış : 46",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Doğum Tarihi : 16/10/1997",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                "Doğum Yeri : Monte Carlo, Monaco",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Leclerc 2005 yılında karting yarışları ile kariyerine başladı. 2005, 2006 ve 2008 yıllarında Fransa PACA şampiyonasını kazandı. 2018 sezonunda Sauber-Ferrari takımında yer aldı."
                      " Takvimde yer alan 21 yarışa katılan Leclerc 10 yarışta ilk 10'da yer aldı,"
                      " 5 yarışta finişi göremedi. Sezonu 39 puanla 13. sırada tamamladı. "
                      "2019 yılı için Ferrari ile anlaştı.21 yarış sonucunda sezonu 264 puanla 4. olarak Sebastian Vettel'in bir sıra önünde tamamladı."
                      " Ayrıca 4 kez dünya şampiyonu Alman pilottan daha fazla yarış kazanarak (Leclerc 2, Vettel 1 yarış kazandı.) Formula 1'in ilerleyen yıllarında söz sahibi olacağının sinyallerini verdi.",
                      style: TextStyle(color: Colors.red),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroVers extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/mmm.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Max Verstappen'),
              backgroundColor: redBullBlue,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/maxback.png"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/mmm.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Red Bull Racing",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Ülke : Hollanda 🇳🇱",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Podyumlar : 34",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Puan : 1000",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Yarış : 106",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Doğum Tarihi : 30/09/1997",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Doğum Yeri : Hasselt, Belçika",
                                style: TextStyle(color: redBullBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Max Emilian Verstappen (d. 30 Eylül 1997, Hasselt, Belçika),"
                          "Hollandalı Formula 1 pilotudur."
                          " Babası Jos Verstappen de eski bir Formula 1 pilotu olan Max Verstappen sezon içinde geçtiği Red Bull Racing "
                          "kokpitinde katıldığı ilk yarış olan 2016 İspanya Grand Prix'ini kazanarak kariyerinin ilk yarış galibiyetini kazınırken "
                          "Formula 1 tarihinin yarış kazanan en genç pilotu unvanını da ele geçirmiştir."
                          "2014'te Verstappen Scuderia Toro Rosso takımıyla anlaşmıştır.Carlos Sainz Jr. ile beraber yarışmışlardır."
                          "2016'da Red Bull Racing'e geçmiştir. Red Bull'da takım arkadaşı Pierre Gasly'dur."
                          " Yarış numarası olarak 33'ü şeçmiştir.",
                      style: TextStyle(color: redBullBlue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroAlb extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/aaa.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Alex Albon'),
              backgroundColor: redBullBlue,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/albonback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/aaa.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Red Bull Racing",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Ülke : Tayland 🇹🇭",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Podyumlar : 0",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Puan : 118",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Yarış : 25",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Doğum Tarihi : 23/03/1996",
                                style: TextStyle(color: redBullBlue),
                              ),
                              Text(
                                "Doğum Yeri : Londra, İngiltere",
                                style: TextStyle(color: redBullBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "2019 sezonunun ilk yarısında Toro Rosso için yarışmış, sonrasında ise Pierre Gasly yerine Red Bull Racing takımına geçmiştir. "
                          "2019 Formula 1 sezonunu 92 puanla sekizinci sırada bitirmiştir."
                          "2020 sezonunda da Red Bull Racing ile yarışacaktır. Aracının numarası 23'tür."
                          "2018 yılı Formula 2 sürücü sıralamasında turnuvasında diğer Formula 1 pilotları George Russell ve Lando"
                          "Norris'in arkasında üçüncü olmuştur.",
                      style: TextStyle(color: redBullBlue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroHam extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/ham.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Lewis Hamilton'),
              backgroundColor: Colors.blueGrey,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/hamback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/ham.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Mercedes",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Ülke : Birleşik Krallık 🇬🇧",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Podyumlar : 154",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Puan : 3519",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Yarış : 254",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Şampiyonluk : 6",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Doğum Tarihi : 07/01/1985",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Doğum Yeri : Stevenage, İngiltere",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Lewis Carl Hamilton (d. 7 Ocak 1985 "
                          "Hertfordshire, Birleşik Krallık) Formula 1'de"
                          " yarışan ilk siyâhi pilottur. 2006 yılında GP2 "
                          "serisinde büyük başarı göstererek şampiyon olup"
                          " ardından McLaren takımı'na transfer olmuştur."
                          " 2008, 2014, 2015, 2017, 2018 ve 2019 sezonlarında "
                          "pilotlar şampiyonluğuna ulaştı. 1.74 m boyundadır."
                          "Daha 9 yaşındayken Mercedes-Benz Genç pilot"
                          " yetiştirme programını imzalayan pilot."
                          " Formula Renault, Formula 3, GP2 serilerinde "
                          "şampiyonluğa ulaşmıştır. Formula 1 kariyerinin ilk "
                          "dokuz yarışında kürsüye çıkmayı başaran McLaren "
                          "Mercedes takımının İngiliz pilotu Lewis Hamilton,"
                          " Bahreyn Grand Prix'sinde elde ettiği ikincilik"
                          " sonrası, ilk dokuz yarışında da podyuma çıkarak"
                          " tarihe geçmiştir. Kanada ve Amerika Birleşik"
                          " Devletleri Formula 1 kariyerinin ilk yılında "
                          "birinci olarak büyük başarı göstermiştir 2007 yılında"
                          " 1 puan farkla 109 puanla formula 1 sezonunun ilk "
                          "yılında ikinci olmayı başarmıştır.",
                      style: TextStyle(color: Colors.blueGrey),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroGas extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/gas.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Pierre Gasly'),
              backgroundColor: atBlue,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/gas.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : AlphaTauri",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Ülke : Fransa 🇫🇷",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Podyumlar : 1",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Puan : 136",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Yarış : 51",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Doğum Tarihi : 07/02/1996",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Doğum Yeri : Rouen, Fransa",
                                style: TextStyle(color: atBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "If there’s one man who knows how big a rollercoaster ride an "
                          "F1 driver’s career can be, it’s Pierre Gasly!"
                          "The flying Frenchman was called up to make his 2017"
                          " debut in Malaysia in place of Daniil Kvyat and, after "
                          "proving his mettle, he was named a Toro Rosso driver the "
                          "following year.  A further 21 races into his fledgling career,"
                          " Gasly was moved up again – this time to replace Red Bull big gun"
                          " Daniel Ricciardo."
                          "Gasly seemed to have a knack of being in the right "
                          "place at the right time – a quality that’s equally handy on "
                          "track. A series of impressive 2018 performances for Toro Rosso"
                          " – including a brilliant fourth place in Bahrain – showed "
                          "exciting promise for what he might do with the ‘A’ team in 2019.",
                      style: TextStyle(color: atBlue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroKvy extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/kvy.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Daniil Kvyat'),
              backgroundColor: atBlue,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/kvy.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : AlphaTauri",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Ülke : Rusya 🇷🇺",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Podyumlar : 3",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Puan : 171",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Yarış : 99",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Doğum Tarihi : 26/04/1994",
                                style: TextStyle(color: atBlue),
                              ),
                              Text(
                                "Doğum Yeri : Ufa, Rusya",
                                style: TextStyle(color: atBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Proving even ‘torpedoes’ can make U-turns, Daniil Kvyat made"
                          " a surprise F1 return for a third spell with Toro Rosso in 2019."
                          " His intrinsic speed and ability to adapt to circuit conditions"
                          " make him a valuable asset - and he’s a proven podium contender."
                          "The rangy Russia arrived in Formula 1 with an impervious poker "
                          "face and set about his business as a cool and confident racer."
                          "But after being dropped by Red Bull, Kvyat plunged into a "
                          "downward spiral and lost confidence.",
                      style: TextStyle(color: atBlue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroBot extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/bot.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Valtteri Bottas'),
              backgroundColor: Colors.blueGrey,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/botback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/bot.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Mercedes",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Ülke : Finlandiya 🇫🇮",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Podyumlar : 48",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Puan : 1347",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Yarış : 144",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Doğum Tarihi : 28/08/1989",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "Doğum Yeri : Nastola, Finlandiya",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Valtteri Bottas (d. 28 Ağustos 1989) Fin F1 pilotu."
                          " Günümüzde Mercedes için yarışmaktadır."
                          " Monako'da yaşamaktadır."
                          "Bottas 2013'te Williams ile yarışmaya başlamıştır."
                          " 2013'teki takım arkadaşı Pastor Maldanado'dur."
                          "2014'te takım arkadaşı Felipe Massa'dır. 2015 ve "
                          "2016'da da böyle devam etti."
                          "2018 sezonunu takviminde yer alan 21 yarıştada yer "
                          "alan Bottas 8'inde podyumda yer aldı, 1 yarışta finişi göremedi."
                          " Sezonu 247 puanla 5. sırada tamamladı.",
                      style: TextStyle(color: Colors.blueGrey),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroSai extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/sai.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Carlos Sainz'),
              backgroundColor: mcLarenOrange,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/sainzback.png"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/sai.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : McLaren",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Ülke : İspanya 🇪🇸",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Podyumlar : 1",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Puan : 282",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Yarış : 106",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Doğum Tarihi : 01/09/1994",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Doğum Yeri : Madrid , İspanya",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Carlos Sainz Junior ya da kısaca Carlos Sainz, "
                          "(1 Eylül 1994 Madrid, İspanya) İspanyol Formula 1 pilotudur."
                          " McLaren-Renault için yarışmaktadır. 2021 ve sonrası için "
                          "Scuderia Ferrari ile iki yıllık anlaşma sağlamıştır."
                          "2015'te Sainz Scuderia Toro Rosso'yla anlaşmıştır. Takım arkadaşı "
                          "Max Verstappen idi. 2016'da Verstappen'in Red Bull Racing'e geçmesiyle "
                          "takım arkadaşı Daniil Kvyat olmuştur. 2017 ve 2018 sezonlarında Renault"
                          " için yarıştı.[2] 2018 sezonunu takviminde yer alan 21 yarışın 13'ünde"
                          " ilk 10'a girdi, 2 yarışta finişi göremedi. Sezonu 53 puanla 10. sırada "
                          "tamamladı.",
                      style: TextStyle(color: mcLarenOrange),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroNor extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/nor.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Lando Norris'),
              backgroundColor: mcLarenOrange,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/norrisback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/nor.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : McLaren",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Ülke : Birleşik Krallık 🇬🇧",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Podyumlar : 1",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Puan : 85",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Yarış : 25",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Doğum Tarihi : 13/11/1999",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                              Text(
                                "Doğum Yeri : Bristol, Birleşik Krallık",
                                style: TextStyle(color: mcLarenOrange),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Lando Norris İngiliz-Belçika uyruklu Formula 1 sürücüsüdür. 2017 Formula "
                          "3 Avrupa Şampiyonası şampiyonudur. 2019 Abdu Dhabi Grand Prix'inden beri"
                          " McLaren sürücüsüdür."
                          "",
                      style: TextStyle(color: mcLarenOrange),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroPer extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/per.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Sergio Perez'),
              backgroundColor: racingPointPink,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/perezback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/per.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Racing Point",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Ülke : Meksika 🇲🇽",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Podyumlar : 8",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Puan : 603",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Yarış : 181",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Doğum Tarihi : 26/01/1990",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Doğum Yeri : Guadalajara, Meksika",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "He’s the fighter with a gentle touch from the land of the Lucha Libre."
                          "Perez’s reputation in F1 has been built on opposite"
                          " approaches to Grand Prix racing. On the one hand, "
                          "he is a punchy combatant who wrestles his way through the"
                          " pack and into the points. Never afraid to add a bit of "
                          "spice to his on-track encounters, even his team mates"
                          " don’t always escape the Mexican’s heat."
                          "Then on the other hand, Perez is a smooth operator,"
                          " a master at managing tyres to eke out extra performance "
                          "and give him the upper hand on strategy. A firm favourite"
                          " on the grid after his time with Sauber and Force India, "
                          "Perez has matured into an analytical racer and team leader.",
                      style: TextStyle(color: Colors.pinkAccent),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroStr extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/str.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Lance Stroll'),
              backgroundColor: racingPointPink,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/strollback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/str.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Racing Point",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Ülke : Kanada 🇨🇦",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Podyumlar : 1",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Puan : 87",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Yarış : 66",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Doğum Tarihi : 29/10/1998",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                              Text(
                                "Doğum Yeri : Montreal, Kanada",
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "There is no such thing as too much too soon for Stroll, "
                          "a teenage sensation with a wet weather predilection."
                          " One of the cool kids on the grid, Stroll was unveiled "
                          "shortly after his 18th birthday by Williams – before he"
                          " finished high school and got his road licence."
                          "Stroll meant business in his debut 2017 season, setting "
                          "records on the way. An opportunistic racer he bounded onto"
                          " the podium in Baku, the youngest rookie to do so. As the "
                          "son of a wealthy entrepreneur, Stroll is used to a"
                          " champagne lifestyle but now he knows the fizz tastes"
                          " all the sweeter on the rostrum. Then in Monza he mastered "
                          "the downpours to become the youngest driver in history to "
                          "line up on the front row.",
                      style: TextStyle(color: Colors.pinkAccent),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroRic extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/ric.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Daniel Ricciardo', style: TextStyle(color: Colors.black),),
              backgroundColor: renaultYellow,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/ricback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/ric.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Renault",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Ülke : Avustralya 🇦🇺",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Podyumlar : 29",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Puan : 1060",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Yarış : 175",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Tarihi : 01/07/1989",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Yeri : Perth , Avustralya",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "The self-styled “Honey Badger” is fuzzy on the outside and "
                          "feisty on the inside. Drivers beware because behind "
                          "Ricciardo’s laidback persona and big grin is a razor-sharp "
                          "racer with a bite"
                          "The Australian combines all-out speed with impressive race"
                          " craft. Never afraid to push to the limits if it means pulling"
                          " off a pass, Ricciardo is a proven race-winner for Red Bull,"
                          " capable of consistently finishing at the business end of the "
                          "championship table.",
                      style: TextStyle(color: Colors.black),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroOco extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/oco.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Esteban Ocon', style: TextStyle(color: Colors.black),),
              backgroundColor: renaultYellow,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/driversback/ocoback.jpg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/oco.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Renault",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Ülke : Fransa 🇫🇷",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Podyumlar : 0",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Puan : 148",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Yarış : 54",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Tarihi : 17/09/1996",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Yeri : Evreux, Normandiya",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                          "If there’s one word that dominates Esteban Ocon’s career, it’s ‘sacrifice’."
                              "Back when he was just a promising karter, Ocon’s "
                              "parents sold their house, put their jobs on hold,"
                              " and began a life on the road, living in a caravan and "
                              "travelling from circuit to circuit to support their son’s"
                              " burgeoning career."
                              "Sacrifice, see – but it worked. 2014 saw Ocon break "
                              "through in the world of single-seaters, as he beat a "
                              "certain Max Verstappen to the European F3 title. Backed"
                              " by Mercedes, he won the GP3 title the following year and"
                              " was halfway through a season of DTM in 2016 when he was"
                              " offered the chance to replace Rio Haryanto at the minnow "
                              "Manor team from the Belgian Grand Prix onwards.",
                      style: TextStyle(color: Colors.black),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroRai extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/rai.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Kimi Räikkönen'),
              backgroundColor: romeoRed,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/rai.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Alfa Romeo",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Ülke : Finlandiya 🇫🇮",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Podyumlar : 103",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Puan : 1859",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Yarış : 319",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Şampiyonluk : 1",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Doğum Tarihi : 17/10/1979",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Doğum Yeri : Espoo, Finlandiya",
                                style: TextStyle(color: romeoRed),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "He’s the world-famous racing driver who just wants to be left alone. "
                          "Raikkonen has a cult status in F1 like no other driver of his"
                          " generation, but if you ask him why he just shrugs."
                          "Maybe it’s because of the rugged, raw talent that inspired"
                          " Sauber to give him his debut in 2001 – and re-sign him for 2019."
                          " Or the fast and fearless racing that led to memorable McLaren "
                          "wins. Or the never-say-die attitude that clinched the 2007 world"
                          " title for Ferrari by a single point. Or maybe it’s because this "
                          "is the ‘Iceman’ who jumped straight into a Jacuzzi on his yacht"
                          " after retiring in Monaco and who enjoyed an ice cream when a "
                          "soggy Malaysian GP was red-flagged but still live.",
                      style: TextStyle(color: romeoRed),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroGio extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/gio.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Antonio Giovinazzi'),
              backgroundColor: romeoRed,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/gio.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Alfa Romeo",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Ülke : İtalya 🇫🇮",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Podyumlar : 0",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Puan : 16",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Yarış : 27",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Doğum Tarihi : 14/12/1993",
                                style: TextStyle(color: romeoRed),
                              ),
                              Text(
                                "Doğum Yeri : Martina Franca , İtalya",
                                style: TextStyle(color: romeoRed),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "He’s the Italian steed with speed from the stable of the"
                          " Prancing Horse. Antonio Giovinazzi flies the flag for"
                          " Italy as the motorsport mad nation champs at the bit for"
                          " its next F1 star."
                          "The pilota from Puglia can punch his way through the pack and"
                          " pull off a plucky pass. He showcased this natural racing acumen"
                          " during a blistering 2016 GP2 campaign where he finished a close"
                          " runner-up to team mate Pierre Gasly.",
                      style: TextStyle(color: romeoRed),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroGro extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/gro.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Romain Grosjean', style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.red,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/gro.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Haas",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Ülke : Fransa 🇫🇷",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Podyumlar : 10",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Puan : 389",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Yarış : 170",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Tarihi : 17/04/1986",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Yeri : Geneva , İsviçre",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "High-speed haute cuisine is on the menu in the Grosjean household, where head chef Romain is also"
                          "a racing star."
                          "Quick and with a natural feel for braking and balance,"
                          " Grosjean has the right ingredients to cook up a storm on track."
                          " Tussling and hustling at the front of the pack, the French racer"
                          " claimed a series of impressive podiums for Renault before moving "
                          "to spearhead the Haas team."
                          "Like the best chefs, the Geneva-born driver occasionally breaks "
                          "a few eggs.  Renault handed Grosjean his debut halfway through "
                          "the 2009 season, but a mix of inexperience and enthusiasm saw "
                          "him move back to the subs bench before making his F1 return in "
                          "2012. A one-race ban after triggering a pile-up in Spa seemed to"
                          " be the final arc of the learning curve for Grosjean. ",
                      style: TextStyle(color: Colors.black),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroMag extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/mag.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Kevin Magnussen', style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.red,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/mag.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Haas",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Ülke : Danimarka 🇩🇰",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Podyumlar : 1",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Puan : 158",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Yarış : 107",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Tarihi : 05/10/1992",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Doğum Yeri : Roskilde , Danimarka",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Call him a lone ranger or a maverick, but Magnussen is here for one reason only – to race. "
                          "He may be a second-generation F1 driver – following his father"
                          " Jan onto the grid – but Magnussen’s idols are from the "
                          "‘golden era’ of Grand Prix racing when the likes of Juan "
                          "Manuel Fangio and Stirling Moss risked it all for the love of the"
                          " sport."
                          "The Roskilde racer’s own prowess was proven on debut for"
                          " McLaren, who guided him through the junior ranks, when he "
                          "cruised into the top-three at the Australian Grand Prix, becoming"
                          " the first Dane to claim a podium in F1.",
                      style: TextStyle(color: Colors.black),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroRus extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/rus.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('George Rusell'),
              backgroundColor: williamsBlue,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/rus.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Williams",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Ülke : Birleşik Krallık 🇬🇧",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Podyumlar : 0",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Puan : 0",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Yarış : 25",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Doğum Tarihi : 15/02/1998",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Doğum Yeri : King's Lynn, İngiltere",
                                style: TextStyle(color: williamsBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "He’s the driver with the motto: “If in doubt, go flat out”."
                          "George Russell lived by it in his 2019 debut F1 campaign,"
                          " out-qualifying seasoned team mate Robert Kubica at all 21 Grands "
                          "Prix, and proving Williams right in identifying him as a hard "
                          "worker and a tenacious talent"
                          "That brilliant baseline speed had served Russell well as he"
                          " totted up titles on his way to Formula 1. The Briton stormed to"
                          " the 2017 GP3 championship and delivered the 2018 Formula 2 crown"
                          " under immense pressure. ",
                      style: TextStyle(color: williamsBlue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}

class HeroLat extends StatelessWidget {
  Widget build(BuildContext context) {
    //timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/drivers/lat.png',
      width: 130.0,
      height: 110.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Nicolas Latifi'),
              backgroundColor: williamsBlue,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                        child: PhotoHero(
                          photo: 'images/drivers/lat.png',
                          width: 150.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Takım : Williams",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Ülke : Kanada 🇨🇦",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Podyumlar : 0",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Puan : 0",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Yarış : 4",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Şampiyonluk : 0",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Doğum Tarihi : 29/02/1995",
                                style: TextStyle(color: williamsBlue),
                              ),
                              Text(
                                "Doğum Yeri : Montreal, Kanada",
                                style: TextStyle(color: williamsBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "Thirteen is an advanced age to begin your karting career these days."
                          " But that’s how old Toronto native Nicholas Latifi was when he "
                          "took his first steps in motorsport. Just 11 years later, he became"
                          " a fully-fledged Formula 1 driver."
                          "That ascension into racing's top category was largely thanks to "
                          "his most impressive season to date in Formula 2 in 2019, with "
                          "Latifi – who’d finished a disappointing ninth in the series’ 2018"
                          " standings – pulling up his bootstraps to claim second in the "
                          "championship. That result, combined with the Williams/Robert "
                          "Kubica union failing to mesh in 2019, meant Williams made the call"
                          " to promote their affable Canadian reserve driver to a full-time"
                          " drive alongside George Russell for 2020.",
                      style: TextStyle(color: williamsBlue),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}



void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          fontFamily: 'Formula1',
          highlightColor: Colors.red,
          accentColor: Colors.red),
      //home: Ferrari(),
      home: mainPage(),
    ),
  );
}

class defaultDrawer extends StatefulWidget {
  @override
  _defaultDrawerState createState() => _defaultDrawerState();
}

class _defaultDrawerState extends State<defaultDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/drivers.jpg"),
              ),
            ),
          ),
          ListTile(
            title: Text("Mercedes-AMG Petronas"),
            subtitle: Text("W11"),
            leading: mercedesLogo,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mercedes()),
              );
            },
          ),
          ListTile(
            title: Text("Scuderia Ferrari"),
            subtitle: Text("SF1000"),
            leading: sfLogo,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ferrari()),
              );
            },
          ),
          ListTile(
            title: Text("Red Bull Racing"),
            subtitle: Text("RB16"),
            leading: rbLogo,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RedBullRacing()),
              );
            },
          ),
          ListTile(
            title: Text("McLaren"),
            subtitle: Text("MCL35"),
            leading: mclarenLogo,
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => McLaren()),
              );
            },
          ),
          ListTile(
            title: Text("Racing Point"),
            subtitle: Text("RP20"),
            leading: rpLogo,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RacingPoint()),
                );
              }
          ),
          ListTile(
            title: Text("Renault"),
            subtitle: Text("R.S.20"),
            leading: renaultLogo,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Renault()),
                );
              }
          ),
          ListTile(
            title: Text("AlphaTauri"),
            subtitle: Text("AT01"),
            leading: atLogo,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlphaTauri()),
                );
              }
          ),
          ListTile(
            title: Text("Alfa Romeo Racing"),
            subtitle: Text("C39"),
            leading: romeoLogo,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlphaRomeo()),
                );
              }
          ),
          ListTile(
            title: Text("Haas F1 Team"),
            subtitle: Text("VF-20"),
            leading: haasLogo,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Haas()),
                );
              }
          ),
          ListTile(
            title: Text("Williams"),
            subtitle: Text("FW43"),
            leading: williamsLogo,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Williams()),
                );
              }
          ),
        ],
      ),
    );
  }
}

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

// logo

Widget mclarenLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/mclaren.jpg"),
);

Widget sfLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/sf.jpg"),
);

Widget rbLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/rb.jpg"),
);

Widget mercedesLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/mercedes.jpg"),
);

Widget atLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/at.jpg"),
);

Widget haasLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/haas.jpg"),
);

Widget renaultLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/renault.jpg"),
);

Widget romeoLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/romeo.jpg"),
);

Widget rpLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/rp.jpg"),
);

Widget williamsLogo = Container(
  height: 84,
  width: 84,
  child: Image.asset("images/logos/williams.jpg"),
);


// teams

class Ferrari extends StatefulWidget {
  @override
  _FerrariState createState() => _FerrariState();
}

class _FerrariState extends State<Ferrari> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Scuderia Ferrari",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: Colors.red[500],
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze, color: Colors.red),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/sf1000.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: Colors.red[500],
            child: Text(
              "Scuderia Ferrari",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.redAccent,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroSeb(),
                  Text(
                    "Sebastian Vettel",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.red[500],
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroLec(),
                  Text(
                    "Charles Leclerc",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.red[500],
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.redAccent,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Scuderia Ferrari, İtalyanca'da Ferrari takımı anlamına gelmektedir."
              " Enzo Ferrari tarafından 1929 yılında kurulmuş olup, uzunca bir dönem Alfa Romeo'nun yarış bölümü olarak faaliyet göstermiştir. "
              "1947 yılında yol otomobili üretmek amacıyla Ferrari'nin kurulması ile birlikte Alfa Romeo bünyesinden ayrılıp, "
              "'Gestione Sportiva' adıyla Ferrari'nin bünyesi altına geçmiştir.İlk yıllarında Formula 1 "
              ", Formula 2 hem de Le Mans'da varlık gösteren takım 70'lere doğru Le Mans'tan ve 60'larda da F2'den çekilmiştir."
              " F1'de ise hâlen varlığını sürdürmektedir.",
              style: TextStyle(fontFamily: 'Formula1', color: Colors.red[500]),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}



class RedBullRacing extends StatefulWidget {
  @override
  _RedBullRacingState createState() => _RedBullRacingState();
}

class _RedBullRacingState extends State<RedBullRacing> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Red Bull Racing",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: Colors.indigo,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze, color: Colors.indigo),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/rb16.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: redBullBlue,
            child: Text(
              "Red Bull Racing",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.indigo,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroVers(),
                  Text(
                    "Max Verstappen",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: redBullBlue,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroAlb(),
                  Text(
                    "Alex Albon",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: redBullBlue,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: redBullBlue,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Red Bull Racing (Infiniti Red Bull Racing) Avusturyalı içecek firması Red Bull'un Scuderia Toro Rosso dışında sahibi olduğu ikinci Formula 1 takımıdır."
                  " Red Bull takımı 2010 sezonunda, kuruluşunun henüz altıncı yılında,"
                  " Formula 1 Markalar Şampiyonluğu'na ulaşmış ve bu unvanı kazanan ilk"
                  " Avusturya takımı olmuştur. 2010 Sürücüler Şampiyonası lideri "
                  "Sebastian Vettel de bu başarıya Red Bull Racing ile ulaşmıştır."
                  " Takım Milton Keynes, Birleşik Krallık[4] merkezli olmasına rağmen"
                  " Avusturya lisansı taşımaktadır.[5]Renault motorları kullanan "
                  "Red Bull 2018 sezonunda sıklıkla yaşadıkları motor sorunları sonucunda "
                  "2019 sezonu için Honda ile anlaşma imazalandı. GP2 takımlarından "
                  "Arden International'in patronu olan Christian Horner tarafından"
                  " yönetilmektedir.",
              style: TextStyle(fontFamily: 'Formula1', color: Colors.indigo[500]),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}



class Mercedes extends StatefulWidget {
  @override
  _MercedesState createState() => _MercedesState();
}

class _MercedesState extends State<Mercedes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Mercedes-AMG",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: Colors.blueGrey,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.blueGrey),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/w11.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: Colors.blueGrey,
            child: Text(
              "Mercedes-AMG Petronas",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.grey,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroHam(),
                  Text(
                    "Lewis Hamilton",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.blueGrey,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroBot(),
                  Text(
                    "Valtteri Bottas",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.blueGrey,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.blueGrey,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Mercedes AMG Petronas Formula One Team ya da ticarî adıyla "
                  "Mercedes-Benz Grand Prix Limited, Mercedes-Benz'in sahibi olduğu Birleşik Krallık"
                  " merkezli Formula 1 takımı."
                  "16 Kasım 2009'da Mercedes'in Brawn GP takımının yönetimini alması kabul edilmiştir."
                  " Takım, 2010 sezonunda 'Mercedes GP' adıyla mücadele etmeye başlamış ve"
                  " takımın ilk pilotları Nico Rosberg ile Formula 1'e geri dönen Michael Schumacher "
                  "olmuştur.",
              style: TextStyle(fontFamily: 'Formula1', color: Colors.blueGrey),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}



class McLaren extends StatefulWidget {
  @override
  _McLarenState createState() => _McLarenState();
}

class _McLarenState extends State<McLaren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "McLaren",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: mcLarenOrange,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.orange),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/mcl35.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: mcLarenOrange,
            child: Text(
              "McLaren",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.orangeAccent,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroSai(),
                  Text(
                    "Carlos Sainz",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: mcLarenOrange,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroNor(),
                  Text(
                    "Lando Norris",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: mcLarenOrange,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.orangeAccent,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "McLaren 1963'te Yeni Zelandalı Bruce McLaren (1937-1970) tarafından kurulan Formula 1"
                  " takımıdır.McLaren F1 Takımı, Formula 1'in en eski ve başarılı takımlarından "
                  "biridir. Takım 2019 sezonu itibarıyla Mclaren-Renault ile uzun yıllar sonrasında "
                  "en iyi yılını geçirmiş ve sezonu 4. sırada tamamlamıştır. Ayrıca Mclaren Racing;"
                  " Formula 1'in yanı sıra Indianapolis 500 Mil Yarışı, Kanada-Amerika Challenge "
                  "Kupası ve Le Mans 24 Saat Yarışı gibi organizasyonlarda da yer almıştır.",
              style: TextStyle(fontFamily: 'Formula1', color: mcLarenOrange),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}



class RacingPoint extends StatefulWidget {
  @override
  _RacingPointState createState() => _RacingPointState();
}

class _RacingPointState extends State<RacingPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Racing Point",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: racingPointPink,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.pink),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/rp20.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: racingPointPink,
            child: Text(
              "Racing Point",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.pinkAccent,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroPer(),
                  Text(
                    "Sergio Perez",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: racingPointPink,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroStr(),
                  Text(
                    "Lance Stroll",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: racingPointPink,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.pinkAccent,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Racing Point F1 Team, competing as BWT Racing Point F1 Team and "
                  "commonly known as Racing Point is a British motor racing team and"
                  " Constructor that Racing Point UK has entered into the Formula One"
                  " World Championship. The team is based in Silverstone,"
                  " United Kingdom and competes under a British licence."
                  "The team was renamed in February 2019 from “Racing Point Force "
                  "India F1 Team”, which used the constructor name of 'Force India'"
                  " for the latter half of the 2018 season."
                  " Racing Point made their racing debut at the 2019 Australian Grand "
                  "Prix. The team's drivers for the 2020 season are Sergio Pérez and"
                  " Lance Stroll. The team will be rebranded to Aston Martin for the"
                  " 2021 Formula One season.",
              style: TextStyle(fontFamily: 'Formula1', color: Colors.pinkAccent),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}




class Renault extends StatefulWidget {
  @override
  _RenaultState createState() => _RenaultState();
}

class _RenaultState extends State<Renault> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Renault",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/rs20.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: renaultYellow,
            child: Text(
              "Renault",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.black, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.black,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: renaultYellow, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroRic(),
                  Text(
                    "Daniel Ricciardo",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.black,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroOco(),
                  Text(
                    "Esteban Ocon",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.black,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: renaultYellow,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Renault’s F1 works return – begun in 2016 following the French marque’s "
                  "takeover of the Lotus team – is proving a real challenge. "
                  "New management embarked on a long-term restructuring programme aimed at "
                  "returning the famous name to race-winning glory, but thus far their battle"
                  "has been one to top the midfield, rather than challenging the big three teams"
                  " for podiums..."
                  "Progress up the championship order is halted, ironically by new Renault "
                  "customers McLaren, who demote them to fifth in the standings, despite Daniel"
                  " Ricciardo securing their best result to date with P4 in Italy.",
              style: TextStyle(fontFamily: 'Formula1', color: Colors.black),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}




class AlphaTauri extends StatefulWidget {
  @override
  _AlphaTauriState createState() => _AlphaTauriState();
}

class _AlphaTauriState extends State<AlphaTauri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Scuderia AlphaTauri",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: atBlue,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.blueGrey),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/at01.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: atBlue,
            child: Text(
              "Scuderia AlphaTauri",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.indigo,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroGas(),
                  Text(
                    "Pierre Gasly",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: atBlue,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroKvy(),
                  Text(
                    "Daniil Kvyat",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: atBlue,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: atBlue,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Established in 2006 as a squad in which young drivers from Red Bull’s "
                  "prodigious talent pool could cut their F1 teeth, AlphaTauri – "
                  "originally named Toro Rosso – were formed from the ashes of the"
                  " plucky Minardi team. Sebastian Vettel gave validity to the approach "
                  "almost immediately, delivering a fairy-tale win in 2008, before going "
                  "on to enjoy world championship success with parent team Red Bull "
                  "Racing. Today the ethos of nurturing talent still holds true, though "
                  "the Italian squad are no longer simply a ‘B team’ but a constructor in "
                  "their own right...",
              style: TextStyle(fontFamily: 'Formula1', color: atBlue),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}




class AlphaRomeo extends StatefulWidget {
  @override
  _AlphaRomeoState createState() => _AlphaRomeoState();
}

class _AlphaRomeoState extends State<AlphaRomeo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Alpha Romeo",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: romeoRed,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.red),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/c39.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: romeoRed,
            child: Text(
              "Alpha Romeo",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.red[900],
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroRai(),
                  Text(
                    "Kimi Räikkönen",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: romeoRed,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroGio(),
                  Text(
                    "Antonio Giovinazzi",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: romeoRed,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.red[900],
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "The name Alfa Romeo boasts Formula 1 connections dating back to the "
                  "championship’s inception in 1950. Fast forward to the 21st century "
                  "and Italian flare combines with Swiss sensibilities in a new era for the"
                  " team formerly known as Sauber."
                  "Having enjoyed considerable success in world sportscars, where he helped"
                  " nurture the emerging talents of future F1 stars Michael Schumacher and"
                  " Heinz-Harald Frentzen, Peter Sauber guided his eponymous squad into F1 "
                  "in 1993."
                  "The team has since established itself as a mainstay of the F1 grid,"
                  " becoming race winners under BMW’s brief ownership, and developing a"
                  " well-earned reputation not only for producing competitive cars, but "
                  "also for developing young drivers.",
              style: TextStyle(fontFamily: 'Formula1', color: romeoRed),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}



class Haas extends StatefulWidget {
  @override
  _HaasState createState() => _HaasState();
}

class _HaasState extends State<Haas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Haas F1 Team",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/vf20.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: Colors.red,
            child: Text(
              "Haas F1 Team",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.black, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.black,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroGro(),
                  Text(
                    "Romain Grosjean",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.red,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroMag(),
                  Text(
                    "Kevin Magnussen",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: Colors.red,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.red,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "The youngest team on the grid, "
                  "Haas made their highly impressive debut in 2016,"
                  " and in the process became the first all-American-led F1 squad "
                  "in three decades. Founded by industrialist Gene Haas, they are based in "
                  "the United States on the same Kannapolis, North Carolina facility as his "
                  "championship-winning NASCAR Sprint Cup Series team, Stewart-Haas Racing."
                  " The Ferrari-powered team, led by the charismatic Guenther Steiner, also"
                  " have a UK factory in Banbury…"
                  "The Haas fairy tale finally hits a bump in the road, as they struggle"
                  " to get a handle on their recalcitrant VF-19 machine. Fall to eighth in "
                  "the table, with Romain Grosjean and Kevin Magnussen amassing a meagre 28"
                  " points between them.",
              style: TextStyle(fontFamily: 'Formula1', color: Colors.black),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}



class Williams extends StatefulWidget {
  @override
  _WilliamsState createState() => _WilliamsState();
}

class _WilliamsState extends State<Williams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Williams",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: williamsBlue,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze,
              color: Colors.blue),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/cars/fw43.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ), // resim
          Container(
            padding: EdgeInsets.all(24),
            color: williamsBlue,
            child: Text(
              "Williams",
              style: TextStyle(
                  fontFamily: 'Formula1', color: Colors.white, fontSize: 20),
            ),
          ), // baslik
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Text(
              "Pilotlar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroRus(),
                  Text(
                    "George Rusell",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: williamsBlue,
                        fontSize: 18),
                  ),
                ],
              ), // Sebastian Vettel
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeroLat(),
                  Text(
                    "Nicolas Latifi",
                    style: TextStyle(
                        fontFamily: 'Formula1',
                        color: williamsBlue,
                        fontSize: 18),
                  ),
                ],
              ), // Charles Leclerc
            ],
          ), // pilotlar
          Container(
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Text(
              "Takım Bilgisi",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "Driven on by the brilliance and passion of Sir Frank Williams, Williams "
                  "grew from humble beginnings to become a Formula 1 behemoth, unrivalled "
                  "by all except Ferrari and McLaren in terms of enduring success. Over the"
                  " past four decades the team has racked up Grand Prix wins and championship"
                  " glory, and in the process nurtured some of the greatest talents in the"
                  " sport, both in and out the cockpit..."
                  "A single point from 21 races heralds the worst campaign in the team’s"
                  " history, despite the addition of former Grand Prix winner Robert Kubica"
                  ". On the flip side, rookie George Russell marks himself out as a star of "
                  "the future, out-qualifying his experienced team mate at every round.",
              style: TextStyle(fontFamily: 'Formula1', color: williamsBlue),
              softWrap: true,
            ),
          ), // takim bilgisi
        ],
      ),
    );
  }
}




class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: defaultDrawer(),
      appBar: AppBar(
        title: Text(
          "Formula 1",
          style: TextStyle(
            fontFamily: 'Formula1', // formula1 fontu eklenecek
            color: Colors.red[500],
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.dehaze, color: Colors.red),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Container(
            width: 72,
            height: 72,
            child: Image.asset('images/f1.png'),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
