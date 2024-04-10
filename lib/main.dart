import 'package:flutter/material.dart';
import 'package:gwandvideo/favorite_cars.dart';
import 'package:gwandvideo/home_page.dart';
import 'package:gwandvideo/product_materials/products_cars.dart';
import 'package:gwandvideo/product_list.dart';
import 'package:gwandvideo/shopping_list.dart';
import 'package:gwandvideo/user_personal.dart';


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



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon SearchIcon = const Icon(Icons.search, color: Colors.black,);
  Widget SearchBar = const Text('Российские авто', style: TextStyle
    (fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
  ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (SearchIcon.icon == Icons.search) {
                  SearchIcon = const Icon(Icons.cancel, color: Colors.black,);
                  SearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'введите название автомобиля...',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }
              });
            }, icon: SearchIcon,
          ),
           IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
              },
              icon: Icon(Icons.person_2_outlined)),
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