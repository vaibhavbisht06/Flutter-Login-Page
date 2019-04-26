import 'package:flutter/material.dart';

void main()=> runApp(new Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
         home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin  {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initstate(){
    super.initState();
    _iconAnimationController =new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation= new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.bounceOut
    );
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward( );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new  Image(image : new AssetImage('images/girl.jpeg'),
          fit: BoxFit.cover,
          color: Colors.black45,
          colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value*100,
              )
            ],
          )
        ],
      ),
    );
  }
}

