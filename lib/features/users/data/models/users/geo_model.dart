import 'dart:convert';

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  String lat;
  String lng;

  Geo copyWith({
    required String lat,
    required String lng,
  }) =>
      Geo(
        lat: lat ,
        lng: lng ,
      );

  factory Geo.fromRawJson(String str) => Geo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}