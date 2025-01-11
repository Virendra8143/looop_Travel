
class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/udaipur1.jpg',
    name: 'Near By Hotels'
    ,
    address: '404 Great St',
    price: 5000,
  ),
  Hotel(
    imageUrl: 'assets/dalbati.jpg',
    name: 'Restaurant',
    address: '404 Great St',
    price: 800,
  ),
  Hotel(
    imageUrl: 'assets/train.jpg',
    name: 'Routes',
    address: '404 Great St',
    price: 24,
  ),
];