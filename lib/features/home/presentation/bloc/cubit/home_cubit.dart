import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:meta/meta.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    changeSpeakerVoice();
  }

  FlutterTts flutterTts = FlutterTts();

  Future<void> changeSpeakerVoice() async {
    emit(HomeLoading());
    // Set language (optional)
    await flutterTts.setLanguage("en-US");
    // Get available voices
    var voices = await flutterTts.getVoices;

    // Find a female voice
    var femaleVoice = voices.firstWhere(
      (voice) {
        log("voice$voice");
        return voice['name'].toString().toLowerCase().contains('female');
      },
      orElse: () => null,
    );

    // Set the female voice if found
    if (femaleVoice != null) {
      await flutterTts.setVoice(
          {"name": femaleVoice['Yuna'], "locale": femaleVoice['ko-KR']});
    } else {
      log("No female voice found. Using default voice.");
    }
    emit(HomeLoaded());
  }

  stopReader({bool pageChange = false}) async {
    emit(HomeLoading());
    await flutterTts.stop();
    if (!pageChange) {
      currentPage = 0;
    }

    emit(HomeLoaded());
  }

  startReading({required String book}) async {
    emit(HomeLoading());
    await flutterTts.speak(book);
    emit(HomeLoaded());
  }

  int currentPage = 0;
  changeCurrentPage({required int page}) async {
    emit(HomeLoading());
    currentPage = page;
    stopReader(pageChange: true);
    emit(HomeLoaded());
  }
}
