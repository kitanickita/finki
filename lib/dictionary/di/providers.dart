import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/dictionary_notifier.dart';
import '../domain/i_dictionary_repository.dart';
import '../infrastructure/dictionary_repository.dart';
import '../infrastructure/fake_database_service.dart';
import '../infrastructure/i_database_service.dart';

final fakeDataBaseServiceProvider = Provider<IDatabaseService>(
  (ref) => FakeDatabaseService(),
);

final dictionaryRepositoryProvider = Provider<IDictionaryRepository>(
  (ref) => DictionaryRepository(ref.read(fakeDataBaseServiceProvider)),
);

final dictionaryStateProvider =
    StateNotifierProvider<DictioanryNotifier, DictionaryState>(
  (ref) => DictioanryNotifier(
    ref.read(dictionaryRepositoryProvider),
  ),
);
