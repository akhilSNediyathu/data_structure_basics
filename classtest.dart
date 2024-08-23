class Test1 {
  int a;
  int b;
  Test1(this.a, this.b);
}

class Test2 extends Test1 {
  String c;
  Test2(this.c,int x,int y) : super(x,y);
}
