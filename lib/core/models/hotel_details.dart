// To parse this JSON data, do
//
//     final hotelDetails = hotelDetailsFromJson(jsonString);

import 'dart:convert';

HotelDetails hotelDetailsFromJson(String str) => HotelDetails.fromJson(json.decode(str));

String hotelDetailsToJson(HotelDetails data) => json.encode(data.toJson());

class HotelDetails {
    String result;
    Data data;
    Transportation transportation;
    Neighborhood neighborhood;

    HotelDetails({
        this.result,
        this.data,
        this.transportation,
        this.neighborhood,
    });

    factory HotelDetails.fromJson(Map<String, dynamic> json) => HotelDetails(
        result: json["result"],
        data: Data.fromJson(json["data"]),
        transportation: Transportation.fromJson(json["transportation"]),
        neighborhood: Neighborhood.fromJson(json["neighborhood"]),
    );

    Map<String, dynamic> toJson() => {
        "result": result,
        "data": data.toJson(),
        "transportation": transportation.toJson(),
        "neighborhood": neighborhood.toJson(),
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
    PdpHeader pdpHeader;
    Overview overview;
    HotelWelcomeRewards hotelWelcomeRewards;
    PropertyDescription propertyDescription;
    GuestReviews guestReviews;
    AtAGlance atAGlance;
    List<Amenity> amenities;
    SmallPrint smallPrint;
    SpecialFeatures specialFeatures;
    Miscellaneous miscellaneous;
    PageInfo pageInfo;
    bool trustYouReviewsCredit;
    HotelBadge hotelBadge;

    Body({
        this.pdpHeader,
        this.overview,
        this.hotelWelcomeRewards,
        this.propertyDescription,
        this.guestReviews,
        this.atAGlance,
        this.amenities,
        this.smallPrint,
        this.specialFeatures,
        this.miscellaneous,
        this.pageInfo,
        this.trustYouReviewsCredit,
        this.hotelBadge,
    });

    factory Body.fromJson(Map<String, dynamic> json) => Body(
        pdpHeader: PdpHeader.fromJson(json["pdpHeader"]),
        overview: Overview.fromJson(json["overview"]),
        hotelWelcomeRewards: HotelWelcomeRewards.fromJson(json["hotelWelcomeRewards"]),
        propertyDescription: PropertyDescription.fromJson(json["propertyDescription"]),
        guestReviews: GuestReviews.fromJson(json["guestReviews"]),
        atAGlance: AtAGlance.fromJson(json["atAGlance"]),
        amenities: List<Amenity>.from(json["amenities"].map((x) => Amenity.fromJson(x))),
        smallPrint: SmallPrint.fromJson(json["smallPrint"]),
        specialFeatures: SpecialFeatures.fromJson(json["specialFeatures"]),
        miscellaneous: Miscellaneous.fromJson(json["miscellaneous"]),
        pageInfo: PageInfo.fromJson(json["pageInfo"]),
        trustYouReviewsCredit: json["trustYouReviewsCredit"],
        hotelBadge: HotelBadge.fromJson(json["hotelBadge"]),
    );

    Map<String, dynamic> toJson() => {
        "pdpHeader": pdpHeader.toJson(),
        "overview": overview.toJson(),
        "hotelWelcomeRewards": hotelWelcomeRewards.toJson(),
        "propertyDescription": propertyDescription.toJson(),
        "guestReviews": guestReviews.toJson(),
        "atAGlance": atAGlance.toJson(),
        "amenities": List<dynamic>.from(amenities.map((x) => x.toJson())),
        "smallPrint": smallPrint.toJson(),
        "specialFeatures": specialFeatures.toJson(),
        "miscellaneous": miscellaneous.toJson(),
        "pageInfo": pageInfo.toJson(),
        "trustYouReviewsCredit": trustYouReviewsCredit,
        "hotelBadge": hotelBadge.toJson(),
    };
}

class Amenity {
    String heading;
    List<ListItem> listItems;

    Amenity({
        this.heading,
        this.listItems,
    });

    factory Amenity.fromJson(Map<String, dynamic> json) => Amenity(
        heading: json["heading"],
        listItems: List<ListItem>.from(json["listItems"].map((x) => ListItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "heading": heading,
        "listItems": List<dynamic>.from(listItems.map((x) => x.toJson())),
    };
}

class ListItem {
    String heading;
    List<String> listItems;

    ListItem({
        this.heading,
        this.listItems,
    });

    factory ListItem.fromJson(Map<String, dynamic> json) => ListItem(
        heading: json["heading"],
        listItems: List<String>.from(json["listItems"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "heading": heading,
        "listItems": List<dynamic>.from(listItems.map((x) => x)),
    };
}

class AtAGlance {
    KeyFacts keyFacts;
    TravellingOrInternet travellingOrInternet;
    TransportAndOther transportAndOther;

    AtAGlance({
        this.keyFacts,
        this.travellingOrInternet,
        this.transportAndOther,
    });

    factory AtAGlance.fromJson(Map<String, dynamic> json) => AtAGlance(
        keyFacts: KeyFacts.fromJson(json["keyFacts"]),
        travellingOrInternet: TravellingOrInternet.fromJson(json["travellingOrInternet"]),
        transportAndOther: TransportAndOther.fromJson(json["transportAndOther"]),
    );

    Map<String, dynamic> toJson() => {
        "keyFacts": keyFacts.toJson(),
        "travellingOrInternet": travellingOrInternet.toJson(),
        "transportAndOther": transportAndOther.toJson(),
    };
}

class KeyFacts {
    List<String> hotelSize;
    List<String> arrivingLeaving;
    List<dynamic> specialCheckInInstructions;
    List<String> requiredAtCheckIn;

    KeyFacts({
        this.hotelSize,
        this.arrivingLeaving,
        this.specialCheckInInstructions,
        this.requiredAtCheckIn,
    });

    factory KeyFacts.fromJson(Map<String, dynamic> json) => KeyFacts(
        hotelSize: List<String>.from(json["hotelSize"].map((x) => x)),
        arrivingLeaving: List<String>.from(json["arrivingLeaving"].map((x) => x)),
        specialCheckInInstructions: List<dynamic>.from(json["specialCheckInInstructions"].map((x) => x)),
        requiredAtCheckIn: List<String>.from(json["requiredAtCheckIn"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "hotelSize": List<dynamic>.from(hotelSize.map((x) => x)),
        "arrivingLeaving": List<dynamic>.from(arrivingLeaving.map((x) => x)),
        "specialCheckInInstructions": List<dynamic>.from(specialCheckInInstructions.map((x) => x)),
        "requiredAtCheckIn": List<dynamic>.from(requiredAtCheckIn.map((x) => x)),
    };
}

class TransportAndOther {
    Transport transport;
    List<String> otherInformation;
    List<dynamic> otherInclusions;

    TransportAndOther({
        this.transport,
        this.otherInformation,
        this.otherInclusions,
    });

    factory TransportAndOther.fromJson(Map<String, dynamic> json) => TransportAndOther(
        transport: Transport.fromJson(json["transport"]),
        otherInformation: List<String>.from(json["otherInformation"].map((x) => x)),
        otherInclusions: List<dynamic>.from(json["otherInclusions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "transport": transport.toJson(),
        "otherInformation": List<dynamic>.from(otherInformation.map((x) => x)),
        "otherInclusions": List<dynamic>.from(otherInclusions.map((x) => x)),
    };
}

class Transport {
    List<dynamic> transfers;
    List<String> parking;
    List<dynamic> offsiteTransfer;

    Transport({
        this.transfers,
        this.parking,
        this.offsiteTransfer,
    });

    factory Transport.fromJson(Map<String, dynamic> json) => Transport(
        transfers: List<dynamic>.from(json["transfers"].map((x) => x)),
        parking: List<String>.from(json["parking"].map((x) => x)),
        offsiteTransfer: List<dynamic>.from(json["offsiteTransfer"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "transfers": List<dynamic>.from(transfers.map((x) => x)),
        "parking": List<dynamic>.from(parking.map((x) => x)),
        "offsiteTransfer": List<dynamic>.from(offsiteTransfer.map((x) => x)),
    };
}

class TravellingOrInternet {
    Travelling travelling;
    List<String> internet;

    TravellingOrInternet({
        this.travelling,
        this.internet,
    });

    factory TravellingOrInternet.fromJson(Map<String, dynamic> json) => TravellingOrInternet(
        travelling: Travelling.fromJson(json["travelling"]),
        internet: List<String>.from(json["internet"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "travelling": travelling.toJson(),
        "internet": List<dynamic>.from(internet.map((x) => x)),
    };
}

class Travelling {
    List<dynamic> children;
    List<String> pets;
    List<dynamic> extraPeople;

    Travelling({
        this.children,
        this.pets,
        this.extraPeople,
    });

    factory Travelling.fromJson(Map<String, dynamic> json) => Travelling(
        children: List<dynamic>.from(json["children"].map((x) => x)),
        pets: List<String>.from(json["pets"].map((x) => x)),
        extraPeople: List<dynamic>.from(json["extraPeople"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "children": List<dynamic>.from(children.map((x) => x)),
        "pets": List<dynamic>.from(pets.map((x) => x)),
        "extraPeople": List<dynamic>.from(extraPeople.map((x) => x)),
    };
}

class GuestReviews {
    Brands brands;
    List<TrustYouReview> trustYouReviews;

    GuestReviews({
        this.brands,
        this.trustYouReviews,
    });

    factory GuestReviews.fromJson(Map<String, dynamic> json) => GuestReviews(
        brands: Brands.fromJson(json["brands"]),
        trustYouReviews: List<TrustYouReview>.from(json["trustYouReviews"].map((x) => TrustYouReview.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "brands": brands.toJson(),
        "trustYouReviews": List<dynamic>.from(trustYouReviews.map((x) => x.toJson())),
    };
}

class Brands {
    int scale;
    String formattedScale;
    double rating;
    String formattedRating;
    bool lowRating;
    String badgeText;
    int total;

    Brands({
        this.scale,
        this.formattedScale,
        this.rating,
        this.formattedRating,
        this.lowRating,
        this.badgeText,
        this.total,
    });

    factory Brands.fromJson(Map<String, dynamic> json) => Brands(
        scale: json["scale"],
        formattedScale: json["formattedScale"],
        rating: json["rating"].toDouble(),
        formattedRating: json["formattedRating"],
        lowRating: json["lowRating"],
        badgeText: json["badgeText"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "scale": scale,
        "formattedScale": formattedScale,
        "rating": rating,
        "formattedRating": formattedRating,
        "lowRating": lowRating,
        "badgeText": badgeText,
        "total": total,
    };
}

class TrustYouReview {
    String categoryName;
    String percentage;
    String text;
    String sentiment;

    TrustYouReview({
        this.categoryName,
        this.percentage,
        this.text,
        this.sentiment,
    });

    factory TrustYouReview.fromJson(Map<String, dynamic> json) => TrustYouReview(
        categoryName: json["categoryName"],
        percentage: json["percentage"],
        text: json["text"],
        sentiment: json["sentiment"],
    );

    Map<String, dynamic> toJson() => {
        "categoryName": categoryName,
        "percentage": percentage,
        "text": text,
        "sentiment": sentiment,
    };
}

class HotelBadge {
    String type;
    String label;
    String tooltipTitle;
    String tooltipText;

    HotelBadge({
        this.type,
        this.label,
        this.tooltipTitle,
        this.tooltipText,
    });

    factory HotelBadge.fromJson(Map<String, dynamic> json) => HotelBadge(
        type: json["type"],
        label: json["label"],
        tooltipTitle: json["tooltipTitle"],
        tooltipText: json["tooltipText"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "label": label,
        "tooltipTitle": tooltipTitle,
        "tooltipText": tooltipText,
    };
}

class HotelWelcomeRewards {
    bool applies;
    String info;

    HotelWelcomeRewards({
        this.applies,
        this.info,
    });

    factory HotelWelcomeRewards.fromJson(Map<String, dynamic> json) => HotelWelcomeRewards(
        applies: json["applies"],
        info: json["info"],
    );

    Map<String, dynamic> toJson() => {
        "applies": applies,
        "info": info,
    };
}

class Miscellaneous {
    String pimmsAttributes;
    bool showLegalInfoForStrikethroughPrices;

    Miscellaneous({
        this.pimmsAttributes,
        this.showLegalInfoForStrikethroughPrices,
    });

    factory Miscellaneous.fromJson(Map<String, dynamic> json) => Miscellaneous(
        pimmsAttributes: json["pimmsAttributes"],
        showLegalInfoForStrikethroughPrices: json["showLegalInfoForStrikethroughPrices"],
    );

    Map<String, dynamic> toJson() => {
        "pimmsAttributes": pimmsAttributes,
        "showLegalInfoForStrikethroughPrices": showLegalInfoForStrikethroughPrices,
    };
}

class Overview {
    List<OverviewSection> overviewSections;

    Overview({
        this.overviewSections,
    });

    factory Overview.fromJson(Map<String, dynamic> json) => Overview(
        overviewSections: List<OverviewSection>.from(json["overviewSections"].map((x) => OverviewSection.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "overviewSections": List<dynamic>.from(overviewSections.map((x) => x.toJson())),
    };
}

class OverviewSection {
    String title;
    String type;
    List<String> content;
    String contentType;

    OverviewSection({
        this.title,
        this.type,
        this.content,
        this.contentType,
    });

    factory OverviewSection.fromJson(Map<String, dynamic> json) => OverviewSection(
        title: json["title"] == null ? null : json["title"],
        type: json["type"],
        content: List<String>.from(json["content"].map((x) => x)),
        contentType: json["contentType"],
    );

    Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "type": type,
        "content": List<dynamic>.from(content.map((x) => x)),
        "contentType": contentType,
    };
}

class PageInfo {
    String pageType;
    List<dynamic> errors;
    List<dynamic> errorKeys;

    PageInfo({
        this.pageType,
        this.errors,
        this.errorKeys,
    });

    factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        pageType: json["pageType"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
        errorKeys: List<dynamic>.from(json["errorKeys"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "pageType": pageType,
        "errors": List<dynamic>.from(errors.map((x) => x)),
        "errorKeys": List<dynamic>.from(errorKeys.map((x) => x)),
    };
}

class PdpHeader {
    String hotelId;
    String destinationId;
    String pointOfSaleId;
    String currencyCode;
    String occupancyKey;
    HotelLocation hotelLocation;

    PdpHeader({
        this.hotelId,
        this.destinationId,
        this.pointOfSaleId,
        this.currencyCode,
        this.occupancyKey,
        this.hotelLocation,
    });

    factory PdpHeader.fromJson(Map<String, dynamic> json) => PdpHeader(
        hotelId: json["hotelId"],
        destinationId: json["destinationId"],
        pointOfSaleId: json["pointOfSaleId"],
        currencyCode: json["currencyCode"],
        occupancyKey: json["occupancyKey"],
        hotelLocation: HotelLocation.fromJson(json["hotelLocation"]),
    );

    Map<String, dynamic> toJson() => {
        "hotelId": hotelId,
        "destinationId": destinationId,
        "pointOfSaleId": pointOfSaleId,
        "currencyCode": currencyCode,
        "occupancyKey": occupancyKey,
        "hotelLocation": hotelLocation.toJson(),
    };
}

class HotelLocation {
    Coordinates coordinates;
    String resolvedLocation;
    String locationName;

    HotelLocation({
        this.coordinates,
        this.resolvedLocation,
        this.locationName,
    });

    factory HotelLocation.fromJson(Map<String, dynamic> json) => HotelLocation(
        coordinates: Coordinates.fromJson(json["coordinates"]),
        resolvedLocation: json["resolvedLocation"],
        locationName: json["locationName"],
    );

    Map<String, dynamic> toJson() => {
        "coordinates": coordinates.toJson(),
        "resolvedLocation": resolvedLocation,
        "locationName": locationName,
    };
}

class Coordinates {
    double latitude;
    double longitude;

    Coordinates({
        this.latitude,
        this.longitude,
    });

    factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

class PropertyDescription {
    String clientToken;
    Address address;
    bool priceMatchEnabled;
    String name;
    String starRatingTitle;
    int starRating;
    FeaturedPrice featuredPrice;
    MapWidget mapWidget;
    List<String> roomTypeNames;
    List<String> tagline;
    List<String> freebies;

    PropertyDescription({
        this.clientToken,
        this.address,
        this.priceMatchEnabled,
        this.name,
        this.starRatingTitle,
        this.starRating,
        this.featuredPrice,
        this.mapWidget,
        this.roomTypeNames,
        this.tagline,
        this.freebies,
    });

    factory PropertyDescription.fromJson(Map<String, dynamic> json) => PropertyDescription(
        clientToken: json["clientToken"],
        address: Address.fromJson(json["address"]),
        priceMatchEnabled: json["priceMatchEnabled"],
        name: json["name"],
        starRatingTitle: json["starRatingTitle"],
        starRating: json["starRating"],
        featuredPrice: FeaturedPrice.fromJson(json["featuredPrice"]),
        mapWidget: MapWidget.fromJson(json["mapWidget"]),
        roomTypeNames: List<String>.from(json["roomTypeNames"].map((x) => x)),
        tagline: List<String>.from(json["tagline"].map((x) => x)),
        freebies: List<String>.from(json["freebies"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "clientToken": clientToken,
        "address": address.toJson(),
        "priceMatchEnabled": priceMatchEnabled,
        "name": name,
        "starRatingTitle": starRatingTitle,
        "starRating": starRating,
        "featuredPrice": featuredPrice.toJson(),
        "mapWidget": mapWidget.toJson(),
        "roomTypeNames": List<dynamic>.from(roomTypeNames.map((x) => x)),
        "tagline": List<dynamic>.from(tagline.map((x) => x)),
        "freebies": List<dynamic>.from(freebies.map((x) => x)),
    };
}

class Address {
    String countryName;
    String cityName;
    String postalCode;
    String provinceName;
    String addressLine1;
    String countryCode;
    String pattern;
    String fullAddress;

    Address({
        this.countryName,
        this.cityName,
        this.postalCode,
        this.provinceName,
        this.addressLine1,
        this.countryCode,
        this.pattern,
        this.fullAddress,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        countryName: json["countryName"],
        cityName: json["cityName"],
        postalCode: json["postalCode"],
        provinceName: json["provinceName"],
        addressLine1: json["addressLine1"],
        countryCode: json["countryCode"],
        pattern: json["pattern"],
        fullAddress: json["fullAddress"],
    );

    Map<String, dynamic> toJson() => {
        "countryName": countryName,
        "cityName": cityName,
        "postalCode": postalCode,
        "provinceName": provinceName,
        "addressLine1": addressLine1,
        "countryCode": countryCode,
        "pattern": pattern,
        "fullAddress": fullAddress,
    };
}

class FeaturedPrice {
    String beforePriceText;
    String afterPriceText;
    String pricingAvailability;
    String pricingTooltip;
    CurrentPrice currentPrice;
    bool taxInclusiveFormatting;
    bool bookNowButton;

    FeaturedPrice({
        this.beforePriceText,
        this.afterPriceText,
        this.pricingAvailability,
        this.pricingTooltip,
        this.currentPrice,
        this.taxInclusiveFormatting,
        this.bookNowButton,
    });

    factory FeaturedPrice.fromJson(Map<String, dynamic> json) => FeaturedPrice(
        beforePriceText: json["beforePriceText"],
        afterPriceText: json["afterPriceText"],
        pricingAvailability: json["pricingAvailability"],
        pricingTooltip: json["pricingTooltip"],
        currentPrice: CurrentPrice.fromJson(json["currentPrice"]),
        taxInclusiveFormatting: json["taxInclusiveFormatting"],
        bookNowButton: json["bookNowButton"],
    );

    Map<String, dynamic> toJson() => {
        "beforePriceText": beforePriceText,
        "afterPriceText": afterPriceText,
        "pricingAvailability": pricingAvailability,
        "pricingTooltip": pricingTooltip,
        "currentPrice": currentPrice.toJson(),
        "taxInclusiveFormatting": taxInclusiveFormatting,
        "bookNowButton": bookNowButton,
    };
}

class CurrentPrice {
    String formatted;
    int plain;

    CurrentPrice({
        this.formatted,
        this.plain,
    });

    factory CurrentPrice.fromJson(Map<String, dynamic> json) => CurrentPrice(
        formatted: json["formatted"],
        plain: json["plain"],
    );

    Map<String, dynamic> toJson() => {
        "formatted": formatted,
        "plain": plain,
    };
}

class MapWidget {
    String staticMapUrl;

    MapWidget({
        this.staticMapUrl,
    });

    factory MapWidget.fromJson(Map<String, dynamic> json) => MapWidget(
        staticMapUrl: json["staticMapUrl"],
    );

    Map<String, dynamic> toJson() => {
        "staticMapUrl": staticMapUrl,
    };
}

class SmallPrint {
    List<String> alternativeNames;
    List<String> mandatoryFees;
    List<String> optionalExtras;
    List<String> policies;
    bool mandatoryTaxesOrFees;
    bool display;

    SmallPrint({
        this.alternativeNames,
        this.mandatoryFees,
        this.optionalExtras,
        this.policies,
        this.mandatoryTaxesOrFees,
        this.display,
    });

    factory SmallPrint.fromJson(Map<String, dynamic> json) => SmallPrint(
        alternativeNames: List<String>.from(json["alternativeNames"].map((x) => x)),
        mandatoryFees: List<String>.from(json["mandatoryFees"].map((x) => x)),
        optionalExtras: List<String>.from(json["optionalExtras"].map((x) => x)),
        policies: List<String>.from(json["policies"].map((x) => x)),
        mandatoryTaxesOrFees: json["mandatoryTaxesOrFees"],
        display: json["display"],
    );

    Map<String, dynamic> toJson() => {
        "alternativeNames": List<dynamic>.from(alternativeNames.map((x) => x)),
        "mandatoryFees": List<dynamic>.from(mandatoryFees.map((x) => x)),
        "optionalExtras": List<dynamic>.from(optionalExtras.map((x) => x)),
        "policies": List<dynamic>.from(policies.map((x) => x)),
        "mandatoryTaxesOrFees": mandatoryTaxesOrFees,
        "display": display,
    };
}

class SpecialFeatures {
    List<Section> sections;

    SpecialFeatures({
        this.sections,
    });

    factory SpecialFeatures.fromJson(Map<String, dynamic> json) => SpecialFeatures(
        sections: List<Section>.from(json["sections"].map((x) => Section.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
    };
}

class Section {
    String heading;
    String freeText;
    List<dynamic> listItems;
    List<dynamic> subsections;

    Section({
        this.heading,
        this.freeText,
        this.listItems,
        this.subsections,
    });

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        heading: json["heading"],
        freeText: json["freeText"],
        listItems: List<dynamic>.from(json["listItems"].map((x) => x)),
        subsections: List<dynamic>.from(json["subsections"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "heading": heading,
        "freeText": freeText,
        "listItems": List<dynamic>.from(listItems.map((x) => x)),
        "subsections": List<dynamic>.from(subsections.map((x) => x)),
    };
}

class Common {
    PointOfSale pointOfSale;
    Tracking tracking;

    Common({
        this.pointOfSale,
        this.tracking,
    });

    factory Common.fromJson(Map<String, dynamic> json) => Common(
        pointOfSale: PointOfSale.fromJson(json["pointOfSale"]),
        tracking: Tracking.fromJson(json["tracking"]),
    );

    Map<String, dynamic> toJson() => {
        "pointOfSale": pointOfSale.toJson(),
        "tracking": tracking.toJson(),
    };
}

class PointOfSale {
    String numberSeparators;
    String brandName;

    PointOfSale({
        this.numberSeparators,
        this.brandName,
    });

    factory PointOfSale.fromJson(Map<String, dynamic> json) => PointOfSale(
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
    String pageViewBeaconUrl;

    Tracking({
        this.omniture,
        this.pageViewBeaconUrl,
    });

    factory Tracking.fromJson(Map<String, dynamic> json) => Tracking(
        omniture: Omniture.fromJson(json["omniture"]),
        pageViewBeaconUrl: json["pageViewBeaconUrl"],
    );

    Map<String, dynamic> toJson() => {
        "omniture": omniture.toJson(),
        "pageViewBeaconUrl": pageViewBeaconUrl,
    };
}

class Omniture {
    String sProp34;
    String sEVar69;
    String sCurrencyCode;
    String sEVar16;
    String sProducts;
    String sEVar29;
    String sEVar40;
    String sEVar95;
    String sEVar41;
    String sEVar31;
    String sEVar4;
    String sEVar43;
    String sEVar32;
    String sEVar34;
    String sEVar13;
    String sServer;
    String sProp28;
    String sProp27;
    String sProp5;
    String sEVar80;
    String sProp48;
    String sProp36;
    String sEVar93;

    Omniture({
        this.sProp34,
        this.sEVar69,
        this.sCurrencyCode,
        this.sEVar16,
        this.sProducts,
        this.sEVar29,
        this.sEVar40,
        this.sEVar95,
        this.sEVar41,
        this.sEVar31,
        this.sEVar4,
        this.sEVar43,
        this.sEVar32,
        this.sEVar34,
        this.sEVar13,
        this.sServer,
        this.sProp28,
        this.sProp27,
        this.sProp5,
        this.sEVar80,
        this.sProp48,
        this.sProp36,
        this.sEVar93,
    });

    factory Omniture.fromJson(Map<String, dynamic> json) => Omniture(
        sProp34: json["s.prop34"],
        sEVar69: json["s.eVar69"],
        sCurrencyCode: json["s.currencyCode"],
        sEVar16: json["s.eVar16"],
        sProducts: json["s.products"],
        sEVar29: json["s.eVar29"],
        sEVar40: json["s.eVar40"],
        sEVar95: json["s.eVar95"],
        sEVar41: json["s.eVar41"],
        sEVar31: json["s.eVar31"],
        sEVar4: json["s.eVar4"],
        sEVar43: json["s.eVar43"],
        sEVar32: json["s.eVar32"],
        sEVar34: json["s.eVar34"],
        sEVar13: json["s.eVar13"],
        sServer: json["s.server"],
        sProp28: json["s.prop28"],
        sProp27: json["s.prop27"],
        sProp5: json["s.prop5"],
        sEVar80: json["s.eVar80"],
        sProp48: json["s.prop48"],
        sProp36: json["s.prop36"],
        sEVar93: json["s.eVar93"],
    );

    Map<String, dynamic> toJson() => {
        "s.prop34": sProp34,
        "s.eVar69": sEVar69,
        "s.currencyCode": sCurrencyCode,
        "s.eVar16": sEVar16,
        "s.products": sProducts,
        "s.eVar29": sEVar29,
        "s.eVar40": sEVar40,
        "s.eVar95": sEVar95,
        "s.eVar41": sEVar41,
        "s.eVar31": sEVar31,
        "s.eVar4": sEVar4,
        "s.eVar43": sEVar43,
        "s.eVar32": sEVar32,
        "s.eVar34": sEVar34,
        "s.eVar13": sEVar13,
        "s.server": sServer,
        "s.prop28": sProp28,
        "s.prop27": sProp27,
        "s.prop5": sProp5,
        "s.eVar80": sEVar80,
        "s.prop48": sProp48,
        "s.prop36": sProp36,
        "s.eVar93": sEVar93,
    };
}

class Neighborhood {
    String neighborhoodName;

    Neighborhood({
        this.neighborhoodName,
    });

    factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
        neighborhoodName: json["neighborhoodName"],
    );

    Map<String, dynamic> toJson() => {
        "neighborhoodName": neighborhoodName,
    };
}

class Transportation {
    List<TransportLocation> transportLocations;

    Transportation({
        this.transportLocations,
    });

    factory Transportation.fromJson(Map<String, dynamic> json) => Transportation(
        transportLocations: List<TransportLocation>.from(json["transportLocations"].map((x) => TransportLocation.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "transportLocations": List<dynamic>.from(transportLocations.map((x) => x.toJson())),
    };
}

class TransportLocation {
    String category;
    List<Location> locations;

    TransportLocation({
        this.category,
        this.locations,
    });

    factory TransportLocation.fromJson(Map<String, dynamic> json) => TransportLocation(
        category: json["category"],
        locations: List<Location>.from(json["locations"].map((x) => Location.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "category": category,
        "locations": List<dynamic>.from(locations.map((x) => x.toJson())),
    };
}

class Location {
    String name;
    String distance;
    String distanceInTime;

    Location({
        this.name,
        this.distance,
        this.distanceInTime,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        distance: json["distance"],
        distanceInTime: json["distanceInTime"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "distance": distance,
        "distanceInTime": distanceInTime,
    };
}
