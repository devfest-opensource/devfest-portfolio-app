// To parse this JSON data, do
//
//     final homeDataEntity = homeDataEntityFromJson(jsonString);

import 'dart:convert';

HomeDataEntity homeDataEntityFromJson(String str) =>
    HomeDataEntity.fromJson(json.decode(str));
List<HomeDataEntity> previousDevfestDataEntityFromJson(List<dynamic> list) =>
    List<HomeDataEntity>.from(list.map((x) => HomeDataEntity.fromJson(x)));

String homeDataEntityToJson(HomeDataEntity data) => json.encode(data.toJson());

class HomeDataEntity {
  HomeDataEntity({
    required this.title,
    required this.registrationLink,
    required this.description,
    required this.venue,
    required this.time,
    required this.date,
    required this.image,
    required this.speakers,
    required this.organizers,
    required this.links,
  });

  String title;
  String registrationLink;
  String description;
  List<String> venue;
  String time;
  String date;
  String image;
  List<Speaker> speakers;
  List<Organizer> organizers;
  List<String> links;

  factory HomeDataEntity.fromJson(Map<String, dynamic> json) => HomeDataEntity(
        title: json["title"],
        registrationLink: json["registration_link"],
        description: json["description"],
        venue: List<String>.from(json["venue"].map((x) => x)),
        time: json["time"],
        date: json["date"],
        image: json["image"],
        speakers: List<Speaker>.from(
            json["speakers"].map((x) => Speaker.fromJson(x))),
        organizers: List<Organizer>.from(
            json["organizers"].map((x) => Organizer.fromJson(x))),
        links: List<String>.from(json["links"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "registration_link": registrationLink,
        "description": description,
        "venue": List<dynamic>.from(venue.map((x) => x)),
        "time": time,
        "date": date,
        "image": image,
        "speakers": List<dynamic>.from(speakers.map((x) => x.toJson())),
        "organizers": List<dynamic>.from(organizers.map((x) => x.toJson())),
        "links": List<dynamic>.from(links.map((x) => x)),
      };
}

class Organizer {
  Organizer({
    required this.name,
    required this.designation,
    required this.socialLinks,
    required this.image,
  });

  String name;
  String designation;
  SocialLinks socialLinks;
  String image;

  factory Organizer.fromJson(Map<String, dynamic> json) => Organizer(
        name: json["name"],
        designation: json["designation"],
        socialLinks: SocialLinks.fromJson(json["social_links"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "designation": designation,
        "social_links": socialLinks.toJson(),
        "image": image,
      };
}

class SocialLinks {
  SocialLinks({
    this.linkedin,
    this.github,
    this.twitter,
  });

  String? linkedin;
  String? github;
  String? twitter;

  factory SocialLinks.fromJson(Map<String, dynamic> json) => SocialLinks(
        linkedin: json["linkedin"],
        github: json["github"],
        twitter: json["twitter"],
      );

  Map<String, dynamic> toJson() => {
        "linkedin": linkedin,
        "github": github,
        "twitter": twitter,
      };
}

class Speaker {
  Speaker({
    required this.name,
    required this.title,
    required this.designation,
    required this.track,
    required this.socialLinks,
    this.image,
  });

  String name;
  String title;
  String designation;
  Track track;
  SocialLinks socialLinks;
  String? image;

  factory Speaker.fromJson(Map<String, dynamic> json) => Speaker(
        name: json["name"],
        title: json["title"],
        designation: json["designation"],
        track: trackValues.map[json["track"]]!,
        socialLinks: SocialLinks.fromJson(json["social_links"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "designation": designation,
        "track": trackValues.reverse[track],
        "social_links": socialLinks.toJson(),
        "image": image,
      };
}

enum Track { MOBILE_AND_WEB, CLOUD_AND_ML }

final trackValues = EnumValues({
  "Cloud and ML": Track.CLOUD_AND_ML,
  "Mobile and Web": Track.MOBILE_AND_WEB
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap;
    return reverseMap;
  }
}
