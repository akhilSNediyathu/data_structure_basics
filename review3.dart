class Test{


  int a;
  int b;
  Test(this.a,this.b) ;
  add(int a, int b){
    return a+b;
  }
  substract(int a, int b){
    return a-b;

  }
}
recRev(String name){
  if(name.length<=1){
    return name;
  }else{
  return  recRev(name.substring(1))+name[0];
  }

}
void main(){
  int a= 10;
  int b= 2;
  Test v = Test(a, b);
  v..add(a, b)..substract(a, b);
}