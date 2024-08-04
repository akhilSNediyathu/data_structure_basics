List<String> filterWords(List<String> words) {
  List<String> filtered = [];
  bool helper(String word) {
    for (var i = 0; i < word.length; i++) {
      if ('aeiouAEIOU'.contains(word[i])) {
        return true;
      }
    }
    return false;
  }

  for (var i = 0; i < words.length; i++) {
    if (!helper(words[i])) {
      filtered.add(words[i]);
    }
  }

  return filtered;
}

main() {
  List<String> test = ['akhil', 'test', 'kkk', 'uio', 'jkl'];
  print(filterWords(test));
}
