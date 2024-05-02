String stringRevRec(String a ){
  if(a.length<=1){
    return a;
  }else{
   return stringRevRec(a.substring(1))+a[0];
  }

}
void main(){
  String a = 'string to be reversed ';
  String result = stringRevRec(a);
  print(result);
}