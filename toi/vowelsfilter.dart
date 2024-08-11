filterVowelWords(List<String> words) {
  List res = [];
  bool helper(String char) {
    for (var i = 0; i < char.length; i++) {
      if ('aeiouAEIOU'.contains(char[i])) {
        return true;
      }
    }
    return false;
  }

  for (var i = 0; i < words.length; i++) {
    String char = words[i];
    if (!helper(char)) {
      res.add(char);
    }
  }
  return res;
}

repeated(List<String> words) {
  List<String> res = [];
  helper2(String char) {
    for (var i = 0; i < char.length; i++) {
      for (var j = 0; j < char.length; j++) {
        if (i != j && char[i] == char[j]) {
          return true;
        }
      }
    }

    return false;
  }

  helper3(String char) {
    Set test = {};
    for (var i = 0; i < char.length; i++) {
      if (test.contains(char[i])) {
        return true;
      } else {
        test.add(char[i]);
      }
    }
    return false;
  }

  for (var i = 0; i < words.length; i++) {
    String char = words[i];
    if (helper3(char)) {
      res.add(words[i]);
    }
  }
  return res;
}

void main() {
  List<String> words = ['dog', 'cat', 'sky', 'mnk', 'bool', 'apple', 'oppo'];
  print(filterVowelWords(words));
  print(repeated(words));
}
