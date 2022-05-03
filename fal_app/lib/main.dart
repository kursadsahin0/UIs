// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

int yanitlarIndex = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<String> yanitlar = [
      'TIKLA FALIN GELSİN',
      'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
      'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
      'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
      'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
      'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
      'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
      'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
      'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
      'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
      'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
      'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
      'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
      'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
      'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
      'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[600],
        appBar: AppBar(
          title: Text("GÜNÜN FALI"),
          backgroundColor: Colors.deepPurple[400],
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Expanded(
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOOq_FC-r6yuFDgdXV5-JRh0D7ADZBN1PzhA&usqp=CAU'),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Expanded(
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: ListTile(
                      leading: Icon(Icons.favorite, color: Colors.redAccent),
                      title: Text(
                        'AŞK DURUMU',
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          yanitlarIndex = Random().nextInt(5) + 1;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Expanded(
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_cart,
                        color: Colors.green,
                      ),
                      title: Text(
                        'PARA DURUMU',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          yanitlarIndex = Random().nextInt(5) + 6;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Expanded(
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.explore,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'GÜNLÜK TAVSİYE',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          yanitlarIndex = Random().nextInt(5) + 11;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  yanitlar[yanitlarIndex],
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
