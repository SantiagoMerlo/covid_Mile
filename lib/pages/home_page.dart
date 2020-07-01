import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  HomePage({Key key}) : super( key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward
        ),
        onPressed: () => Navigator.pushNamed(context, '/actions') ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox( height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Opcion 1'),
              Text('Opcion 2'),
              Text('Opcion 3')
            ],
          ),
          SizedBox( height: 20),
          MyContainer(
            text:'Opcion 1',
            color: Colors.blueAccent,),
          SizedBox( height: 20),
          MyContainer(
            text:'Opcion 2',
            color: Colors.redAccent,
            height: 50,
            ),
          SizedBox( height: 20),
          MyContainer(
            text:'Opcion 3',
            color: Colors.yellowAccent,
            width: 200,),
          SizedBox( height: 20),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {

  final String text;
  final Color color;
  final double height;
  final double width;

  MyContainer({
    Key key,
    this.text,
    this.color,
    this.height,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: height ?? 120,
          width: width ?? 300,
          color: color ?? Colors.black ,
          child: Center(
            child: Text( 
              text ?? '' ,
              // text == null ? '' : text 
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),),
          ),
        ),
      ),
    );
  }
}