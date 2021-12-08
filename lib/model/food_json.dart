// To parse this JSON data, do
//
//     final delivery = deliveryFromJson(jsonString);

import 'dart:convert';

List<Delivery> deliveryFromJson(String str) => List<Delivery>.from(json.decode(str).map((x) => Delivery.fromJson(x)));

String deliveryToJson(List<Delivery> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Delivery {
    Delivery({
        this.burgers,
        this.pizzas,
        this.drinks,
        this.deserts,
    });

    List<Burger>? burgers;
    List<Burger>? pizzas;
    List<Burger>? drinks;
    List<Burger>? deserts;

    factory Delivery.fromJson(Map<String, dynamic> json) => Delivery(
        burgers: List<Burger>.from(json["burgers"].map((x) => Burger.fromJson(x))),
        pizzas: List<Burger>.from(json["pizzas"].map((x) => Burger.fromJson(x))),
        drinks: List<Burger>.from(json["drinks"].map((x) => Burger.fromJson(x))),
        deserts: List<Burger>.from(json["deserts"].map((x) => Burger.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "burgers": List<dynamic>.from(burgers!.map((x) => x.toJson())),
        "pizzas": List<dynamic>.from(pizzas!.map((x) => x.toJson())),
        "drinks": List<dynamic>.from(drinks!.map((x) => x.toJson())),
        "deserts": List<dynamic>.from(deserts!.map((x) => x.toJson())),
    };
}

class Burger {
    Burger({
        this.name,
        this.description,
        this.restaurant,
        this.phoneNumber,
        this.image,
        this.favorite,
        this.prices,
    });

    String? name;
    String? description;
    String? restaurant;
    String? phoneNumber;
    String? image;
    String? favorite;
    Prices? prices;

    factory Burger.fromJson(Map<String, dynamic> json) => Burger(
        name: json["name"],
        description: json["description"],
        restaurant: json["restaurant"],
        phoneNumber: json["phoneNumber"],
        image: json["image"],
        favorite: json["favorite"],
        prices: Prices.fromJson(json["prices"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "restaurant": restaurant,
        "phoneNumber": phoneNumber,
        "image": image,
        "favorite": favorite,
        "prices": prices!.toJson(),
    };
}

class Prices {
    Prices({
        this.small,
        this.medium,
        this.large,
    });

    String? small;
    String? medium;
    String? large;

    factory Prices.fromJson(Map<String, dynamic> json) => Prices(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
    );

    Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
    };
}
