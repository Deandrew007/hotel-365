// To parse this JSON data, do
//
//     final hotelListing = hotelListingFromJson(jsonString);

import 'dart:convert';

HotelListing hotelListingFromJson(String str) => HotelListing.fromJson(json.decode(str));

String hotelListingToJson(HotelListing data) => json.encode(data.toJson());

class HotelListing {
    String result;
    Data data;

    HotelListing({
        this.result,
        this.data,
    });

    factory HotelListing.fromJson(Map<String, dynamic> json) => HotelListing(
        result: json["result"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "result": result,
        "data": data.toJson(),
    };
}

class Data {
    Body body;
    Common common;

    Data({
        this.body,
        this.common,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        body: Body.fromJson(json["body"]),
        common: Common.fromJson(json["common"]),
    );

    Map<String, dynamic> toJson() => {
        "body": body.toJson(),
        "common": common.toJson(),
    };
}

class Body {
    String header;
    Query query;
    SearchResults searchResults;
    SortResults sortResults;
    Filters filters;
    BodyPointOfSale pointOfSale;
    Miscellaneous miscellaneous;
    PageInfo pageInfo;

    Body({
        this.header,
        this.query,
        this.searchResults,
        this.sortResults,
        this.filters,
        this.pointOfSale,
        this.miscellaneous,
        this.pageInfo,
    });

    factory Body.fromJson(Map<String, dynamic> json) => Body(
        header: json["header"],
        query: Query.fromJson(json["query"]),
        searchResults: SearchResults.fromJson(json["searchResults"]),
        sortResults: SortResults.fromJson(json["sortResults"]),
        filters: Filters.fromJson(json["filters"]),
        pointOfSale: BodyPointOfSale.fromJson(json["pointOfSale"]),
        miscellaneous: Miscellaneous.fromJson(json["miscellaneous"]),
        pageInfo: PageInfo.fromJson(json["pageInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "header": header,
        "query": query.toJson(),
        "searchResults": searchResults.toJson(),
        "sortResults": sortResults.toJson(),
        "filters": filters.toJson(),
        "pointOfSale": pointOfSale.toJson(),
        "miscellaneous": miscellaneous.toJson(),
        "pageInfo": pageInfo.toJson(),
    };
}

class Filters {
    bool applied;
    Name name;
    StarRating starRating;
    GuestRating guestRating;
    Landmarks landmarks;
    NeighbourhoodClass neighbourhood;
    Accessibility accommodationType;
    Accessibility facilities;
    Accessibility accessibility;
    Accessibility themesAndTypes;
    FiltersPrice price;
    PaymentPreference paymentPreference;
    WelcomeRewards welcomeRewards;

    Filters({
        this.applied,
        this.name,
        this.starRating,
        this.guestRating,
        this.landmarks,
        this.neighbourhood,
        this.accommodationType,
        this.facilities,
        this.accessibility,
        this.themesAndTypes,
        this.price,
        this.paymentPreference,
        this.welcomeRewards,
    });

    factory Filters.fromJson(Map<String, dynamic> json) => Filters(
        applied: json["applied"],
        name: Name.fromJson(json["name"]),
        starRating: StarRating.fromJson(json["starRating"]),
        guestRating: GuestRating.fromJson(json["guestRating"]),
        landmarks: Landmarks.fromJson(json["landmarks"]),
        neighbourhood: NeighbourhoodClass.fromJson(json["neighbourhood"]),
        accommodationType: Accessibility.fromJson(json["accommodationType"]),
        facilities: Accessibility.fromJson(json["facilities"]),
        accessibility: Accessibility.fromJson(json["accessibility"]),
        themesAndTypes: Accessibility.fromJson(json["themesAndTypes"]),
        price: FiltersPrice.fromJson(json["price"]),
        paymentPreference: PaymentPreference.fromJson(json["paymentPreference"]),
        welcomeRewards: WelcomeRewards.fromJson(json["welcomeRewards"]),
    );

    Map<String, dynamic> toJson() => {
        "applied": applied,
        "name": name.toJson(),
        "starRating": starRating.toJson(),
        "guestRating": guestRating.toJson(),
        "landmarks": landmarks.toJson(),
        "neighbourhood": neighbourhood.toJson(),
        "accommodationType": accommodationType.toJson(),
        "facilities": facilities.toJson(),
        "accessibility": accessibility.toJson(),
        "themesAndTypes": themesAndTypes.toJson(),
        "price": price.toJson(),
        "paymentPreference": paymentPreference.toJson(),
        "welcomeRewards": welcomeRewards.toJson(),
    };
}

class Accessibility {
    bool applied;
    List<AccessibilityItem> items;

    Accessibility({
        this.applied,
        this.items,
    });

    factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
        applied: json["applied"],
        items: List<AccessibilityItem>.from(json["items"].map((x) => AccessibilityItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "applied": applied,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class AccessibilityItem {
    String label;
    String value;

    AccessibilityItem({
        this.label,
        this.value,
    });

    factory AccessibilityItem.fromJson(Map<String, dynamic> json) => AccessibilityItem(
        label: json["label"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
    };
}

class GuestRating {
    GuestRatingRange range;

    GuestRating({
        this.range,
    });

    factory GuestRating.fromJson(Map<String, dynamic> json) => GuestRating(
        range: GuestRatingRange.fromJson(json["range"]),
    );

    Map<String, dynamic> toJson() => {
        "range": range.toJson(),
    };
}

class GuestRatingRange {
    Max min;
    Max max;

    GuestRatingRange({
        this.min,
        this.max,
    });

    factory GuestRatingRange.fromJson(Map<String, dynamic> json) => GuestRatingRange(
        min: Max.fromJson(json["min"]),
        max: Max.fromJson(json["max"]),
    );

    Map<String, dynamic> toJson() => {
        "min": min.toJson(),
        "max": max.toJson(),
    };
}

class Max {
    int defaultValue;

    Max({
        this.defaultValue,
    });

    factory Max.fromJson(Map<String, dynamic> json) => Max(
        defaultValue: json["defaultValue"],
    );

    Map<String, dynamic> toJson() => {
        "defaultValue": defaultValue,
    };
}

class Landmarks {
    List<dynamic> selectedOrder;
    List<AccessibilityItem> items;
    List<dynamic> distance;

    Landmarks({
        this.selectedOrder,
        this.items,
        this.distance,
    });

    factory Landmarks.fromJson(Map<String, dynamic> json) => Landmarks(
        selectedOrder: List<dynamic>.from(json["selectedOrder"].map((x) => x)),
        items: List<AccessibilityItem>.from(json["items"].map((x) => AccessibilityItem.fromJson(x))),
        distance: List<dynamic>.from(json["distance"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "selectedOrder": List<dynamic>.from(selectedOrder.map((x) => x)),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "distance": List<dynamic>.from(distance.map((x) => x)),
    };
}

class Name {
    NameItem item;
    Autosuggest autosuggest;

    Name({
        this.item,
        this.autosuggest,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        item: NameItem.fromJson(json["item"]),
        autosuggest: Autosuggest.fromJson(json["autosuggest"]),
    );

    Map<String, dynamic> toJson() => {
        "item": item.toJson(),
        "autosuggest": autosuggest.toJson(),
    };
}

class Autosuggest {
    AdditionalUrlParams additionalUrlParams;

    Autosuggest({
        this.additionalUrlParams,
    });

    factory Autosuggest.fromJson(Map<String, dynamic> json) => Autosuggest(
        additionalUrlParams: AdditionalUrlParams.fromJson(json["additionalUrlParams"]),
    );

    Map<String, dynamic> toJson() => {
        "additionalUrlParams": additionalUrlParams.toJson(),
    };
}

class AdditionalUrlParams {
    String resolvedLocation;
    String qDestination;
    String destinationId;

    AdditionalUrlParams({
        this.resolvedLocation,
        this.qDestination,
        this.destinationId,
    });

    factory AdditionalUrlParams.fromJson(Map<String, dynamic> json) => AdditionalUrlParams(
        resolvedLocation: json["resolved-location"],
        qDestination: json["q-destination"],
        destinationId: json["destination-id"],
    );

    Map<String, dynamic> toJson() => {
        "resolved-location": resolvedLocation,
        "q-destination": qDestination,
        "destination-id": destinationId,
    };
}

class NameItem {
    String value;

    NameItem({
        this.value,
    });

    factory NameItem.fromJson(Map<String, dynamic> json) => NameItem(
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
    };
}

class NeighbourhoodClass {
    bool applied;
    List<NeighbourhoodItem> items;

    NeighbourhoodClass({
        this.applied,
        this.items,
    });

    factory NeighbourhoodClass.fromJson(Map<String, dynamic> json) => NeighbourhoodClass(
        applied: json["applied"],
        items: List<NeighbourhoodItem>.from(json["items"].map((x) => NeighbourhoodItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "applied": applied,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class NeighbourhoodItem {
    String label;
    int value;

    NeighbourhoodItem({
        this.label,
        this.value,
    });

    factory NeighbourhoodItem.fromJson(Map<String, dynamic> json) => NeighbourhoodItem(
        label: json["label"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
    };
}

class PaymentPreference {
    List<AccessibilityItem> items;

    PaymentPreference({
        this.items,
    });

    factory PaymentPreference.fromJson(Map<String, dynamic> json) => PaymentPreference(
        items: List<AccessibilityItem>.from(json["items"].map((x) => AccessibilityItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class FiltersPrice {
    String label;
    PriceRange range;
    int multiplier;

    FiltersPrice({
        this.label,
        this.range,
        this.multiplier,
    });

    factory FiltersPrice.fromJson(Map<String, dynamic> json) => FiltersPrice(
        label: json["label"],
        range: PriceRange.fromJson(json["range"]),
        multiplier: json["multiplier"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "range": range.toJson(),
        "multiplier": multiplier,
    };
}

class PriceRange {
    Max min;
    Max max;
    int increments;

    PriceRange({
        this.min,
        this.max,
        this.increments,
    });

    factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
        min: Max.fromJson(json["min"]),
        max: Max.fromJson(json["max"]),
        increments: json["increments"],
    );

    Map<String, dynamic> toJson() => {
        "min": min.toJson(),
        "max": max.toJson(),
        "increments": increments,
    };
}

class StarRating {
    bool applied;
    List<StarRatingItem> items;

    StarRating({
        this.applied,
        this.items,
    });

    factory StarRating.fromJson(Map<String, dynamic> json) => StarRating(
        applied: json["applied"],
        items: List<StarRatingItem>.from(json["items"].map((x) => StarRatingItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "applied": applied,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class StarRatingItem {
    int value;

    StarRatingItem({
        this.value,
    });

    factory StarRatingItem.fromJson(Map<String, dynamic> json) => StarRatingItem(
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
    };
}

class WelcomeRewards {
    String label;
    List<AccessibilityItem> items;

    WelcomeRewards({
        this.label,
        this.items,
    });

    factory WelcomeRewards.fromJson(Map<String, dynamic> json) => WelcomeRewards(
        label: json["label"],
        items: List<AccessibilityItem>.from(json["items"].map((x) => AccessibilityItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class Miscellaneous {
    String pageViewBeaconUrl;

    Miscellaneous({
        this.pageViewBeaconUrl,
    });

    factory Miscellaneous.fromJson(Map<String, dynamic> json) => Miscellaneous(
        pageViewBeaconUrl: json["pageViewBeaconUrl"],
    );

    Map<String, dynamic> toJson() => {
        "pageViewBeaconUrl": pageViewBeaconUrl,
    };
}

class PageInfo {
    String pageType;

    PageInfo({
        this.pageType,
    });

    factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        pageType: json["pageType"],
    );

    Map<String, dynamic> toJson() => {
        "pageType": pageType,
    };
}

class BodyPointOfSale {
    Currency currency;

    BodyPointOfSale({
        this.currency,
    });

    factory BodyPointOfSale.fromJson(Map<String, dynamic> json) => BodyPointOfSale(
        currency: Currency.fromJson(json["currency"]),
    );

    Map<String, dynamic> toJson() => {
        "currency": currency.toJson(),
    };
}

class Currency {
    String code;
    String symbol;
    String separators;
    String format;

    Currency({
        this.code,
        this.symbol,
        this.separators,
        this.format,
    });

    factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        symbol: json["symbol"],
        separators: json["separators"],
        format: json["format"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "symbol": symbol,
        "separators": separators,
        "format": format,
    };
}

class Query {
    Destination destination;

    Query({
        this.destination,
    });

    factory Query.fromJson(Map<String, dynamic> json) => Query(
        destination: Destination.fromJson(json["destination"]),
    );

    Map<String, dynamic> toJson() => {
        "destination": destination.toJson(),
    };
}

class Destination {
    String id;
    String value;
    String resolvedLocation;

    Destination({
        this.id,
        this.value,
        this.resolvedLocation,
    });

    factory Destination.fromJson(Map<String, dynamic> json) => Destination(
        id: json["id"],
        value: json["value"],
        resolvedLocation: json["resolvedLocation"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "value": value,
        "resolvedLocation": resolvedLocation,
    };
}

class SearchResults {
    int totalCount;
    List<Result> results;
    Pagination pagination;

    SearchResults({
        this.totalCount,
        this.results,
        this.pagination,
    });

    factory SearchResults.fromJson(Map<String, dynamic> json) => SearchResults(
        totalCount: json["totalCount"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int currentPage;
    String pageGroup;
    int nextPageNumber;
    String nextPageGroup;

    Pagination({
        this.currentPage,
        this.pageGroup,
        this.nextPageNumber,
        this.nextPageGroup,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        currentPage: json["currentPage"],
        pageGroup: json["pageGroup"],
        nextPageNumber: json["nextPageNumber"],
        nextPageGroup: json["nextPageGroup"],
    );

    Map<String, dynamic> toJson() => {
        "currentPage": currentPage,
        "pageGroup": pageGroup,
        "nextPageNumber": nextPageNumber,
        "nextPageGroup": nextPageGroup,
    };
}

class Result {
    int id;
    String name;
    String thumbnailUrl;
    Sponsored sponsored;
    double starRating;
    Address address;
    GuestReviews guestReviews;
    List<Landmark> landmarks;
    RatePlan ratePlan;
    NeighbourhoodEnum neighbourhood;
    Deals deals;
    Deals messaging;
    Badging badging;
    PimmsAttributes pimmsAttributes;
    Coordinate coordinate;
    ProviderType providerType;
    int supplierHotelId;

    Result({
        this.id,
        this.name,
        this.thumbnailUrl,
        this.sponsored,
        this.starRating,
        this.address,
        this.guestReviews,
        this.landmarks,
        this.ratePlan,
        this.neighbourhood,
        this.deals,
        this.messaging,
        this.badging,
        this.pimmsAttributes,
        this.coordinate,
        this.providerType,
        this.supplierHotelId,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        thumbnailUrl: json["thumbnailUrl"],
        sponsored: json["sponsored"] == null ? null : Sponsored.fromJson(json["sponsored"]),
        starRating: json["starRating"].toDouble(),
        address: Address.fromJson(json["address"]),
        guestReviews: GuestReviews.fromJson(json["guestReviews"]),
        landmarks: List<Landmark>.from(json["landmarks"].map((x) => Landmark.fromJson(x))),
        ratePlan: json["ratePlan"] == null ? null : RatePlan.fromJson(json["ratePlan"]),
        neighbourhood: neighbourhoodEnumValues.map[json["neighbourhood"]],
        deals: Deals.fromJson(json["deals"]),
        messaging: Deals.fromJson(json["messaging"]),
        badging: Badging.fromJson(json["badging"]),
        pimmsAttributes: json["pimmsAttributes"] == null ? null : pimmsAttributesValues.map[json["pimmsAttributes"]],
        coordinate: Coordinate.fromJson(json["coordinate"]),
        providerType: providerTypeValues.map[json["providerType"]],
        supplierHotelId: json["supplierHotelId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "thumbnailUrl": thumbnailUrl,
        "sponsored": sponsored == null ? null : sponsored.toJson(),
        "starRating": starRating,
        "address": address.toJson(),
        "guestReviews": guestReviews.toJson(),
        "landmarks": List<dynamic>.from(landmarks.map((x) => x.toJson())),
        "ratePlan": ratePlan == null ? null : ratePlan.toJson(),
        "neighbourhood": neighbourhoodEnumValues.reverse[neighbourhood],
        "deals": deals.toJson(),
        "messaging": messaging.toJson(),
        "badging": badging.toJson(),
        "pimmsAttributes": pimmsAttributes == null ? null : pimmsAttributesValues.reverse[pimmsAttributes],
        "coordinate": coordinate.toJson(),
        "providerType": providerTypeValues.reverse[providerType],
        "supplierHotelId": supplierHotelId,
    };
}

class Address {
    String streetAddress;
    ExtendedAddress extendedAddress;
    Locality locality;
    String postalCode;
    Region region;
    CountryName countryName;
    CountryCode countryCode;

    Address({
        this.streetAddress,
        this.extendedAddress,
        this.locality,
        this.postalCode,
        this.region,
        this.countryName,
        this.countryCode,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        streetAddress: json["streetAddress"],
        extendedAddress: extendedAddressValues.map[json["extendedAddress"]],
        locality: localityValues.map[json["locality"]],
        postalCode: json["postalCode"],
        region: regionValues.map[json["region"]],
        countryName: countryNameValues.map[json["countryName"]],
        countryCode: countryCodeValues.map[json["countryCode"]],
    );

    Map<String, dynamic> toJson() => {
        "streetAddress": streetAddress,
        "extendedAddress": extendedAddressValues.reverse[extendedAddress],
        "locality": localityValues.reverse[locality],
        "postalCode": postalCode,
        "region": regionValues.reverse[region],
        "countryName": countryNameValues.reverse[countryName],
        "countryCode": countryCodeValues.reverse[countryCode],
    };
}

enum CountryCode { US }

final countryCodeValues = EnumValues({
    "us": CountryCode.US
});

enum CountryName { UNITED_STATES }

final countryNameValues = EnumValues({
    "United States": CountryName.UNITED_STATES
});

enum ExtendedAddress { EMPTY, AT_GRAND_CENTRAL_TERMINAL }

final extendedAddressValues = EnumValues({
    "at Grand Central Terminal": ExtendedAddress.AT_GRAND_CENTRAL_TERMINAL,
    "": ExtendedAddress.EMPTY
});

enum Locality { NEW_YORK }

final localityValues = EnumValues({
    "New York": Locality.NEW_YORK
});

enum Region { NY }

final regionValues = EnumValues({
    "NY": Region.NY
});

class Badging {
    HotelBadge hotelBadge;

    Badging({
        this.hotelBadge,
    });

    factory Badging.fromJson(Map<String, dynamic> json) => Badging(
        hotelBadge: json["hotelBadge"] == null ? null : HotelBadge.fromJson(json["hotelBadge"]),
    );

    Map<String, dynamic> toJson() => {
        "hotelBadge": hotelBadge == null ? null : hotelBadge.toJson(),
    };
}

class HotelBadge {
    String type;
    String label;

    HotelBadge({
        this.type,
        this.label,
    });

    factory HotelBadge.fromJson(Map<String, dynamic> json) => HotelBadge(
        type: json["type"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "label": label,
    };
}

class Coordinate {
    double lat;
    double lon;

    Coordinate({
        this.lat,
        this.lon,
    });

    factory Coordinate.fromJson(Map<String, dynamic> json) => Coordinate(
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
    };
}

class Deals {
    Deals();

    factory Deals.fromJson(Map<String, dynamic> json) => Deals(
    );

    Map<String, dynamic> toJson() => {
    };
}

class GuestReviews {
    double unformattedRating;
    String rating;
    int total;
    int scale;
    Badge badge;
    BadgeText badgeText;

    GuestReviews({
        this.unformattedRating,
        this.rating,
        this.total,
        this.scale,
        this.badge,
        this.badgeText,
    });

    factory GuestReviews.fromJson(Map<String, dynamic> json) => GuestReviews(
        unformattedRating: json["unformattedRating"].toDouble(),
        rating: json["rating"],
        total: json["total"],
        scale: json["scale"],
        badge: badgeValues.map[json["badge"]],
        badgeText: badgeTextValues.map[json["badgeText"]],
    );

    Map<String, dynamic> toJson() => {
        "unformattedRating": unformattedRating,
        "rating": rating,
        "total": total,
        "scale": scale,
        "badge": badgeValues.reverse[badge],
        "badgeText": badgeTextValues.reverse[badgeText],
    };
}

enum Badge { SUPERB, GOOD, EXCEPTIONAL, VERY_GOOD, FABULOUS }

final badgeValues = EnumValues({
    "exceptional": Badge.EXCEPTIONAL,
    "fabulous": Badge.FABULOUS,
    "good": Badge.GOOD,
    "superb": Badge.SUPERB,
    "very-good": Badge.VERY_GOOD
});

enum BadgeText { SUPERB, GOOD, EXCEPTIONAL, VERY_GOOD, FABULOUS }

final badgeTextValues = EnumValues({
    "Exceptional": BadgeText.EXCEPTIONAL,
    "Fabulous": BadgeText.FABULOUS,
    "Good": BadgeText.GOOD,
    "Superb": BadgeText.SUPERB,
    "Very Good": BadgeText.VERY_GOOD
});

class Landmark {
    Label label;
    Distance distance;

    Landmark({
        this.label,
        this.distance,
    });

    factory Landmark.fromJson(Map<String, dynamic> json) => Landmark(
        label: labelValues.map[json["label"]],
        distance: distanceValues.map[json["distance"]],
    );

    Map<String, dynamic> toJson() => {
        "label": labelValues.reverse[label],
        "distance": distanceValues.reverse[distance],
    };
}

enum Distance { THE_04_MILES, THE_05_MILES, THE_06_MILES, THE_01_MILES, THE_09_MILES, THE_02_MILES }

final distanceValues = EnumValues({
    "0.1 miles": Distance.THE_01_MILES,
    "0.2 miles": Distance.THE_02_MILES,
    "0.4 miles": Distance.THE_04_MILES,
    "0.5 miles": Distance.THE_05_MILES,
    "0.6 miles": Distance.THE_06_MILES,
    "0.9 miles": Distance.THE_09_MILES
});

enum Label { CITY_CENTER, TIMES_SQUARE }

final labelValues = EnumValues({
    "City center": Label.CITY_CENTER,
    "Times Square": Label.TIMES_SQUARE
});

enum NeighbourhoodEnum { CENTRAL_NEW_YORK_CITY, MIDTOWN_EAST, MIDTOWN_SOUTH, MIDTOWN, MIDTOWN_WEST }

final neighbourhoodEnumValues = EnumValues({
    "Central New York City": NeighbourhoodEnum.CENTRAL_NEW_YORK_CITY,
    "Midtown": NeighbourhoodEnum.MIDTOWN,
    "Midtown East": NeighbourhoodEnum.MIDTOWN_EAST,
    "Midtown South": NeighbourhoodEnum.MIDTOWN_SOUTH,
    "Midtown West": NeighbourhoodEnum.MIDTOWN_WEST
});

enum PimmsAttributes { D13_TESCO, PRICE_RANGE_CA_TESCO, TESCO, PRICE_RANGE_AU_TESCO }

final pimmsAttributesValues = EnumValues({
    "D13|TESCO": PimmsAttributes.D13_TESCO,
    "priceRangeAU|TESCO": PimmsAttributes.PRICE_RANGE_AU_TESCO,
    "priceRangeCA|TESCO": PimmsAttributes.PRICE_RANGE_CA_TESCO,
    "TESCO": PimmsAttributes.TESCO
});

enum ProviderType { LOCAL, MULTISOURCE }

final providerTypeValues = EnumValues({
    "LOCAL": ProviderType.LOCAL,
    "MULTISOURCE": ProviderType.MULTISOURCE
});

class RatePlan {
    RatePlanPrice price;
    Features features;

    RatePlan({
        this.price,
        this.features,
    });

    factory RatePlan.fromJson(Map<String, dynamic> json) => RatePlan(
        price: RatePlanPrice.fromJson(json["price"]),
        features: Features.fromJson(json["features"]),
    );

    Map<String, dynamic> toJson() => {
        "price": price.toJson(),
        "features": features.toJson(),
    };
}

class Features {
    bool paymentPreference;
    bool noCcRequired;

    Features({
        this.paymentPreference,
        this.noCcRequired,
    });

    factory Features.fromJson(Map<String, dynamic> json) => Features(
        paymentPreference: json["paymentPreference"],
        noCcRequired: json["noCCRequired"],
    );

    Map<String, dynamic> toJson() => {
        "paymentPreference": paymentPreference,
        "noCCRequired": noCcRequired,
    };
}

class RatePlanPrice {
    String current;
    double exactCurrent;
    String old;

    RatePlanPrice({
        this.current,
        this.exactCurrent,
        this.old,
    });

    factory RatePlanPrice.fromJson(Map<String, dynamic> json) => RatePlanPrice(
        current: json["current"],
        exactCurrent: json["exactCurrent"].toDouble(),
        old: json["old"] == null ? null : json["old"],
    );

    Map<String, dynamic> toJson() => {
        "current": current,
        "exactCurrent": exactCurrent,
        "old": old == null ? null : old,
    };
}

class Sponsored {
    String impressionTrackingUrl;
    String clickTrackingUrl;

    Sponsored({
        this.impressionTrackingUrl,
        this.clickTrackingUrl,
    });

    factory Sponsored.fromJson(Map<String, dynamic> json) => Sponsored(
        impressionTrackingUrl: json["impressionTrackingUrl"],
        clickTrackingUrl: json["clickTrackingUrl"],
    );

    Map<String, dynamic> toJson() => {
        "impressionTrackingUrl": impressionTrackingUrl,
        "clickTrackingUrl": clickTrackingUrl,
    };
}

class SortResults {
    bool defaultSortApplied;
    List<Option> options;
    int distanceOptionLandmarkId;

    SortResults({
        this.defaultSortApplied,
        this.options,
        this.distanceOptionLandmarkId,
    });

    factory SortResults.fromJson(Map<String, dynamic> json) => SortResults(
        defaultSortApplied: json["defaultSortApplied"],
        options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        distanceOptionLandmarkId: json["distanceOptionLandmarkId"],
    );

    Map<String, dynamic> toJson() => {
        "defaultSortApplied": defaultSortApplied,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "distanceOptionLandmarkId": distanceOptionLandmarkId,
    };
}

class Option {
    String label;
    String itemMeta;
    List<OptionChoice> choices;
    List<EnhancedChoice> enhancedChoices;
    String selectedChoiceLabel;

    Option({
        this.label,
        this.itemMeta,
        this.choices,
        this.enhancedChoices,
        this.selectedChoiceLabel,
    });

    factory Option.fromJson(Map<String, dynamic> json) => Option(
        label: json["label"],
        itemMeta: json["itemMeta"],
        choices: List<OptionChoice>.from(json["choices"].map((x) => OptionChoice.fromJson(x))),
        enhancedChoices: List<EnhancedChoice>.from(json["enhancedChoices"].map((x) => EnhancedChoice.fromJson(x))),
        selectedChoiceLabel: json["selectedChoiceLabel"] == null ? null : json["selectedChoiceLabel"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "itemMeta": itemMeta,
        "choices": List<dynamic>.from(choices.map((x) => x.toJson())),
        "enhancedChoices": List<dynamic>.from(enhancedChoices.map((x) => x.toJson())),
        "selectedChoiceLabel": selectedChoiceLabel == null ? null : selectedChoiceLabel,
    };
}

class OptionChoice {
    String label;
    String value;
    bool selected;

    OptionChoice({
        this.label,
        this.value,
        this.selected,
    });

    factory OptionChoice.fromJson(Map<String, dynamic> json) => OptionChoice(
        label: json["label"],
        value: json["value"],
        selected: json["selected"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
        "selected": selected,
    };
}

class EnhancedChoice {
    String label;
    String itemMeta;
    List<EnhancedChoiceChoice> choices;

    EnhancedChoice({
        this.label,
        this.itemMeta,
        this.choices,
    });

    factory EnhancedChoice.fromJson(Map<String, dynamic> json) => EnhancedChoice(
        label: json["label"],
        itemMeta: json["itemMeta"],
        choices: List<EnhancedChoiceChoice>.from(json["choices"].map((x) => EnhancedChoiceChoice.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "itemMeta": itemMeta,
        "choices": List<dynamic>.from(choices.map((x) => x.toJson())),
    };
}

class EnhancedChoiceChoice {
    String label;
    int id;

    EnhancedChoiceChoice({
        this.label,
        this.id,
    });

    factory EnhancedChoiceChoice.fromJson(Map<String, dynamic> json) => EnhancedChoiceChoice(
        label: json["label"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "id": id,
    };
}

class Common {
    CommonPointOfSale pointOfSale;
    Tracking tracking;

    Common({
        this.pointOfSale,
        this.tracking,
    });

    factory Common.fromJson(Map<String, dynamic> json) => Common(
        pointOfSale: CommonPointOfSale.fromJson(json["pointOfSale"]),
        tracking: Tracking.fromJson(json["tracking"]),
    );

    Map<String, dynamic> toJson() => {
        "pointOfSale": pointOfSale.toJson(),
        "tracking": tracking.toJson(),
    };
}

class CommonPointOfSale {
    String numberSeparators;
    String brandName;

    CommonPointOfSale({
        this.numberSeparators,
        this.brandName,
    });

    factory CommonPointOfSale.fromJson(Map<String, dynamic> json) => CommonPointOfSale(
        numberSeparators: json["numberSeparators"],
        brandName: json["brandName"],
    );

    Map<String, dynamic> toJson() => {
        "numberSeparators": numberSeparators,
        "brandName": brandName,
    };
}

class Tracking {
    Omniture omniture;

    Tracking({
        this.omniture,
    });

    factory Tracking.fromJson(Map<String, dynamic> json) => Tracking(
        omniture: Omniture.fromJson(json["omniture"]),
    );

    Map<String, dynamic> toJson() => {
        "omniture": omniture.toJson(),
    };
}

class Omniture {
    String sProp33;
    String sProp32;
    String sProp74;
    String sProducts;
    String sEVar16;
    String sEVar40;
    String sEVar41;
    String sEVar63;
    String sEVar42;
    String sEVar4;
    String sEVar43;
    String sEVar2;
    String sEVar24;
    String sEVar7;
    String sServer;
    String sEVar6;
    String sProp29;
    String sProp27;
    String sEVar9;
    String sEVar69;
    String sCurrencyCode;
    String sEVar29;
    String sProp9;
    String sProp8;
    String sEVar95;
    String sProp7;
    String sEVar31;
    String sEVar32;
    String sEVar33;
    String sEVar34;
    String sEVar13;
    String sEvents;
    String sProp18;
    String sProp5;
    String sProp15;
    String sProp3;
    String sProp14;
    String sProp36;
    String sEVar93;
    String sProp2;

    Omniture({
        this.sProp33,
        this.sProp32,
        this.sProp74,
        this.sProducts,
        this.sEVar16,
        this.sEVar40,
        this.sEVar41,
        this.sEVar63,
        this.sEVar42,
        this.sEVar4,
        this.sEVar43,
        this.sEVar2,
        this.sEVar24,
        this.sEVar7,
        this.sServer,
        this.sEVar6,
        this.sProp29,
        this.sProp27,
        this.sEVar9,
        this.sEVar69,
        this.sCurrencyCode,
        this.sEVar29,
        this.sProp9,
        this.sProp8,
        this.sEVar95,
        this.sProp7,
        this.sEVar31,
        this.sEVar32,
        this.sEVar33,
        this.sEVar34,
        this.sEVar13,
        this.sEvents,
        this.sProp18,
        this.sProp5,
        this.sProp15,
        this.sProp3,
        this.sProp14,
        this.sProp36,
        this.sEVar93,
        this.sProp2,
    });

    factory Omniture.fromJson(Map<String, dynamic> json) => Omniture(
        sProp33: json["s.prop33"],
        sProp32: json["s.prop32"],
        sProp74: json["s.prop74"],
        sProducts: json["s.products"],
        sEVar16: json["s.eVar16"],
        sEVar40: json["s.eVar40"],
        sEVar41: json["s.eVar41"],
        sEVar63: json["s.eVar63"],
        sEVar42: json["s.eVar42"],
        sEVar4: json["s.eVar4"],
        sEVar43: json["s.eVar43"],
        sEVar2: json["s.eVar2"],
        sEVar24: json["s.eVar24"],
        sEVar7: json["s.eVar7"],
        sServer: json["s.server"],
        sEVar6: json["s.eVar6"],
        sProp29: json["s.prop29"],
        sProp27: json["s.prop27"],
        sEVar9: json["s.eVar9"],
        sEVar69: json["s.eVar69"],
        sCurrencyCode: json["s.currencyCode"],
        sEVar29: json["s.eVar29"],
        sProp9: json["s.prop9"],
        sProp8: json["s.prop8"],
        sEVar95: json["s.eVar95"],
        sProp7: json["s.prop7"],
        sEVar31: json["s.eVar31"],
        sEVar32: json["s.eVar32"],
        sEVar33: json["s.eVar33"],
        sEVar34: json["s.eVar34"],
        sEVar13: json["s.eVar13"],
        sEvents: json["s.events"],
        sProp18: json["s.prop18"],
        sProp5: json["s.prop5"],
        sProp15: json["s.prop15"],
        sProp3: json["s.prop3"],
        sProp14: json["s.prop14"],
        sProp36: json["s.prop36"],
        sEVar93: json["s.eVar93"],
        sProp2: json["s.prop2"],
    );

    Map<String, dynamic> toJson() => {
        "s.prop33": sProp33,
        "s.prop32": sProp32,
        "s.prop74": sProp74,
        "s.products": sProducts,
        "s.eVar16": sEVar16,
        "s.eVar40": sEVar40,
        "s.eVar41": sEVar41,
        "s.eVar63": sEVar63,
        "s.eVar42": sEVar42,
        "s.eVar4": sEVar4,
        "s.eVar43": sEVar43,
        "s.eVar2": sEVar2,
        "s.eVar24": sEVar24,
        "s.eVar7": sEVar7,
        "s.server": sServer,
        "s.eVar6": sEVar6,
        "s.prop29": sProp29,
        "s.prop27": sProp27,
        "s.eVar9": sEVar9,
        "s.eVar69": sEVar69,
        "s.currencyCode": sCurrencyCode,
        "s.eVar29": sEVar29,
        "s.prop9": sProp9,
        "s.prop8": sProp8,
        "s.eVar95": sEVar95,
        "s.prop7": sProp7,
        "s.eVar31": sEVar31,
        "s.eVar32": sEVar32,
        "s.eVar33": sEVar33,
        "s.eVar34": sEVar34,
        "s.eVar13": sEVar13,
        "s.events": sEvents,
        "s.prop18": sProp18,
        "s.prop5": sProp5,
        "s.prop15": sProp15,
        "s.prop3": sProp3,
        "s.prop14": sProp14,
        "s.prop36": sProp36,
        "s.eVar93": sEVar93,
        "s.prop2": sProp2,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
