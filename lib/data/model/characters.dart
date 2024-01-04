class Character {
  late int Charid;
  late String name;
  late String status;
  late String species;
  late String type;
  late String gender;
  late String image;
  late List<dynamic> origin;
  late List<dynamic> location;
  late List<dynamic> episode ;

  Character.fromjson(Map<String,dynamic>json){
    Charid=json['id'];
    name=json['name'];
    status=json['status'];
    species=json['species'];
    type=json['type'];
    gender=json['gender'];
    image=json['image'];
    origin=json['origin'];
    location=json['location'];
    episode=json['episode'];

  }



}