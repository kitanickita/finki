import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/i_dictionary_repository.dart';
import '../domain/word.dart';
import '../infrastructure/dictionary_repository.dart';

part 'dictionary_notifier.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const DictionaryState._();
  const factory DictionaryState.initial(List<Word> words) = _Initial;
  const factory DictionaryState.loadInProgress(List<Word> words) =
      _LoadInProgress;
  const factory DictionaryState.loadSuccess(List<Word> words) = _LoadSuccess;
}

class DictioanryNotifier extends StateNotifier<DictionaryState> {
  final IDictionaryRepository _repository;
  DictioanryNotifier(this._repository)
      : super(
          const DictionaryState.initial([]),
        );

  /// Gets all all words
  Future<void> getWords() async {
    state = DictionaryState.loadInProgress(state.words);
    // TODO: Add error handling. And maybe pagination.
    final words = await _repository.readAll();

    state = DictionaryState.loadSuccess(words);
  }

  Future<void> findWords(String search) async {
    state = DictionaryState.loadInProgress(state.words);
    // TODO: Add error handling.
    final words = await _repository.search(search);

    state = DictionaryState.loadSuccess(words);
  }
}
