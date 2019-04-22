import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Movie Database"),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              padding: EdgeInsets.all(8),
              child: new TopWidget(),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, item) {
                  return new PosterCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSizeBig = 15;
    return ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/main.jpg", fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.transparent, Colors.black87])),
              width: double.infinity,
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Guardian of the Galaxy Vol. 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, item) {
                          return Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: iconSizeBig);
                        },
                      ),
                      Text(
                        "1,785 Ratings",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class PosterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: SizedBox(
          height: 210,
          width: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/galaxy.jpg",
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomCenter,
                          colors: <Color>[Colors.transparent, Colors.black87])),
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Guardian of the Galaxy Vol. 2",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "4.5",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                            size: 12,
                          ),
                          Text(
                            "1,785 Ratings",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
