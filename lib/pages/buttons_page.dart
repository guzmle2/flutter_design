import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  final faker = new Faker();

  ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _sectionTitles(),
                _buttonsRedond(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottonNavegationBar(context),
    );
  }

  _backgroundApp() {
    final gradiant = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final boxPink = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 350.0,
        width: 350.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Colors.pink,
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiant,
        Positioned(
          top: -100.0,
          child: boxPink,
        ),
      ],
    );
  }

  _sectionTitles() {
    final styleTitle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    final styleSubtitle = TextStyle(
      fontSize: 16.0,
      color: Colors.white,
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              faker.job.title(),
              style: styleTitle,
            ),
            SizedBox(height: 10.0),
            Text(
              faker.lorem.sentence().toString(),
              style: styleSubtitle,
            ),
          ],
        ),
      ),
    );
  }

  _bottonNavegationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Color.fromRGBO(116, 117, 152, 1.0),
              ),
            ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 30.0,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 30.0,
            ),
            title: Container(),
          )
        ],
      ),
    );
  }

  _buttonsRedond() {
    return Table(
      children: [
        TableRow(
          children: [
            _createButtonsMenu(Icons.dashboard, Colors.blue, 'General'),
            _createButtonsMenu(
                Icons.directions_car, Colors.purple, 'Transport'),
          ],
        ),
        TableRow(
          children: [
            _createButtonsMenu(Icons.shopping_basket, Colors.pink, 'Shopping'),
            _createButtonsMenu(Icons.format_list_bulleted, Colors.orange, 'Bills'),
          ],
        ),
        TableRow(
          children: [
            _createButtonsMenu(Icons.movie_filter, Colors.blue, 'Entertainment'),
            _createButtonsMenu(Icons.local_grocery_store, Colors.green, 'Grocery'),
          ],
        ),
        TableRow(
          children: [
            _createButtonsMenu(Icons.collections, Colors.blue, 'Photos'),
            _createButtonsMenu(Icons.help_outline, Colors.green, 'General'),
          ],
        ),
      ],
    );
  }

  _createButtonsMenu(IconData icon, Color color, String text) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 10.0),
          CircleAvatar(
            radius: 35.0,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          Text(text, style: TextStyle(color: color)),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
