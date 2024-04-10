import 'package:flutter/material.dart';
import 'package:gwandvideo/shopping_list.dart';
import 'package:gwandvideo/product_materials/products_cars.dart';
class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Личный кабинет'),
        centerTitle: true,

      ),
      body: ListView(
        children: <Widget>[

          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  child: Image.network('${Useris[index].Photo}',  height: 100, )),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Пользователь : ${Useris[index].firstname + ' ' + Useris[index].lastname}'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Электронная почта : ${Useris[index].Email}'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Телефон : ${Useris[index].Phone}'),
          ),
          
          Container(
            margin: EdgeInsets.all(8),
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Basket()));
            },
                child: Text('История покупок')
            ),
          )

        ],
      ),
    );
  }
}