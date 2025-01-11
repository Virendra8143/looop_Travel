import 'package:looop_travel/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;

  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/udaipur1.jpg',
    name: 'Near by Hotels',
    type: 'Rajasthan',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 40,
  ),
  Activity(
    imageUrl: 'assets/dalbati.jpg',
    name: 'Are You Hungry',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 25,
  ),
  Activity(
    imageUrl: 'assets/train.jpg',
    name: 'Happy Journey',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 150,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/pexels-hemant-singh-chauhan-17831363.jpg',
    city: 'Udaipur',
    country: 'india',
    description: 'Visit Udaipur for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/jaisalmer.jpg',
    city: 'Jaisalmer',
    country: 'india',
    description: 'Visit Jaisalmer for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/jodhpur.jpg',
    city: 'Jodhpur',
    country: 'india',
    description: 'Visit Jodhpur for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/gettyimages-522676478-612x612.jpg',
    city: 'Jaipur',
    country: 'india',
    description: 'Visit Jaipur for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/chittor.jpg',
    city: 'Chittorgarh',
    country: 'india',
    description: 'Visit Chittorgarh for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];