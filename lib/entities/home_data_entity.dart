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
  List<Organizer> speakers;
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
        speakers: List<Organizer>.from(
            json["speakers"].map((x) => Organizer.fromJson(x))),
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
    required this.description,
    required this.socialLinks,
    required this.image,
  });

  String name;
  String description;
  SocialLinks socialLinks;
  String image;

  factory Organizer.fromJson(Map<String, dynamic> json) => Organizer(
        name: json["name"],
        description: json["description"],
        socialLinks: SocialLinks.fromJson(json["social_links"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "social_links": socialLinks.toJson(),
        "image": image,
      };
}

class SocialLinks {
  SocialLinks({
    required this.github,
    required this.instagram,
  });

  String github;
  String instagram;

  factory SocialLinks.fromJson(Map<String, dynamic> json) => SocialLinks(
        github: json["github"],
        instagram: json["instagram"],
      );

  Map<String, dynamic> toJson() => {
        "github": github,
        "instagram": instagram,
      };
}
