import 'package:bookly_app/Features/home/data/models/safe_convert.dart';

class BooksModel {
  // books#volume
  final String kind;

  // BjsPEAAAQBAJ
  final String id;

  // ODL5mC9YxE4
  final String etag;

  // https://www.googleapis.com/books/v1/volumes/BjsPEAAAQBAJ
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;
  final SearchInfo searchInfo;

  BooksModel({
    this.kind = "",
    this.id = "",
    this.etag = "",
    this.selfLink = "",
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory BooksModel.fromJson(Map<String, dynamic>? json) => BooksModel(
        kind: asT<String>(json, 'kind'),
        id: asT<String>(json, 'id'),
        etag: asT<String>(json, 'etag'),
        selfLink: asT<String>(json, 'selfLink'),
        volumeInfo:
            VolumeInfo.fromJson(asT<Map<String, dynamic>>(json, 'volumeInfo')),
        saleInfo:
            SaleInfo.fromJson(asT<Map<String, dynamic>>(json, 'saleInfo')),
        accessInfo:
            AccessInfo.fromJson(asT<Map<String, dynamic>>(json, 'accessInfo')),
        searchInfo:
            SearchInfo.fromJson(asT<Map<String, dynamic>>(json, 'searchInfo')),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo.toJson(),
        'saleInfo': saleInfo.toJson(),
        'accessInfo': accessInfo.toJson(),
        'searchInfo': searchInfo.toJson(),
      };
}

class VolumeInfo {
  // Dictionary of Computer Science, Engineering and Technology
  final String title;
  final List<String> authors;

  // CRC Press
  final String publisher;

  // 2017-12-19
  final String publishedDate;

  // A complete lexicon of technical information, the Dictionary of Computer Science, Engineering, and Technology provides workable definitions, practical information, and enhances general computer science and engineering literacy. It spans various disciplines and industry sectors such as: telecommunications, information theory, and software and hardware systems. If you work with, or write about computers, this dictionary is the single most important resource you can put on your shelf. The dictionary addresses all aspects of computing and computer technology from multiple perspectives, including the academic, applied, and professional vantage points. Including more than 8,000 terms, it covers all major topics from artificial intelligence to programming languages, from software engineering to operating systems, and from database management to privacy issues. The definitions provided are detailed rather than concise. Written by an international team of over 80 contributors, this is the most comprehensive and easy-to-read reference of its kind. If you need to know the definition of anything related to computers you will find it in the Dictionary of Computer Science, Engineering, and Technology.
  final String description;
  final List<IndustryIdentifiersItem> industryIdentifiers;
  final ReadingModes readingModes;

  // 560
  final int pageCount;

  // BOOK
  final String printType;
  final List<String> categories;

  // NOT_MATURE
  final String maturityRating;
  final num? averageRating;
  final int? ratingsCount;

  // false
  final bool allowAnonLogging;

  // 0.3.2.0.preview.1
  final String contentVersion;
  final PanelizationSummary panelizationSummary;
  final ImageLinks imageLinks;

  // en
  final String language;

  // http://books.google.com.eg/books?id=BjsPEAAAQBAJ&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api
  final String previewLink;

  // http://books.google.com.eg/books?id=BjsPEAAAQBAJ&dq=computer+science&hl=&source=gbs_api
  final String infoLink;

  // https://books.google.com/books/about/Dictionary_of_Computer_Science_Engineeri.html?hl=&id=BjsPEAAAQBAJ
  final String canonicalVolumeLink;

  VolumeInfo({
    this.title = "",
    required this.authors,
    this.publisher = "",
    this.publishedDate = "",
    this.description = "",
    required this.industryIdentifiers,
    required this.readingModes,
    this.pageCount = 0,
    this.printType = "",
    required this.categories,
    this.maturityRating = "",
    this.allowAnonLogging = false,
    this.contentVersion = "",
    required this.panelizationSummary,
    required this.imageLinks,
    this.language = "",
    this.previewLink = "",
    this.infoLink = "",
    this.canonicalVolumeLink = "",
    this.averageRating = 0,
    this.ratingsCount = 0,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic>? json) => VolumeInfo(
        title: asT<String>(json, 'title'),
        authors: asT<List>(json, 'authors').map((e) => e.toString()).toList(),
        publisher: asT<String>(json, 'publisher'),
        publishedDate: asT<String>(json, 'publishedDate'),
        description: asT<String>(json, 'description'),
        industryIdentifiers: asT<List>(json, 'industryIdentifiers')
            .map((e) => IndustryIdentifiersItem.fromJson(e))
            .toList(),
        readingModes: ReadingModes.fromJson(
            asT<Map<String, dynamic>>(json, 'readingModes')),
        pageCount: asT<int>(json, 'pageCount'),
        printType: asT<String>(json, 'printType'),
        categories:
            asT<List>(json, 'categories').map((e) => e.toString()).toList(),
        maturityRating: asT<String>(json, 'maturityRating'),
        averageRating: asT<num>(json, 'averageRating'),
        ratingsCount: asT<int>(json, 'ratingsCount'),
        allowAnonLogging: asT<bool>(json, 'allowAnonLogging'),
        contentVersion: asT<String>(json, 'contentVersion'),
        panelizationSummary: PanelizationSummary.fromJson(
            asT<Map<String, dynamic>>(json, 'panelizationSummary')),
        imageLinks:
            ImageLinks.fromJson(asT<Map<String, dynamic>>(json, 'imageLinks')),
        language: asT<String>(json, 'language'),
        previewLink: asT<String>(json, 'previewLink'),
        infoLink: asT<String>(json, 'infoLink'),
        canonicalVolumeLink: asT<String>(json, 'canonicalVolumeLink'),
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors.map((e) => e).toList(),
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers':
            industryIdentifiers.map((e) => e.toJson()).toList(),
        'readingModes': readingModes.toJson(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories.map((e) => e).toList(),
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary.toJson(),
        'imageLinks': imageLinks.toJson(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };
}

class IndustryIdentifiersItem {
  // ISBN_10
  final String type;

  // 1482274574
  final String identifier;

  IndustryIdentifiersItem({
    this.type = "",
    this.identifier = "",
  });

  factory IndustryIdentifiersItem.fromJson(Map<String, dynamic>? json) =>
      IndustryIdentifiersItem(
        type: asT<String>(json, 'type'),
        identifier: asT<String>(json, 'identifier'),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'identifier': identifier,
      };
}

class ReadingModes {
  // false
  final bool text;

  // true
  final bool image;

  ReadingModes({
    this.text = false,
    this.image = false,
  });

  factory ReadingModes.fromJson(Map<String, dynamic>? json) => ReadingModes(
        text: asT<bool>(json, 'text'),
        image: asT<bool>(json, 'image'),
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'image': image,
      };
}

class PanelizationSummary {
  // false
  final bool containsEpubBubbles;

  // false
  final bool containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles = false,
    this.containsImageBubbles = false,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic>? json) =>
      PanelizationSummary(
        containsEpubBubbles: asT<bool>(json, 'containsEpubBubbles'),
        containsImageBubbles: asT<bool>(json, 'containsImageBubbles'),
      );

  Map<String, dynamic> toJson() => {
        'containsEpubBubbles': containsEpubBubbles,
        'containsImageBubbles': containsImageBubbles,
      };
}

class ImageLinks {
  // http://books.google.com/books/content?id=BjsPEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api
  final String smallThumbnail;

  // http://books.google.com/books/content?id=BjsPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api
  final String thumbnail;

  ImageLinks({
    this.smallThumbnail = "",
    this.thumbnail = "",
  });

  factory ImageLinks.fromJson(Map<String, dynamic>? json) => ImageLinks(
        smallThumbnail: asT<String>(json, 'smallThumbnail'),
        thumbnail: asT<String>(json, 'thumbnail'),
      );

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
      };
}

class SaleInfo {
  // EG
  final String country;

  // NOT_FOR_SALE
  final String saleability;

  // false
  final bool isEbook;

  SaleInfo({
    this.country = "",
    this.saleability = "",
    this.isEbook = false,
  });

  factory SaleInfo.fromJson(Map<String, dynamic>? json) => SaleInfo(
        country: asT<String>(json, 'country'),
        saleability: asT<String>(json, 'saleability'),
        isEbook: asT<bool>(json, 'isEbook'),
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
      };
}

class AccessInfo {
  // EG
  final String country;

  // PARTIAL
  final String viewability;

  // true
  final bool embeddable;

  // false
  final bool publicDomain;

  // ALLOWED
  final String textToSpeechPermission;
  final Epub epub;
  final Pdf pdf;

  // http://play.google.com/books/reader?id=BjsPEAAAQBAJ&hl=&source=gbs_api
  final String webReaderLink;

  // SAMPLE
  final String accessViewStatus;

  // false
  final bool quoteSharingAllowed;

  AccessInfo({
    this.country = "",
    this.viewability = "",
    this.embeddable = false,
    this.publicDomain = false,
    this.textToSpeechPermission = "",
    required this.epub,
    required this.pdf,
    this.webReaderLink = "",
    this.accessViewStatus = "",
    this.quoteSharingAllowed = false,
  });

  factory AccessInfo.fromJson(Map<String, dynamic>? json) => AccessInfo(
        country: asT<String>(json, 'country'),
        viewability: asT<String>(json, 'viewability'),
        embeddable: asT<bool>(json, 'embeddable'),
        publicDomain: asT<bool>(json, 'publicDomain'),
        textToSpeechPermission: asT<String>(json, 'textToSpeechPermission'),
        epub: Epub.fromJson(asT<Map<String, dynamic>>(json, 'epub')),
        pdf: Pdf.fromJson(asT<Map<String, dynamic>>(json, 'pdf')),
        webReaderLink: asT<String>(json, 'webReaderLink'),
        accessViewStatus: asT<String>(json, 'accessViewStatus'),
        quoteSharingAllowed: asT<bool>(json, 'quoteSharingAllowed'),
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'viewability': viewability,
        'embeddable': embeddable,
        'publicDomain': publicDomain,
        'textToSpeechPermission': textToSpeechPermission,
        'epub': epub.toJson(),
        'pdf': pdf.toJson(),
        'webReaderLink': webReaderLink,
        'accessViewStatus': accessViewStatus,
        'quoteSharingAllowed': quoteSharingAllowed,
      };
}

class Epub {
  // false
  final bool isAvailable;

  Epub({
    this.isAvailable = false,
  });

  factory Epub.fromJson(Map<String, dynamic>? json) => Epub(
        isAvailable: asT<bool>(json, 'isAvailable'),
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
      };
}

class Pdf {
  // true
  final bool isAvailable;

  // http://books.google.com.eg/books/download/Dictionary_of_Computer_Science_Engineeri-sample-pdf.acsm?id=BjsPEAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api
  final String acsTokenLink;

  Pdf({
    this.isAvailable = false,
    this.acsTokenLink = "",
  });

  factory Pdf.fromJson(Map<String, dynamic>? json) => Pdf(
        isAvailable: asT<bool>(json, 'isAvailable'),
        acsTokenLink: asT<String>(json, 'acsTokenLink'),
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
        'acsTokenLink': acsTokenLink,
      };
}

class SearchInfo {
  // The definitions provided are detailed rather than concise. Written by an international team of over 80 contributors, this is the most comprehensive and easy-to-read reference of its kind.
  final String textSnippet;

  SearchInfo({
    this.textSnippet = "",
  });

  factory SearchInfo.fromJson(Map<String, dynamic>? json) => SearchInfo(
        textSnippet: asT<String>(json, 'textSnippet'),
      );

  Map<String, dynamic> toJson() => {
        'textSnippet': textSnippet,
      };
}
