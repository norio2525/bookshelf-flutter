// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String title;
  final String titleKana;
  final String author;
  final String authorKana;
  final String publisherName;
  final String size;
  final String isbn;
  final String itemCaption;
  final String salesDate;
  final int itemPrice;
  final String itemUrl;
  final String smallImageUrl;
  final String mediumImageUrl;
  final String largeImageUrl;
  final int reviewCount;
  final String reviewAverage;
  final bool hasRead;
  final String note;
  final DateTime registerTime;
  final DateTime completeDate;
  final int myRate;
  final String tags;
  final int status;
  final int readNum;
  Book(
      {@required this.id,
      @required this.title,
      @required this.titleKana,
      @required this.author,
      @required this.authorKana,
      @required this.publisherName,
      @required this.size,
      @required this.isbn,
      @required this.itemCaption,
      @required this.salesDate,
      @required this.itemPrice,
      @required this.itemUrl,
      @required this.smallImageUrl,
      @required this.mediumImageUrl,
      @required this.largeImageUrl,
      @required this.reviewCount,
      this.reviewAverage,
      @required this.hasRead,
      this.note,
      @required this.registerTime,
      this.completeDate,
      @required this.myRate,
      this.tags,
      @required this.status,
      @required this.readNum});
  factory Book.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Book(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      titleKana: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}title_kana']),
      author:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}author']),
      authorKana: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}author_kana']),
      publisherName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}publisher_name']),
      size: stringType.mapFromDatabaseResponse(data['${effectivePrefix}size']),
      isbn: stringType.mapFromDatabaseResponse(data['${effectivePrefix}isbn']),
      itemCaption: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_caption']),
      salesDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sales_date']),
      itemPrice:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}item_price']),
      itemUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_url']),
      smallImageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}small_image_url']),
      mediumImageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}medium_image_url']),
      largeImageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}large_image_url']),
      reviewCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}review_count']),
      reviewAverage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}review_average']),
      hasRead:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}has_read']),
      note: stringType.mapFromDatabaseResponse(data['${effectivePrefix}note']),
      registerTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}register_time']),
      completeDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}complete_date']),
      myRate:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}my_rate']),
      tags: stringType.mapFromDatabaseResponse(data['${effectivePrefix}tags']),
      status: intType.mapFromDatabaseResponse(data['${effectivePrefix}status']),
      readNum:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}read_num']),
    );
  }
  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      titleKana: serializer.fromJson<String>(json['titleKana']),
      author: serializer.fromJson<String>(json['author']),
      authorKana: serializer.fromJson<String>(json['authorKana']),
      publisherName: serializer.fromJson<String>(json['publisherName']),
      size: serializer.fromJson<String>(json['size']),
      isbn: serializer.fromJson<String>(json['isbn']),
      itemCaption: serializer.fromJson<String>(json['itemCaption']),
      salesDate: serializer.fromJson<String>(json['salesDate']),
      itemPrice: serializer.fromJson<int>(json['itemPrice']),
      itemUrl: serializer.fromJson<String>(json['itemUrl']),
      smallImageUrl: serializer.fromJson<String>(json['smallImageUrl']),
      mediumImageUrl: serializer.fromJson<String>(json['mediumImageUrl']),
      largeImageUrl: serializer.fromJson<String>(json['largeImageUrl']),
      reviewCount: serializer.fromJson<int>(json['reviewCount']),
      reviewAverage: serializer.fromJson<String>(json['reviewAverage']),
      hasRead: serializer.fromJson<bool>(json['hasRead']),
      note: serializer.fromJson<String>(json['note']),
      registerTime: serializer.fromJson<DateTime>(json['registerTime']),
      completeDate: serializer.fromJson<DateTime>(json['completeDate']),
      myRate: serializer.fromJson<int>(json['myRate']),
      tags: serializer.fromJson<String>(json['tags']),
      status: serializer.fromJson<int>(json['status']),
      readNum: serializer.fromJson<int>(json['readNum']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'titleKana': serializer.toJson<String>(titleKana),
      'author': serializer.toJson<String>(author),
      'authorKana': serializer.toJson<String>(authorKana),
      'publisherName': serializer.toJson<String>(publisherName),
      'size': serializer.toJson<String>(size),
      'isbn': serializer.toJson<String>(isbn),
      'itemCaption': serializer.toJson<String>(itemCaption),
      'salesDate': serializer.toJson<String>(salesDate),
      'itemPrice': serializer.toJson<int>(itemPrice),
      'itemUrl': serializer.toJson<String>(itemUrl),
      'smallImageUrl': serializer.toJson<String>(smallImageUrl),
      'mediumImageUrl': serializer.toJson<String>(mediumImageUrl),
      'largeImageUrl': serializer.toJson<String>(largeImageUrl),
      'reviewCount': serializer.toJson<int>(reviewCount),
      'reviewAverage': serializer.toJson<String>(reviewAverage),
      'hasRead': serializer.toJson<bool>(hasRead),
      'note': serializer.toJson<String>(note),
      'registerTime': serializer.toJson<DateTime>(registerTime),
      'completeDate': serializer.toJson<DateTime>(completeDate),
      'myRate': serializer.toJson<int>(myRate),
      'tags': serializer.toJson<String>(tags),
      'status': serializer.toJson<int>(status),
      'readNum': serializer.toJson<int>(readNum),
    };
  }

  @override
  BooksCompanion createCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      titleKana: titleKana == null && nullToAbsent
          ? const Value.absent()
          : Value(titleKana),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      authorKana: authorKana == null && nullToAbsent
          ? const Value.absent()
          : Value(authorKana),
      publisherName: publisherName == null && nullToAbsent
          ? const Value.absent()
          : Value(publisherName),
      size: size == null && nullToAbsent ? const Value.absent() : Value(size),
      isbn: isbn == null && nullToAbsent ? const Value.absent() : Value(isbn),
      itemCaption: itemCaption == null && nullToAbsent
          ? const Value.absent()
          : Value(itemCaption),
      salesDate: salesDate == null && nullToAbsent
          ? const Value.absent()
          : Value(salesDate),
      itemPrice: itemPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(itemPrice),
      itemUrl: itemUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(itemUrl),
      smallImageUrl: smallImageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(smallImageUrl),
      mediumImageUrl: mediumImageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(mediumImageUrl),
      largeImageUrl: largeImageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(largeImageUrl),
      reviewCount: reviewCount == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewCount),
      reviewAverage: reviewAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewAverage),
      hasRead: hasRead == null && nullToAbsent
          ? const Value.absent()
          : Value(hasRead),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      registerTime: registerTime == null && nullToAbsent
          ? const Value.absent()
          : Value(registerTime),
      completeDate: completeDate == null && nullToAbsent
          ? const Value.absent()
          : Value(completeDate),
      myRate:
          myRate == null && nullToAbsent ? const Value.absent() : Value(myRate),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      readNum: readNum == null && nullToAbsent
          ? const Value.absent()
          : Value(readNum),
    );
  }

  Book copyWith(
          {int id,
          String title,
          String titleKana,
          String author,
          String authorKana,
          String publisherName,
          String size,
          String isbn,
          String itemCaption,
          String salesDate,
          int itemPrice,
          String itemUrl,
          String smallImageUrl,
          String mediumImageUrl,
          String largeImageUrl,
          int reviewCount,
          String reviewAverage,
          bool hasRead,
          String note,
          DateTime registerTime,
          DateTime completeDate,
          int myRate,
          String tags,
          int status,
          int readNum}) =>
      Book(
        id: id ?? this.id,
        title: title ?? this.title,
        titleKana: titleKana ?? this.titleKana,
        author: author ?? this.author,
        authorKana: authorKana ?? this.authorKana,
        publisherName: publisherName ?? this.publisherName,
        size: size ?? this.size,
        isbn: isbn ?? this.isbn,
        itemCaption: itemCaption ?? this.itemCaption,
        salesDate: salesDate ?? this.salesDate,
        itemPrice: itemPrice ?? this.itemPrice,
        itemUrl: itemUrl ?? this.itemUrl,
        smallImageUrl: smallImageUrl ?? this.smallImageUrl,
        mediumImageUrl: mediumImageUrl ?? this.mediumImageUrl,
        largeImageUrl: largeImageUrl ?? this.largeImageUrl,
        reviewCount: reviewCount ?? this.reviewCount,
        reviewAverage: reviewAverage ?? this.reviewAverage,
        hasRead: hasRead ?? this.hasRead,
        note: note ?? this.note,
        registerTime: registerTime ?? this.registerTime,
        completeDate: completeDate ?? this.completeDate,
        myRate: myRate ?? this.myRate,
        tags: tags ?? this.tags,
        status: status ?? this.status,
        readNum: readNum ?? this.readNum,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleKana: $titleKana, ')
          ..write('author: $author, ')
          ..write('authorKana: $authorKana, ')
          ..write('publisherName: $publisherName, ')
          ..write('size: $size, ')
          ..write('isbn: $isbn, ')
          ..write('itemCaption: $itemCaption, ')
          ..write('salesDate: $salesDate, ')
          ..write('itemPrice: $itemPrice, ')
          ..write('itemUrl: $itemUrl, ')
          ..write('smallImageUrl: $smallImageUrl, ')
          ..write('mediumImageUrl: $mediumImageUrl, ')
          ..write('largeImageUrl: $largeImageUrl, ')
          ..write('reviewCount: $reviewCount, ')
          ..write('reviewAverage: $reviewAverage, ')
          ..write('hasRead: $hasRead, ')
          ..write('note: $note, ')
          ..write('registerTime: $registerTime, ')
          ..write('completeDate: $completeDate, ')
          ..write('myRate: $myRate, ')
          ..write('tags: $tags, ')
          ..write('status: $status, ')
          ..write('readNum: $readNum')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              titleKana.hashCode,
              $mrjc(
                  author.hashCode,
                  $mrjc(
                      authorKana.hashCode,
                      $mrjc(
                          publisherName.hashCode,
                          $mrjc(
                              size.hashCode,
                              $mrjc(
                                  isbn.hashCode,
                                  $mrjc(
                                      itemCaption.hashCode,
                                      $mrjc(
                                          salesDate.hashCode,
                                          $mrjc(
                                              itemPrice.hashCode,
                                              $mrjc(
                                                  itemUrl.hashCode,
                                                  $mrjc(
                                                      smallImageUrl.hashCode,
                                                      $mrjc(
                                                          mediumImageUrl
                                                              .hashCode,
                                                          $mrjc(
                                                              largeImageUrl
                                                                  .hashCode,
                                                              $mrjc(
                                                                  reviewCount
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      reviewAverage
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          hasRead
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              note.hashCode,
                                                                              $mrjc(registerTime.hashCode, $mrjc(completeDate.hashCode, $mrjc(myRate.hashCode, $mrjc(tags.hashCode, $mrjc(status.hashCode, readNum.hashCode)))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.titleKana == this.titleKana &&
          other.author == this.author &&
          other.authorKana == this.authorKana &&
          other.publisherName == this.publisherName &&
          other.size == this.size &&
          other.isbn == this.isbn &&
          other.itemCaption == this.itemCaption &&
          other.salesDate == this.salesDate &&
          other.itemPrice == this.itemPrice &&
          other.itemUrl == this.itemUrl &&
          other.smallImageUrl == this.smallImageUrl &&
          other.mediumImageUrl == this.mediumImageUrl &&
          other.largeImageUrl == this.largeImageUrl &&
          other.reviewCount == this.reviewCount &&
          other.reviewAverage == this.reviewAverage &&
          other.hasRead == this.hasRead &&
          other.note == this.note &&
          other.registerTime == this.registerTime &&
          other.completeDate == this.completeDate &&
          other.myRate == this.myRate &&
          other.tags == this.tags &&
          other.status == this.status &&
          other.readNum == this.readNum);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> titleKana;
  final Value<String> author;
  final Value<String> authorKana;
  final Value<String> publisherName;
  final Value<String> size;
  final Value<String> isbn;
  final Value<String> itemCaption;
  final Value<String> salesDate;
  final Value<int> itemPrice;
  final Value<String> itemUrl;
  final Value<String> smallImageUrl;
  final Value<String> mediumImageUrl;
  final Value<String> largeImageUrl;
  final Value<int> reviewCount;
  final Value<String> reviewAverage;
  final Value<bool> hasRead;
  final Value<String> note;
  final Value<DateTime> registerTime;
  final Value<DateTime> completeDate;
  final Value<int> myRate;
  final Value<String> tags;
  final Value<int> status;
  final Value<int> readNum;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleKana = const Value.absent(),
    this.author = const Value.absent(),
    this.authorKana = const Value.absent(),
    this.publisherName = const Value.absent(),
    this.size = const Value.absent(),
    this.isbn = const Value.absent(),
    this.itemCaption = const Value.absent(),
    this.salesDate = const Value.absent(),
    this.itemPrice = const Value.absent(),
    this.itemUrl = const Value.absent(),
    this.smallImageUrl = const Value.absent(),
    this.mediumImageUrl = const Value.absent(),
    this.largeImageUrl = const Value.absent(),
    this.reviewCount = const Value.absent(),
    this.reviewAverage = const Value.absent(),
    this.hasRead = const Value.absent(),
    this.note = const Value.absent(),
    this.registerTime = const Value.absent(),
    this.completeDate = const Value.absent(),
    this.myRate = const Value.absent(),
    this.tags = const Value.absent(),
    this.status = const Value.absent(),
    this.readNum = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String titleKana,
    @required String author,
    @required String authorKana,
    @required String publisherName,
    @required String size,
    @required String isbn,
    @required String itemCaption,
    @required String salesDate,
    this.itemPrice = const Value.absent(),
    @required String itemUrl,
    @required String smallImageUrl,
    @required String mediumImageUrl,
    @required String largeImageUrl,
    this.reviewCount = const Value.absent(),
    this.reviewAverage = const Value.absent(),
    this.hasRead = const Value.absent(),
    this.note = const Value.absent(),
    @required DateTime registerTime,
    this.completeDate = const Value.absent(),
    this.myRate = const Value.absent(),
    this.tags = const Value.absent(),
    this.status = const Value.absent(),
    this.readNum = const Value.absent(),
  })  : title = Value(title),
        titleKana = Value(titleKana),
        author = Value(author),
        authorKana = Value(authorKana),
        publisherName = Value(publisherName),
        size = Value(size),
        isbn = Value(isbn),
        itemCaption = Value(itemCaption),
        salesDate = Value(salesDate),
        itemUrl = Value(itemUrl),
        smallImageUrl = Value(smallImageUrl),
        mediumImageUrl = Value(mediumImageUrl),
        largeImageUrl = Value(largeImageUrl),
        registerTime = Value(registerTime);
  BooksCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> titleKana,
      Value<String> author,
      Value<String> authorKana,
      Value<String> publisherName,
      Value<String> size,
      Value<String> isbn,
      Value<String> itemCaption,
      Value<String> salesDate,
      Value<int> itemPrice,
      Value<String> itemUrl,
      Value<String> smallImageUrl,
      Value<String> mediumImageUrl,
      Value<String> largeImageUrl,
      Value<int> reviewCount,
      Value<String> reviewAverage,
      Value<bool> hasRead,
      Value<String> note,
      Value<DateTime> registerTime,
      Value<DateTime> completeDate,
      Value<int> myRate,
      Value<String> tags,
      Value<int> status,
      Value<int> readNum}) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      titleKana: titleKana ?? this.titleKana,
      author: author ?? this.author,
      authorKana: authorKana ?? this.authorKana,
      publisherName: publisherName ?? this.publisherName,
      size: size ?? this.size,
      isbn: isbn ?? this.isbn,
      itemCaption: itemCaption ?? this.itemCaption,
      salesDate: salesDate ?? this.salesDate,
      itemPrice: itemPrice ?? this.itemPrice,
      itemUrl: itemUrl ?? this.itemUrl,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      mediumImageUrl: mediumImageUrl ?? this.mediumImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
      reviewCount: reviewCount ?? this.reviewCount,
      reviewAverage: reviewAverage ?? this.reviewAverage,
      hasRead: hasRead ?? this.hasRead,
      note: note ?? this.note,
      registerTime: registerTime ?? this.registerTime,
      completeDate: completeDate ?? this.completeDate,
      myRate: myRate ?? this.myRate,
      tags: tags ?? this.tags,
      status: status ?? this.status,
      readNum: readNum ?? this.readNum,
    );
  }
}

class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  final GeneratedDatabase _db;
  final String _alias;
  $BooksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleKanaMeta = const VerificationMeta('titleKana');
  GeneratedTextColumn _titleKana;
  @override
  GeneratedTextColumn get titleKana => _titleKana ??= _constructTitleKana();
  GeneratedTextColumn _constructTitleKana() {
    return GeneratedTextColumn(
      'title_kana',
      $tableName,
      false,
    );
  }

  final VerificationMeta _authorMeta = const VerificationMeta('author');
  GeneratedTextColumn _author;
  @override
  GeneratedTextColumn get author => _author ??= _constructAuthor();
  GeneratedTextColumn _constructAuthor() {
    return GeneratedTextColumn(
      'author',
      $tableName,
      false,
    );
  }

  final VerificationMeta _authorKanaMeta = const VerificationMeta('authorKana');
  GeneratedTextColumn _authorKana;
  @override
  GeneratedTextColumn get authorKana => _authorKana ??= _constructAuthorKana();
  GeneratedTextColumn _constructAuthorKana() {
    return GeneratedTextColumn(
      'author_kana',
      $tableName,
      false,
    );
  }

  final VerificationMeta _publisherNameMeta =
      const VerificationMeta('publisherName');
  GeneratedTextColumn _publisherName;
  @override
  GeneratedTextColumn get publisherName =>
      _publisherName ??= _constructPublisherName();
  GeneratedTextColumn _constructPublisherName() {
    return GeneratedTextColumn(
      'publisher_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sizeMeta = const VerificationMeta('size');
  GeneratedTextColumn _size;
  @override
  GeneratedTextColumn get size => _size ??= _constructSize();
  GeneratedTextColumn _constructSize() {
    return GeneratedTextColumn(
      'size',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isbnMeta = const VerificationMeta('isbn');
  GeneratedTextColumn _isbn;
  @override
  GeneratedTextColumn get isbn => _isbn ??= _constructIsbn();
  GeneratedTextColumn _constructIsbn() {
    return GeneratedTextColumn(
      'isbn',
      $tableName,
      false,
    );
  }

  final VerificationMeta _itemCaptionMeta =
      const VerificationMeta('itemCaption');
  GeneratedTextColumn _itemCaption;
  @override
  GeneratedTextColumn get itemCaption =>
      _itemCaption ??= _constructItemCaption();
  GeneratedTextColumn _constructItemCaption() {
    return GeneratedTextColumn(
      'item_caption',
      $tableName,
      false,
    );
  }

  final VerificationMeta _salesDateMeta = const VerificationMeta('salesDate');
  GeneratedTextColumn _salesDate;
  @override
  GeneratedTextColumn get salesDate => _salesDate ??= _constructSalesDate();
  GeneratedTextColumn _constructSalesDate() {
    return GeneratedTextColumn(
      'sales_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _itemPriceMeta = const VerificationMeta('itemPrice');
  GeneratedIntColumn _itemPrice;
  @override
  GeneratedIntColumn get itemPrice => _itemPrice ??= _constructItemPrice();
  GeneratedIntColumn _constructItemPrice() {
    return GeneratedIntColumn('item_price', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _itemUrlMeta = const VerificationMeta('itemUrl');
  GeneratedTextColumn _itemUrl;
  @override
  GeneratedTextColumn get itemUrl => _itemUrl ??= _constructItemUrl();
  GeneratedTextColumn _constructItemUrl() {
    return GeneratedTextColumn(
      'item_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _smallImageUrlMeta =
      const VerificationMeta('smallImageUrl');
  GeneratedTextColumn _smallImageUrl;
  @override
  GeneratedTextColumn get smallImageUrl =>
      _smallImageUrl ??= _constructSmallImageUrl();
  GeneratedTextColumn _constructSmallImageUrl() {
    return GeneratedTextColumn(
      'small_image_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _mediumImageUrlMeta =
      const VerificationMeta('mediumImageUrl');
  GeneratedTextColumn _mediumImageUrl;
  @override
  GeneratedTextColumn get mediumImageUrl =>
      _mediumImageUrl ??= _constructMediumImageUrl();
  GeneratedTextColumn _constructMediumImageUrl() {
    return GeneratedTextColumn(
      'medium_image_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _largeImageUrlMeta =
      const VerificationMeta('largeImageUrl');
  GeneratedTextColumn _largeImageUrl;
  @override
  GeneratedTextColumn get largeImageUrl =>
      _largeImageUrl ??= _constructLargeImageUrl();
  GeneratedTextColumn _constructLargeImageUrl() {
    return GeneratedTextColumn(
      'large_image_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _reviewCountMeta =
      const VerificationMeta('reviewCount');
  GeneratedIntColumn _reviewCount;
  @override
  GeneratedIntColumn get reviewCount =>
      _reviewCount ??= _constructReviewCount();
  GeneratedIntColumn _constructReviewCount() {
    return GeneratedIntColumn('review_count', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _reviewAverageMeta =
      const VerificationMeta('reviewAverage');
  GeneratedTextColumn _reviewAverage;
  @override
  GeneratedTextColumn get reviewAverage =>
      _reviewAverage ??= _constructReviewAverage();
  GeneratedTextColumn _constructReviewAverage() {
    return GeneratedTextColumn(
      'review_average',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hasReadMeta = const VerificationMeta('hasRead');
  GeneratedBoolColumn _hasRead;
  @override
  GeneratedBoolColumn get hasRead => _hasRead ??= _constructHasRead();
  GeneratedBoolColumn _constructHasRead() {
    return GeneratedBoolColumn('has_read', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _noteMeta = const VerificationMeta('note');
  GeneratedTextColumn _note;
  @override
  GeneratedTextColumn get note => _note ??= _constructNote();
  GeneratedTextColumn _constructNote() {
    return GeneratedTextColumn(
      'note',
      $tableName,
      true,
    );
  }

  final VerificationMeta _registerTimeMeta =
      const VerificationMeta('registerTime');
  GeneratedDateTimeColumn _registerTime;
  @override
  GeneratedDateTimeColumn get registerTime =>
      _registerTime ??= _constructRegisterTime();
  GeneratedDateTimeColumn _constructRegisterTime() {
    return GeneratedDateTimeColumn(
      'register_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _completeDateMeta =
      const VerificationMeta('completeDate');
  GeneratedDateTimeColumn _completeDate;
  @override
  GeneratedDateTimeColumn get completeDate =>
      _completeDate ??= _constructCompleteDate();
  GeneratedDateTimeColumn _constructCompleteDate() {
    return GeneratedDateTimeColumn(
      'complete_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _myRateMeta = const VerificationMeta('myRate');
  GeneratedIntColumn _myRate;
  @override
  GeneratedIntColumn get myRate => _myRate ??= _constructMyRate();
  GeneratedIntColumn _constructMyRate() {
    return GeneratedIntColumn('my_rate', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _tagsMeta = const VerificationMeta('tags');
  GeneratedTextColumn _tags;
  @override
  GeneratedTextColumn get tags => _tags ??= _constructTags();
  GeneratedTextColumn _constructTags() {
    return GeneratedTextColumn(
      'tags',
      $tableName,
      true,
    );
  }

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  GeneratedIntColumn _status;
  @override
  GeneratedIntColumn get status => _status ??= _constructStatus();
  GeneratedIntColumn _constructStatus() {
    return GeneratedIntColumn('status', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _readNumMeta = const VerificationMeta('readNum');
  GeneratedIntColumn _readNum;
  @override
  GeneratedIntColumn get readNum => _readNum ??= _constructReadNum();
  GeneratedIntColumn _constructReadNum() {
    return GeneratedIntColumn('read_num', $tableName, false,
        defaultValue: Constant(0));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        titleKana,
        author,
        authorKana,
        publisherName,
        size,
        isbn,
        itemCaption,
        salesDate,
        itemPrice,
        itemUrl,
        smallImageUrl,
        mediumImageUrl,
        largeImageUrl,
        reviewCount,
        reviewAverage,
        hasRead,
        note,
        registerTime,
        completeDate,
        myRate,
        tags,
        status,
        readNum
      ];
  @override
  $BooksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'books';
  @override
  final String actualTableName = 'books';
  @override
  VerificationContext validateIntegrity(BooksCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.titleKana.present) {
      context.handle(_titleKanaMeta,
          titleKana.isAcceptableValue(d.titleKana.value, _titleKanaMeta));
    } else if (isInserting) {
      context.missing(_titleKanaMeta);
    }
    if (d.author.present) {
      context.handle(
          _authorMeta, author.isAcceptableValue(d.author.value, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (d.authorKana.present) {
      context.handle(_authorKanaMeta,
          authorKana.isAcceptableValue(d.authorKana.value, _authorKanaMeta));
    } else if (isInserting) {
      context.missing(_authorKanaMeta);
    }
    if (d.publisherName.present) {
      context.handle(
          _publisherNameMeta,
          publisherName.isAcceptableValue(
              d.publisherName.value, _publisherNameMeta));
    } else if (isInserting) {
      context.missing(_publisherNameMeta);
    }
    if (d.size.present) {
      context.handle(
          _sizeMeta, size.isAcceptableValue(d.size.value, _sizeMeta));
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (d.isbn.present) {
      context.handle(
          _isbnMeta, isbn.isAcceptableValue(d.isbn.value, _isbnMeta));
    } else if (isInserting) {
      context.missing(_isbnMeta);
    }
    if (d.itemCaption.present) {
      context.handle(_itemCaptionMeta,
          itemCaption.isAcceptableValue(d.itemCaption.value, _itemCaptionMeta));
    } else if (isInserting) {
      context.missing(_itemCaptionMeta);
    }
    if (d.salesDate.present) {
      context.handle(_salesDateMeta,
          salesDate.isAcceptableValue(d.salesDate.value, _salesDateMeta));
    } else if (isInserting) {
      context.missing(_salesDateMeta);
    }
    if (d.itemPrice.present) {
      context.handle(_itemPriceMeta,
          itemPrice.isAcceptableValue(d.itemPrice.value, _itemPriceMeta));
    }
    if (d.itemUrl.present) {
      context.handle(_itemUrlMeta,
          itemUrl.isAcceptableValue(d.itemUrl.value, _itemUrlMeta));
    } else if (isInserting) {
      context.missing(_itemUrlMeta);
    }
    if (d.smallImageUrl.present) {
      context.handle(
          _smallImageUrlMeta,
          smallImageUrl.isAcceptableValue(
              d.smallImageUrl.value, _smallImageUrlMeta));
    } else if (isInserting) {
      context.missing(_smallImageUrlMeta);
    }
    if (d.mediumImageUrl.present) {
      context.handle(
          _mediumImageUrlMeta,
          mediumImageUrl.isAcceptableValue(
              d.mediumImageUrl.value, _mediumImageUrlMeta));
    } else if (isInserting) {
      context.missing(_mediumImageUrlMeta);
    }
    if (d.largeImageUrl.present) {
      context.handle(
          _largeImageUrlMeta,
          largeImageUrl.isAcceptableValue(
              d.largeImageUrl.value, _largeImageUrlMeta));
    } else if (isInserting) {
      context.missing(_largeImageUrlMeta);
    }
    if (d.reviewCount.present) {
      context.handle(_reviewCountMeta,
          reviewCount.isAcceptableValue(d.reviewCount.value, _reviewCountMeta));
    }
    if (d.reviewAverage.present) {
      context.handle(
          _reviewAverageMeta,
          reviewAverage.isAcceptableValue(
              d.reviewAverage.value, _reviewAverageMeta));
    }
    if (d.hasRead.present) {
      context.handle(_hasReadMeta,
          hasRead.isAcceptableValue(d.hasRead.value, _hasReadMeta));
    }
    if (d.note.present) {
      context.handle(
          _noteMeta, note.isAcceptableValue(d.note.value, _noteMeta));
    }
    if (d.registerTime.present) {
      context.handle(
          _registerTimeMeta,
          registerTime.isAcceptableValue(
              d.registerTime.value, _registerTimeMeta));
    } else if (isInserting) {
      context.missing(_registerTimeMeta);
    }
    if (d.completeDate.present) {
      context.handle(
          _completeDateMeta,
          completeDate.isAcceptableValue(
              d.completeDate.value, _completeDateMeta));
    }
    if (d.myRate.present) {
      context.handle(
          _myRateMeta, myRate.isAcceptableValue(d.myRate.value, _myRateMeta));
    }
    if (d.tags.present) {
      context.handle(
          _tagsMeta, tags.isAcceptableValue(d.tags.value, _tagsMeta));
    }
    if (d.status.present) {
      context.handle(
          _statusMeta, status.isAcceptableValue(d.status.value, _statusMeta));
    }
    if (d.readNum.present) {
      context.handle(_readNumMeta,
          readNum.isAcceptableValue(d.readNum.value, _readNumMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Book.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BooksCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.titleKana.present) {
      map['title_kana'] = Variable<String, StringType>(d.titleKana.value);
    }
    if (d.author.present) {
      map['author'] = Variable<String, StringType>(d.author.value);
    }
    if (d.authorKana.present) {
      map['author_kana'] = Variable<String, StringType>(d.authorKana.value);
    }
    if (d.publisherName.present) {
      map['publisher_name'] =
          Variable<String, StringType>(d.publisherName.value);
    }
    if (d.size.present) {
      map['size'] = Variable<String, StringType>(d.size.value);
    }
    if (d.isbn.present) {
      map['isbn'] = Variable<String, StringType>(d.isbn.value);
    }
    if (d.itemCaption.present) {
      map['item_caption'] = Variable<String, StringType>(d.itemCaption.value);
    }
    if (d.salesDate.present) {
      map['sales_date'] = Variable<String, StringType>(d.salesDate.value);
    }
    if (d.itemPrice.present) {
      map['item_price'] = Variable<int, IntType>(d.itemPrice.value);
    }
    if (d.itemUrl.present) {
      map['item_url'] = Variable<String, StringType>(d.itemUrl.value);
    }
    if (d.smallImageUrl.present) {
      map['small_image_url'] =
          Variable<String, StringType>(d.smallImageUrl.value);
    }
    if (d.mediumImageUrl.present) {
      map['medium_image_url'] =
          Variable<String, StringType>(d.mediumImageUrl.value);
    }
    if (d.largeImageUrl.present) {
      map['large_image_url'] =
          Variable<String, StringType>(d.largeImageUrl.value);
    }
    if (d.reviewCount.present) {
      map['review_count'] = Variable<int, IntType>(d.reviewCount.value);
    }
    if (d.reviewAverage.present) {
      map['review_average'] =
          Variable<String, StringType>(d.reviewAverage.value);
    }
    if (d.hasRead.present) {
      map['has_read'] = Variable<bool, BoolType>(d.hasRead.value);
    }
    if (d.note.present) {
      map['note'] = Variable<String, StringType>(d.note.value);
    }
    if (d.registerTime.present) {
      map['register_time'] =
          Variable<DateTime, DateTimeType>(d.registerTime.value);
    }
    if (d.completeDate.present) {
      map['complete_date'] =
          Variable<DateTime, DateTimeType>(d.completeDate.value);
    }
    if (d.myRate.present) {
      map['my_rate'] = Variable<int, IntType>(d.myRate.value);
    }
    if (d.tags.present) {
      map['tags'] = Variable<String, StringType>(d.tags.value);
    }
    if (d.status.present) {
      map['status'] = Variable<int, IntType>(d.status.value);
    }
    if (d.readNum.present) {
      map['read_num'] = Variable<int, IntType>(d.readNum.value);
    }
    return map;
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BooksTable _books;
  $BooksTable get books => _books ??= $BooksTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [books];
}
