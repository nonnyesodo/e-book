import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ebook_task/features/home/presentation/bloc/cubit/home_cubit.dart';
import 'package:ebook_task/global_widget/export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late HomeCubit? cubit;
  // late MockFlutterTts flutterTts;

  setUp(() {
    FlutterTts();
    cubit = HomeCubit();
  });

  tearDown(() {
    cubit = null;
  });

  group('test cubit functions for navigation and speech', () {
    test('test page change', () {
      cubit?.changeCurrentPage(page: 2);
      expect(cubit?.currentPage, 2);
    });
    // test('change female voice ', () async {
    //   // Act
    //   await cubit?.changeSpeakerVoice();
    // });
    // test('startReading speaks the book text', () async {
    //   // Arrange
    //   const bookText = 'This is a book text';

    //   // Act
    //   await cubit?.startReading(book: bookText);
    // });
  });
}
