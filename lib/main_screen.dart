import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            Category(),
            SearchForm(),
            PopularHotelsList(),
            PopularHolidaysList(),
          ],
        ));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hai, Farlan!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "Ayo pesan kost impianmu!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Expanded(
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.notifications,
                size: 18.0,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  var textCategory = TextStyle(fontSize: 12.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/icons/holiday.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Holiday",
                        textAlign: TextAlign.center,
                        style: textCategory,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 50,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/icons/hotels.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Hotels",
                        textAlign: TextAlign.center,
                        style: textCategory,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 50,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/icons/flight.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Flights",
                        textAlign: TextAlign.center,
                        style: textCategory,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 50,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/icons/car_rent.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Car rent",
                        textAlign: TextAlign.center,
                        style: textCategory,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 16),
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: TextField(
          style: TextStyle(
            fontSize: 16.0,
            height: 1.5,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16.0),
            fillColor: Colors.white,
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.blue,),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            hintText: 'Where do you want to go?',
          ),
          onSubmitted: (String value) {
            setState(() {
              _name = value;
            });
          },
        ),
      ),
    );
  }
}

class PopularHotelsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Popular Hotels',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 225,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 5,
                    child: Image.asset(
                      'images/farm-house.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 225,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 5,
                    child: Image.asset(
                      'images/bosscha.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 225,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 5,
                    child: Image.asset(
                      'images/jalan-asia-afrika.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopularHolidaysList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Popular Holidays',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 250,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 5,
                        child: Image.asset(
                          'images/farm-house.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Farm House Lembang',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.place, color: Colors.blueAccent),
                                Text(
                                  'Lembang',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.grade, color: Colors.orangeAccent),
                                Text(
                                  '3.8/5 (1.2k)',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 250,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 5,
                        child: Image.asset(
                          'images/bosscha.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Observatorium Bosscha',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.place, color: Colors.blueAccent),
                                Text(
                                  'Lembang',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.grade, color: Colors.orangeAccent),
                                Text(
                                  '4.4/5 (124)',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 250,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 5,
                        child: Image.asset(
                          'images/jalan-asia-afrika.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Jalan Asia Afrika',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.place, color: Colors.blueAccent),
                                Text(
                                  'Kota Bandung',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.grade, color: Colors.orangeAccent),
                                Text(
                                  '4.0/5 (500)',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
