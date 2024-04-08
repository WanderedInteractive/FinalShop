import 'package:flutter/material.dart';
import 'package:gwandvideo/shopping_list_basket.dart';
import 'package:gwandvideo/product_materials/products_cars.dart';
class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина'),
      centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: productList.length,
          itemBuilder: (context, int index){
            return BasketList(index_basket: index);
          }
      )

    );
  }
}
