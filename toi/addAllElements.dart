recAdd(List nums) {
  if (nums.isEmpty) {
    return 0;
  } else {
    return recAdd(nums.sublist(1)) + nums[0];
  }
}

oddPrinting(List nums) {
  if (nums.isEmpty) {
    return;
  }
  if (nums.first % 2 == 1) {
    print(nums.first);
  }
  oddPrinting(nums.sublist(1));
}

main() {
  print(recAdd([1, 2, 3, 4, 5]));
  oddPrinting([1, 2, 3, 4, 5]);
}
