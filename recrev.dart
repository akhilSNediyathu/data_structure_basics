String revRecu(String name){
  if(name.length<=1){
    return name;
  }else{
    return revRecu(name.substring(1))+name[0];
  }
}
void main (){
  String a = ' akhil';
  String res = revRecu(a);
  print(res);
}