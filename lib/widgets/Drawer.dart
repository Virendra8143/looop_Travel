import 'package:flutter/material.dart';

class ContactUsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Custom Drawer Header with Background Image
          Container(
            height: 250.0, // Increased height for the header
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.pexels.com/photos/18526644/pexels-photo-18526644/free-photo-of-cityscape-of-udaipur-india.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"), // Replace with your background image URL
                fit: BoxFit.cover, // Ensure the image covers the whole container
              ),
            ),
            child: DrawerHeader(
              padding: EdgeInsets.all(20.0), // Add some padding for better spacing
              margin: EdgeInsets.zero, // Remove default margin
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text(
                    'We are here to help!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Drawer items (contact details)
          ListTile(
            title: Text('For more enquiry, please email us '),
            subtitle: Text('virendradamami1@gmail.com'),
          ),
          ListTile(
            title: Text('Or reach us via phone:'),
            subtitle: Text('+91 6265274633'),
          ),
        ],
      ),
    );
  }
}
