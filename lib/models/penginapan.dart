class Penginapan {
  late int id;
  late String name;
  late String city;
  late String country;
  late int price;
  late String imageUrl;
  late int rating;
  late String address;
  late String phone;
  late String mapUrl;
  late List<String> photos;
  late int numberOfKitchens;
  late int numberOfBedrooms;
  late int numberOfCupBoards;
  Penginapan({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfBedrooms,
    required this.numberOfCupBoards,
  });
}

var penginapanList = [
  Penginapan(
    id: 1,
    name: 'Sanctuary Home',
    city: 'jakarta',
    country: 'indonesia',
    price: 48,
    imageUrl: 'assets/images/foto-1.png',
    rating: 5,
    address: 'Jln. Ahmad Yani No. 1',
    phone: '6234567890',
    mapUrl: 'https://goo.gl/maps/5s61rreEq3PVn44u9',
    photos: [
      'assets/images/foto-2.png',
      'assets/images/foto-3.png',
      'assets/images/foto-4.png',
      'assets/images/foto-5.png',
      'assets/images/foto-6.png'
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupBoards: 3,
  ),
  Penginapan(
    id: 2,
    name: 'Emerald Stay',
    city: 'Bandung',
    country: 'indonesia',
    price: 50,
    imageUrl: 'assets/images/foto-7.png',
    rating: 4,
    address: 'Jln. Soekarno Hatta No. 40',
    phone: '623456213',
    mapUrl: 'https://goo.gl/maps/5s61rreEq3PVn44u9',
    photos: [
      'assets/images/foto-8.png',
      'assets/images/foto-9.png',
      'assets/images/foto-10.png',
      'assets/images/foto-11.png',
      'assets/images/foto-12.png'
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupBoards: 3,
  ),
  Penginapan(
    id: 3,
    name: 'Luxury Dreamwood"',
    city: 'Bogor',
    country: 'indonesia',
    price: 22,
    imageUrl: 'assets/images/foto-13.png',
    rating: 4,
    address: 'Jln. Jendral Sudirman No. 101',
    phone: '623456213',
    mapUrl: 'https://goo.gl/maps/5s61rreEq3PVn44u9',
    photos: [
      'assets/images/foto-14.png',
      'assets/images/foto-15.png',
      'assets/images/foto-16.png',
      'assets/images/foto-17.png',
      'assets/images/foto-18.png'
    ],
    numberOfKitchens: 1,
    numberOfBedrooms: 4,
    numberOfCupBoards: 3,
  ),
  Penginapan(
    id: 4,
    name: 'Orange Crown',
    city: 'Magelang',
    country: 'indonesia',
    price: 80,
    imageUrl: 'assets/images/foto-19.png',
    rating: 4,
    address: 'Jln. Warna Orange No. 101',
    phone: '623456213',
    mapUrl: 'https://goo.gl/maps/5s61rreEq3PVn44u9',
    photos: [
      'assets/images/foto-20.png',
      'assets/images/foto-21.png',
      'assets/images/foto-22.png',
      'assets/images/foto-23.png',
      'assets/images/foto-24.png',
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupBoards: 3,
  ),
  Penginapan(
    id: 5,
    name: 'City of Cactus',
    city: 'Jakarta',
    country: 'indonesia',
    price: 75,
    imageUrl: 'assets/images/foto-25.png',
    rating: 5,
    address: 'Jln. Kaktur No. 101',
    phone: '623456213',
    mapUrl: 'https://goo.gl/maps/5s61rreEq3PVn44u9',
    photos: [
      'assets/images/foto-26.png',
      'assets/images/foto-27.png',
      'assets/images/foto-28.png',
      'assets/images/foto-29.png',
      'assets/images/foto-30.png'
    ],
    numberOfKitchens: 3,
    numberOfBedrooms: 2,
    numberOfCupBoards: 3,
  ),
];
