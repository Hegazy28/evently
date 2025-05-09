class UserDm {
  static UserDm? currentUser;

  String name;
  String id;
  String email;
  List<dynamic> favourite = [];
  UserDm({required this.name, required this.id,required this.email});
}
