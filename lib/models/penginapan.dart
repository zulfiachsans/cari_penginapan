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
    imageUrl:
        'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
    rating: 5,
    address: 'Jln. Ahmad Yani No. 1',
    phone: '6234567890',
    mapUrl: 'https://goo.gl/maps/5s61rreEq3PVn44u9',
    photos: [
      'https://images.unsplash.com/photo-1554995207-c18c203602cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1556911220-bff31c812dba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8a2l0Y2hlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/flagged/photo-1556438758-84625859c6b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHRvaWxldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupBoards: 3,
  ),
];
