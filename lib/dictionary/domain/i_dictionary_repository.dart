import 'word.dart';

/// Describes the repository to work with dictionary database
abstract class IDictionaryRepository {
  /// Gets [List<Word>] of words from database.
  Future<List<Word>> readAll();

  ///Gets Specific subset of [List<Word>] by `search term`
  Future<List<Word>> search(String search);
}
