import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intercon_app/pages/login_page.dart';
// comando: flutter pub add smooth_page_indicator
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int activeIndex = 0;
  final urlImages = [
    'assets/images/Explora.png',
    'assets/images/Participa.png',
    'assets/images/Informate.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondo.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SizedBox(
                height: 100,
                width: 200,
                child: Image.asset(
                  'assets/images/intercon 1.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 250),
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: 80,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    reverse: false,
                    autoPlayInterval: Duration(seconds: 3),
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index)),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImagecarousel(urlImage, index);
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            builIndicador(),
            Container(
              width: 300,
              height: 45,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                color: Color(0xffb076f77),
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 45,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Color(0xffb076f77),
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Seguir como invitado",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget buildImagecarousel(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Image.asset(
          urlImage,
          width: 150,
        ),
      );

  Widget builIndicador() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: JumpingDotEffect(
          activeDotColor: Color(0xffb0F7931E),
          dotColor: Colors.white,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}
