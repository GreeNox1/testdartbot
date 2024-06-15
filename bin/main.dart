import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() async {

  String botToken = "6819198884:AAGINW9lNFdFRiM0nyEkxFLLcQoFFJWbT4M";
  final username = (await Telegram(botToken).getMe()).username;
  TeleDart bot = TeleDart(botToken, Event(username!));

  bot.start();

  bot.onCommand().listen((command) {
    command.reply("Hello");
  });

}
