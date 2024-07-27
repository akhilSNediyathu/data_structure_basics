binarySearch(arr, tar) {
  int largest = arr.length ~/ 2;
  int smallest = 0;
  while (smallest <= largest) {
    int mid = (largest + smallest) ~/ 2;
    if (tar == arr[mid]) {
      print(' found at $mid');
      return;
    } else if (tar < mid) {
      largest = mid - 1;
    } else {
      smallest = mid + 1;
    }
  }
  print(' not found');
}

void main() {
  List arr = [1, 2, 3, 4, 5];
  int tar = 2;
  binarySearch(arr, tar);
}
