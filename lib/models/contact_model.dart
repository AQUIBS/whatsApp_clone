// ignore_for_file: public_member_api_docs, sort_constructors_first
class ContactModel {
  String? name;
  String? message;
  String? time;
  String? profilePic;

  ContactModel({this.name, this.message, this.time, this.profilePic});

  ContactModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    time = json['time'];
    profilePic = json['profilePic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['message'] = message;
    data['time'] = time;
    data['profilePic'] = profilePic;
    return data;
  }

  ContactModel copyWith({
    String? name,
    String? message,
    String? time,
    String? profilePic,
  }) {
    return ContactModel(
      name: name ?? this.name,
      message: message ?? this.message,
      time: time ?? this.time,
      profilePic: profilePic ?? this.profilePic,
    );
  }

  @override
  bool operator ==(covariant ContactModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.message == message &&
        other.time == time &&
        other.profilePic == profilePic;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        message.hashCode ^
        time.hashCode ^
        profilePic.hashCode;
  }
}
