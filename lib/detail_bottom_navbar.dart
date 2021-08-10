import 'package:flutter/material.dart';
import 'package:mykost/models/popular_hotel.dart';

class DetailBottomNavBar extends StatelessWidget {
  final PopularHotel hotel;

  DetailBottomNavBar({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0),
        ],
      ),
      child: ClipRRect(
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      hotel.price,
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      hotel.openTime,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                    child: Text('Book Now', style: TextStyle(fontSize: 18),),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                    )
                  ),
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
