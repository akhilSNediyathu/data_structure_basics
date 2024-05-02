void main(){
  String a = 'my     name is Akhil';
  print(a);
 String b = '';
  for (var i = 0; i < a.length; i++) {
    if(a[i]==' '){
      if(a[i]==a[i+1]){
       
        continue;
      }
     
    }
     b = b+a[i];
  }
  print(b);
}