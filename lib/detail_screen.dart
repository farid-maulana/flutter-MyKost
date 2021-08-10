import 'package:flutter/material.dart';
import 'package:mykost/models/popular_hotel.dart';

class DetailScreen extends StatelessWidget {
  final PopularHotel hotel;

  DetailScreen({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 400,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 5,
                    child: Image.asset(hotel.image, fit: BoxFit.fill,),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    hotel.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        color: Colors.blueAccent
                      ),
                      Text(
                        hotel.location,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ) 
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.grade,
                        color: Colors.orangeAccent,
                      ),
                      Text(
                        hotel.star + ' (' + hotel.comment + ' reviews)',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ) 
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    hotel.description,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ),
              ],
            ) 
          ) 
        ),
      ),
    );
  }
}
