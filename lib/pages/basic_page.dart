import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BasicPages extends StatelessWidget {
  BasicPages({Key key}) : super(key: key);
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    var faker = new Faker();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            sectionImagenTop(),
            sectionTitles(),
            sectionActions(),
            SizedBox(height: 5.0),
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Text(
                  faker.lorem.words(500).toString(),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget sectionImagenTop() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://picsum.photos/1000'),
        height: 300.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget sectionTitles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    faker.job.title(),
                    style: styleTitle,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    faker.conference.name(),
                    style: styleSubtitle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 40.0,
            ),
            Text(
              faker.randomGenerator.integer(5).toString(),
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _iconAction(Icons.call, 'CALL'),
        _iconAction(Icons.near_me, 'ROUTE'),
        _iconAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _iconAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15.0),
        ),
      ],
    );
  }
}
