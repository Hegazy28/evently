class UserDm {
  static UserDm? currentUser;
  late String name;
  late String id;
  late String? email;
  List<dynamic> favourite = [];

  UserDm.fromJson({required Map<String, dynamic> json}) {
    name = json["name"];
    email = json["email"];
    id = json["id"];
    favourite = json["favourite"];
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'email': email,
      'favourite': favourite,
    };
  }

  UserDm({required this.name, required this.id, required this.email});
}
