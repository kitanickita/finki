import '../domain/i_dictionary_repository.dart';
import '../domain/word.dart';
import 'i_database_service.dart';

class DictionaryRepository implements IDictionaryRepository {
  final IDatabaseService _databaseService;

  DictionaryRepository(this._databaseService);
  @override
  Future<List<Word>> readAll() async {
    final data = await _databaseService.readAll();

    return data.map((e) => e.toDomain()).toList();
  }

  @override
  Future<List<Word>> search(String search) async {
    final data = await _databaseService.search(search);

    return data.map((e) => e.toDomain()).toList();
  }
}
