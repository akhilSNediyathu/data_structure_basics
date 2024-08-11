uniqueElements(List<int> nums) {
  List<int> results = [];
  Map<int, int> map = {};
  for (var i = 0; i < nums.length; i++) {
    if (map.containsKey(nums[i])) {
      map[nums[i]] = map[nums[i]]! + 1;
    } else {
      map[nums[i]] = 1;
    }
  }
  map.forEach((key, value) {
    if (value == 1) {
      results.add(key);
    }
  });
  return results;
}

main() {
  List<int> nums = [1, 2, 2, 3, 4, 6];
  print(uniqueElements(nums));
}
