import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

/// Represents model of the word for the dictionary.
@freezed
class Word with _$Word {
  const Word._();
  const factory Word({
    /// Word in finnsh language.
    required String word,

    /// translation to the target language
    required String translation,

    /// Details about part of the word (noun, verb)or if it's a special word.
    String? detail,

    ///  Finnish representation of the word if a word is slang or colloquial
    String? bookForm,

    /// Examples of usage in finnish language.
    List<String>? examples,
  }) = _Word;
}
