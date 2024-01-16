void main() {
  print(maxNumberOfBalloons(
      "krhizmmgmcrecekgyljqkldocicziihtgpqwbticmvuyznragqoyrukzopfmjhjjxemsxmrsxuqmnkrzhgvtgdgtykhcglurvppvcwhrhrjoislonvvglhdciilduvuiebmffaagxerjeewmtcwmhmtwlxtvlbocczlrppmpjbpnifqtlninyzjtmazxdbzwxthpvrfulvrspycqcghuopjirzoeuqhetnbrcdakilzmklxwudxxhwilasbjjhhfgghogqoofsufysmcqeilaivtmfziumjloewbkjvaahsaaggteppqyuoylgpbdwqubaalfwcqrjeycjbbpifjbpigjdnnswocusuprydgrtxuaojeriigwumlovafxnpibjopjfqzrwemoinmptxddgcszmfprdrichjeqcvikynzigleaajcysusqasqadjemgnyvmzmbcfrttrzonwafrnedglhpudovigwvpimttiketopkvqw"));
}

int maxNumberOfBalloons(String text) {
  List<String> textLetters = text.split('');
  int ammountOfSingleLetters = ammountOfSingleLettersOfBallon(textLetters);
  if (ammountOfSingleLetters == 0) return 0;
  int ammountOfDoubleLetters = ammountOfDoubleLettersOfBallon(textLetters);
  if (ammountOfDoubleLetters < 2) return 0;
  if (ammountOfDoubleLetters >= ammountOfSingleLetters * 2) {
    return ammountOfSingleLetters;
  } else {
    int ballons = 0;
    while (true) {
      if (ammountOfSingleLetters > 0 && ammountOfDoubleLetters > 1) {
        ballons++;
        ammountOfSingleLetters--;
        ammountOfDoubleLetters -= 2;
      } else {
        break;
      }
    }
    return ballons;
  }
}

int ammountOfSingleLettersOfBallon(List<String> textLetters) {
  int ammountOfB = textLetters.where((let) => let.toLowerCase() == 'b').length;
  int ammountOfA = textLetters.where((let) => let.toLowerCase() == 'a').length;
  int ammountOfN = textLetters.where((let) => let.toLowerCase() == 'n').length;
  List<int> ammountsOfLetters = [ammountOfA, ammountOfB, ammountOfN];
  ammountsOfLetters.sort();
  return ammountsOfLetters[0];
}

int ammountOfDoubleLettersOfBallon(List<String> textLetters) {
  int ammountOfL = textLetters.where((let) => let.toLowerCase() == 'l').length;
  int ammountOfO = textLetters.where((let) => let.toLowerCase() == 'o').length;
  List<int> ammountsOfDoubleLetters = [ammountOfL, ammountOfO];
  ammountsOfDoubleLetters.sort();
  return ammountsOfDoubleLetters[0];
}
