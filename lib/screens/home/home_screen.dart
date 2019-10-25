import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: ClipPath(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage('http://br.web.img2.acsta.net/c_215_290/pictures/17/02/06/17/01/343859.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.color)
              )
            ),
            width: MediaQuery.of(context).size.width,
            height: 350,
          ),

          clipper: CustomClipPath(),
        ),
      ),

    );
  }
}



class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 30, size.height - (.2*size.height));
    path.lineTo(size.width, size.height - (.5*size.height));
    path.lineTo(size.width, 0);


    // path.lineTo(size.width, size.height/2);
    // path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}