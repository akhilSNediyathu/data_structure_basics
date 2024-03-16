class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Hash{
 int? size ;
 List? table;
 Hash(int size){
  this.table =List.filled(size, 0);
  this.size=size;
 }
hashing( String key){
  int total = 0;
  for (var i = 0; i < key.length; i++) {
    total += key.codeUnitAt(i);
  }
  return total%size!;
}

adddata(key,value){
  int index = hashing(key);
 if(table![index]!=null){
   table?[index]= value;
 }else{
Node neweNode = Node(value);

 }

}
void display(){
  print(table);
}

}
void main(){
int size =10;
Hash newHash = Hash(size);
newHash..adddata('name', 'akhil')..adddata('age', 23);
newHash.display();
}