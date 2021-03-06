import 'dart:io';

import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'moor_database.g.dart';

class Books extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get titleKana => text()();
  TextColumn get author => text()();
  TextColumn get authorKana => text()();
  TextColumn get publisherName => text()();
  TextColumn get size => text()();
  TextColumn get isbn => text()();
  TextColumn get itemCaption => text()();
  TextColumn get salesDate => text()();
  IntColumn get itemPrice => integer().withDefault(Constant(0))();
  TextColumn get itemUrl => text()();
  TextColumn get smallImageUrl => text()();
  TextColumn get mediumImageUrl => text()();
  TextColumn get largeImageUrl => text()();
  IntColumn get reviewCount => integer().withDefault(Constant(0))();
  TextColumn get reviewAverage => text().nullable()();
  BoolColumn get hasRead => boolean().withDefault(Constant(false))();
  TextColumn get note => text().nullable()();
  DateTimeColumn get registerTime => dateTime()();
  DateTimeColumn get completeDate => dateTime().nullable()();
  IntColumn get myRate => integer().withDefault(Constant(0))();
  TextColumn get tags => text().nullable()();
  IntColumn get status => integer().withDefault(Constant(0))();
  IntColumn get readNum => integer().withDefault(Constant(0))();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'shelfdb.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Books])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /// 生成されたidを返す
  Future<int> addBook(BooksCompanion entry) {
    return into(books).insert(entry);
  }

  Future<List<Book>> get allBooksEntries => select(books).get();
}