import 'dart:io';

void main() {
  // Uncomment for input with program
  // stdout.write('Masukkan Paragraf anda : ');
  // String? inputParagraph = stdin.readLineSync();

  // stdout.write('Masukkan Kata yang ingin anda hitung : ');
  // String? inputCountWord = stdin.readLineSync();

  String inputParagraph =
      "The bright sun shone brightly in the clear blue sky as I walked through the bustling city streets, surrounded by towering skyscrapers and bustling crowds of people. The vibrant colors of the storefronts and advertisements seemed to pop against the bright blue sky, and the sounds of honking cars and chatter filled the air. As I walked, I couldn't help but feel a sense of excitement and energy, knowing that there was so much to see and do in this vibrant and lively city. Despite the chaos and noise, I felt at home in this bustling metropolis, and I couldn't wait to see what the day had in store for me.";

  // Uncomment for input with program
  // String? task = inputParagraph?.toLowerCase();
  // List<String>? words = task?.split(' ');

  // print("All repeat words : ${repeatWords(inputParagraph!)}");
  // print('Searcing Word : Word bustling appears ${countWords(words!, 'bustling')} times');

  String task = inputParagraph.toLowerCase();
  List<String> words = task.split(' ');

  print("All repeat words : ${repeatWords(inputParagraph)}");

  print(
      'Searcing Word : Word bustling appears ${countWords(words, 'bustling')} times');

  // Uncomment for input with program
  // print('Searcing Word : Word $inputCountWord appears ${countWords(words!, inputCountWord!)} times');
}

List<String> repeatWords(String paragraph) {
  String task = paragraph.toLowerCase();
  List<String> words = task.split(' ');
  List<String> result = [];
  int counter = 0;

  while (counter < words.length) {
    for (int i = 0; i < words.length; i++) {
      int a = counter + i + 1;
      if (a == words.length) {
        a == words.length;
        break;
      }
      if (words[counter] == words[a]) {
        result.add(words[counter]);
        break;
      } else {
        continue;
      }
    }

    counter++;
  }

  var seen = Set<String>();
  List<String> repeatWord =
      result.where((element) => seen.add(element)).toList();

  return repeatWord;
}

int countWords(List<String> list, String element) {
  if (list == null || list.isEmpty) {
    return 0;
  }

  int count = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == element) {
      count++;
    }
  }

  return count;
}
