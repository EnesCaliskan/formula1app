import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

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

class HeroSeb extends StatelessWidget {
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return PhotoHero(
      photo: 'images/vettel.jpg',
      width: 150.0,
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
                  image: AssetImage("images/sebhe.png"),
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
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
                          photo: 'images/vettel.jpg',
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
                    child: Text("2006 Türkiye Grand Prix haftasonunda, Cuma günkü antrenman seansında, 19 yaş 53 günlükken, piste Sauber takımının üçüncü pilotu olarak piste çıkan Vettel,"
                        " Formula 1 tarihinin en genç pilotu unvanını kazanmıştır."
                        "17 Haziran 2007 tarihinde koşulan Birleşik Devletler Grand Prix'inde, 'Bir Formula 1 yarışında start alan en genç 6. pilot' unvanını kazanmakla kalmamış, aynı yarışta "
                        "'bir Formula 1 yarışında puan alan en genç pilot' rekorunu da kırmıştır. "
                        "30 Eylül 2007 tarihindeki Çin Grand Prix'ine bir ara liderlik eden Vettel, bu yarışta da 'Bir Formula 1 yarışına liderlik eden en genç pilot' rekorunu kırmıştır."
                        " 2008 İtalya Grand Prix'inde 'Bir Formula 1 yarışında pol pozisyonunu kazanan en genç pilot' ve 'Bir Formula 1 yarışını kazanan en genç pilot' rekorlarını kıran Vettel, 'Farklı iki takımda yarış kazanan en genç pilot' rekoruna da sahiptir."
                        " Vettel Abu Dabi Grand Prix'i sonunda 2010 yılında pilotlar şampiyonluğuna ulaşarak 'F1 şampiyonu olan en genç pilot' unvanını Lewis Hamilton'ın elinden almış ve yeni bir rekorun sahibi olmuştur. "
                        "Bir anlamda rekorların adamı olan Michael Schumacher'in izinden gittiğini göstermiştir. 2011 sezonunda 2011 Formula 1 sezonu'nu domine ederek bitime beş yarış kala şampiyonluğunu ilan etmiştir.", style: TextStyle(color: Colors.red), softWrap: true,),
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
    timeDilation = 4.0;
    return PhotoHero(
      photo: 'images/leclerc.jpg',
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
                  image: AssetImage("images/charles.jpg"),
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
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
                          photo: 'images/leclerc.jpg',
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
                    child: Text("Leclerc 2005 yılında karting yarışları ile kariyerine başladı. 2005, 2006 ve 2008 yıllarında Fransa PACA şampiyonasını kazandı. 2018 sezonunda Sauber-Ferrari takımında yer aldı."
                        " Takvimde yer alan 21 yarışa katılan Leclerc 10 yarışta ilk 10'da yer aldı,"
                        " 5 yarışta finişi göremedi. Sezonu 39 puanla 13. sırada tamamladı. "
                        "2019 yılı için Ferrari ile anlaştı.21 yarış sonucunda sezonu 264 puanla 4. olarak Sebastian Vettel'in bir sıra önünde tamamladı."
                        " Ayrıca 4 kez dünya şampiyonu Alman pilottan daha fazla yarış kazanarak (Leclerc 2, Vettel 1 yarış kazandı.) Formula 1'in ilerleyen yıllarında söz sahibi olacağının sinyallerini verdi.", style: TextStyle(color: Colors.red), softWrap: true,),
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
      theme: ThemeData(fontFamily: 'Formula1', highlightColor: Colors.red, accentColor: Colors.red),
      home: Ferrari(),
    ),
  );
}

class Ferrari extends StatefulWidget {
  @override
  _FerrariState createState() => _FerrariState();
}

class _FerrariState extends State<Ferrari> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget mclarenLogo = Container(
    height: 84,
    width: 84,
    child: Image.asset("images/mclaren.jpg"),
  );

  Widget sfLogo = Container(
    height: 84,
    width: 84,
    child: Image.asset("images/sf.jpg"),
  );

  Widget rbLogo = Container(
    height: 84,
    width: 84,
    child: Image.asset("images/rb.jpg"),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
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
              title: Text("Scuderia Ferrari"),
              subtitle: Text("SF1000"),
              leading: sfLogo,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Ferrari()),
                );
              },
            ),
            ListTile(
              title: Text("McLaren"),
              subtitle: Text("MCL35"),
              leading: mclarenLogo,
            ),
            ListTile(
              title: Text("Red Bull Racing"),
              subtitle: Text("RB16"),
              leading: rbLogo,
            ),
          ],
        ),
      ),
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
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/sf1000.jpg',
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
