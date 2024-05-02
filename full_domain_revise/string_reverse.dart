void main(){
  // String a = 'test string';
  // String b = String.fromCharCodes(a.codeUnits.reversed);
  // print(b);
  List <String> result =[];
  String a = 'my name is akhil';
  for (var i = a.length-1; i >=0; i--) {
    result.add(a[i]);

    
  }
  print(result.join(''));
}