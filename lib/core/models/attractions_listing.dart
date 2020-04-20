// To parse this JSON data, do
//
//     final attractions = attractionsFromJson(jsonString);

import 'dart:convert';

Attractions attractionsFromJson(String str) => Attractions.fromJson(json.decode(str));

String attractionsToJson(Attractions data) => json.encode(data.toJson());

class Attractions {
    List<Datum> data;

    Attractions({
        this.data,
    });

    factory Attractions.fromJson(Map<String, dynamic> json) => Attractions(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String locationId;
    String name;
    String locationString;
    Photo photo;
    String description;
    String webUrl;
    String phone;
    String website;
    String email;
    String address;
    String shoppingType;

    Datum({
        this.locationId,
        this.name,
        this.locationString,
        this.photo,
        this.description,
        this.webUrl,
        this.phone,
        this.website,
        this.email,
        this.address,
        this.shoppingType,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        locationId: json["location_id"],
        name: json["name"],
        locationString: json["location_string"],
        photo: Photo.fromJson(json["photo"]),
        description: json["description"],
        webUrl: json["web_url"],
        phone: json["phone"],
        website: json["website"],
        email: json["email"],
        address: json["address"],
        shoppingType: json["shopping_type"],
    );

    Map<String, dynamic> toJson() => {
        "location_id": locationId,
        "name": name,
        "location_string": locationString,
        "photo": photo.toJson(),
        "description": description,
        "web_url": webUrl,
        "phone": phone,
        "website": website,
        "email": email,
        "address": address,
        "shopping_type": shoppingType,
    };
}

class Photo {
    Images images;
    User user;

    Photo({
        this.images,
        this.user,
    });

    factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        images: Images.fromJson(json["images"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "images": images.toJson(),
        "user": user.toJson(),
    };
}

class Images {
    Medium small;
    Medium medium;

    Images({
        this.small,
        this.medium,
    });

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        small: Medium.fromJson(json["small"]),
        medium: Medium.fromJson(json["medium"]),
    );

    Map<String, dynamic> toJson() => {
        "small": small.toJson(),
        "medium": medium.toJson(),
    };
}

class Medium {
    String width;
    String url;
    String height;

    Medium({
        this.width,
        this.url,
        this.height,
    });

    factory Medium.fromJson(Map<String, dynamic> json) => Medium(
        width: json["width"],
        url: json["url"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "url": url,
        "height": height,
    };
}

class User {
    User();

    factory User.fromJson(Map<String, dynamic> json) => User(
    );

    Map<String, dynamic> toJson() => {
    };
}
