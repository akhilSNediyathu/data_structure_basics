String revRecu(String name){
  if(name.length<=1){
    return name;
  }else{
    return revRecu(name.substring(1))+name[0];
  }
}
binarySearch(List arr,target){
  int min = 0;
  int max = arr.length-1;
  while(min<=max){
    int mid = (min+max) ~/2;
    if(arr[mid]==target ){
      return mid;
    }if(arr[mid]<target){
     min = mid+1;
    }else{
      max=mid-1;

    }
  }
  return -1;

}
void main (){
  String a = ' akhil';
  String res = revRecu(a);
  print(res);
  List c = [1,2,3,4,5];
  int res2 = binarySearch(c, 5);
  if(res2==-1){
 print ('not found');

  }else{
    print('found @ $res2');
  }
  Map m = {
's': 1,
'h':5
  };
  print(m.keys);
}
