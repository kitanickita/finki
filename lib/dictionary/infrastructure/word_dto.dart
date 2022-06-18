import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/word.dart';

part 'word_dto.freezed.dart';
part 'word_dto.g.dart';

@freezed
class WordDTO with _$WordDTO {
  const WordDTO._();
  const factory WordDTO({
    /// Word in finnsh language.
    required String word,

    /// translation to the target language
    required String translation,

    /// Details about part of the word (noun, verb)or if it's a special word.
    String? detail,

    ///  Finnish representation of the word if a word is slang or colloquial
    String? bookForm,

    /// Examples of usage in finnish language.
    String? examples,
  }) = _WordDTO;

  /// Converts json to [WordDTO]
  factory WordDTO.fromJson(Map<String, dynamic> json) =>
      _$WordDTOFromJson(json);

  /// Creates entity from dto.
  Word toDomain() => Word(
        word: word,
        translation: translation,
        detail: detail,
        bookForm: bookForm,
        examples: examples,
      );
}
