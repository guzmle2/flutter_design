import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[_pageOne(), _pageTwo(context)],
        ),
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _backgroundPage(),
        _imagePage(),
        _sectionInfo(),
      ],
    );
  }

  Widget _pageTwo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 219, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            child: Text(
              'Welcome',
              style: TextStyle(fontSize: 20.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          ),
          onPressed: () {
             Navigator.pushNamed(context, 'buttons');
          },
        ),
      ),
    );
  }

  Widget _backgroundPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 219, 1.0),
    );
  }

  Widget _imagePage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _sectionInfo() {
    final styleTxt = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            '11',
            style: styleTxt,
          ),
          Text(
            'Miercoles',
            style: styleTxt,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
