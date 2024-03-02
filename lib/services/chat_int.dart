import 'package:ai_generator/models/chat_message.dart';
import 'package:ai_generator/util/constants.dart';
import 'package:dio/dio.dart';

class CosmicConvo {
  static chatTextGenerationRepo(List<ChatMessageModel> previousMessage) async {
    Dio dio = Dio();

    final response = dio.post(
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.0-pro:generateContent?key=$apiKey');
  }
}
