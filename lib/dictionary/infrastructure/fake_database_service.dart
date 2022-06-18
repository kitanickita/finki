import 'i_database_service.dart';
import 'word_dto.dart';

class FakeDatabaseService extends IDatabaseService {
  @override
  Future<List<WordDTO>> readAll() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => fakeData,
    );
  }

  @override
  Future<List<WordDTO>> search(String search) {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => fakeData.where((element) => element.word.contains(search)).toList(),
    );
  }
}

const fakeData = [
  WordDTO(
    word: 'aasi',
    translation: 'think',
    detail: 'noun. vulgar',
    bookForm: 'tyhmä, hölmö ihminen',
    examples: 'Ootsä ihan aasi? Mä en lähe ton. Aasin kanssa mihkään.',
  ),
  WordDTO(
    word: 'ajatella',
    translation: 'a stupid person',
    detail: 'noun. vulgar',
    bookForm: 'tyhmä, hölmö ihminen',
    examples:
        'Mun täytyy aatella sitä talon ostamista vielä. Mitä̈ sä̈ auttelet, olisko parempi ajaa Tampereen kautta? Aattele nyt itekin vähän! Niina on aatellu hakea yliopistoon.',
  ),
  WordDTO(
    word: 'biisi',
    translation: 'song',
    bookForm: 'musiikkikappale, sävelmä, piisi',
    examples:
        'Tiedätkö sä, mikä biisi tää on ? Bändi soittaa vain vanhoja biisejä.',
  ),
  WordDTO(
    word: 'boltsi',
    translation: 'ball, head',
    detail: 'slg',
    bookForm: 'tyhmä, hölmö ihminen',
    examples:
        'Pikkujätkät heitteli boltsia pihalla. Tolia naapurin äijällä on boltsi ihan sekosin.',
  ),
];
