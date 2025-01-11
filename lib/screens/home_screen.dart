import 'package:flutter/material.dart';
import 'package:looop_travel/widgets/Myimageslider.dart';
import 'package:looop_travel/widgets/destination_carousel.dart';
import 'package:looop_travel/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../MapMultiMarker.dart';
import '../widgets/Drawer.dart';
 // Import the custom drawer widget

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // GlobalKey for Scaffold

  void _openMap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapMultiMarker()), // Replace with your map screen widget
    );
  }

  int _selectedIndex = 0;
  int _selectedBottomTabIndex = 0;

  final List<IconData> _icons = [
    FontAwesomeIcons.train,
    FontAwesomeIcons.plane,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.location,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        print("tapped $index");
        setState(() {
          this._selectedIndex = index;
        });
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : Color(0xFFE7EBEE),
          shape: BoxShape.circle,
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the global key to the Scaffold

      drawer: ContactUsDrawer(), // Custom drawer widget
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text("What would you like to find?",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry e) => _buildIcon(e.key))
                  .toList(),
            ),
            SizedBox(
              height: 200.0,
              child: Myimageslider(),
            ),
            SizedBox(height: 20),
            DestinationCarousel(),
            SizedBox(height: 20),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedBottomTabIndex = index;

            if (index == 1) {
              // Open the map when the 'Map' tab is tapped
              _openMap(context);
            } else if (index == 2) {
              // Open the drawer when the 'Settings' tab is tapped
              _scaffoldKey.currentState?.openDrawer(); // Open drawer using the global key
            }
          });
        },
        currentIndex: _selectedBottomTabIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 30.0,
              color: Colors.black,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30.0,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
