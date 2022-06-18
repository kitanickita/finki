import 'word_dto.dart';

/// Describes class that works with database
abstract class IDatabaseService {
  /// Gets [List<Word>] of words from database.
  Future<List<WordDTO>> readAll();

  ///Gets Specific subset of [List<Word>] by `search term`
  Future<List<WordDTO>> search(String search);
}
