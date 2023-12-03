class Laptop{
  int id;
  String name;
  int ram;
  Laptop(this.id, this.name, this.ram);
  void printdetails(){
   print('Laptop ID: $id, Name: $name, RAM: $ram GB');

}}
void main(){
 Laptop pc1 = Laptop(1, 'Hp', 8);
  Laptop pc2 = Laptop(2, 'Lenovo', 16);
  Laptop pc3 = Laptop(3, 'Mac', 32);
   pc1.printdetails();
   pc2.printdetails();
   pc3.printdetails();

}