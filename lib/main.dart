import 'package:flutter/material.dart';
import 'package:gwandvideo/favorite_cars.dart';
import 'package:gwandvideo/home_page.dart';
import 'package:gwandvideo/product_materials/products_cars.dart';
import 'package:gwandvideo/product_list.dart';
import 'package:gwandvideo/shopping_list.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Login_Page(),
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:
       const Text('Отечественный автопром ',
         style: TextStyle
           (fontSize: 15, color: Colors.black26, fontWeight: FontWeight.bold
     ),

     ),
     centerTitle: true,
     actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteItem()));
          }, icon: Icon(Icons.favorite_border_sharp)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Basket()));
          }, icon: Icon(Icons.shop))
     ],
     ),
    body: GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.670
        ),
        itemBuilder: (BuildContext context, int index){
            return CartProduct(index_car: index);
        }
    ),

    );
  }
}