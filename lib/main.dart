import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        accentColor: Colors.pinkAccent
      ),
      themeMode: ThemeMode.dark, 
      home: MyPortfolioPage(title: 'Portfolio'),
    );
  }
}

class MyPortfolioPage extends StatefulWidget {
  MyPortfolioPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyPortfolioPageState createState() => _MyPortfolioPageState();
}

class _MyPortfolioPageState extends State<MyPortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Image(
                  fit: BoxFit.fitWidth,

                  image: AssetImage(
                    'asset/profile.jpeg'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12
                ),
                child: Column(
                  children: [
                    Text(
                      'Hello, I\'m Ayomide',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Lobster'
                        // fontStyle: FontStyle.italic
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      about,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    SizedBox(height: 36),
                    Wrap(
                      spacing: 12,
                      children: [
                        SocialMedia(
                          icon: 'asset/facebook.png', 
                          label: '@hamdalofficial',
                          color: Color(0xFF3b5998),
                        ),
                        SocialMedia(
                          icon: 'asset/twitter.png', 
                          label: '@hamdalofficial',
                          color: Color(0xFF00acee),
                        ),
                        SocialMedia(
                          icon: 'asset/instagram.png', 
                          label: '@hamdalofficial', 
                          color: Color(0xFFcd486b)
                        ),
                        SocialMedia(
                          icon: 'asset/github.png',
                          label: '@Hamdal',
                          color: Color(0xFF4078c0),
                        ),
                        SocialMedia(
                          icon: 'asset/gmail.png',
                          label: 'hameedayomide@gmail.com',
                          color: Color(0xFFBB001B ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class SocialMedia extends StatelessWidget {
  final String icon;
  final String label;
  final Color color;

  const SocialMedia({
    Key key, 
    @required this.icon, 
    @required this.label,
    @required this.color
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      avatar: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image(
          image: AssetImage(icon),
        ),
      ),
      backgroundColor: color,
    );
  }
}


final String about = 'I am a mobile developer from Nigeria. I specialise in Native Android development with Java/Kotlin and cross-platform mobile development with Flutter. Find me on the platforms below and we can start developing that beautiful idea of yours';