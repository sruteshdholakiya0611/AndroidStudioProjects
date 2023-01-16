class UserCustom {
  late String id;
  late String name;

  UserCustom({required this.id, required this.name});

  UserCustom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}