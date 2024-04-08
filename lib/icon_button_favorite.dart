import 'package:flutter/material.dart';
import 'package:gwandvideo/product_materials/products_cars.dart';
class IconButtonFavorite extends StatefulWidget {
   IconButtonFavorite({Key? key, required this.index_car}) : super(key: key);
  final int index_car;
  @override
  State<IconButtonFavorite> createState() => _IconButtonFavoriteState(index_car);
}

class _IconButtonFavoriteState extends State<IconButtonFavorite> {
  final int index_car;
  bool _isFavorite = false;
  int count = 0;
  Color _MyColor = Colors.white;
  _IconButtonFavoriteState(this.index_car);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      
      
      
      child: IconButton(
        
        
        
        icon: Icon(Icons.favorite_border_sharp),
        selectedIcon: Icon(Icons.favorite),
        isSelected: _isFavorite,
        color: _MyColor,
        tooltip: 'Добавить в избранное',
          onPressed: (){
            setState(() {
              count++;
              _isFavorite = !_isFavorite;

              if (count == 1){
                Favorite.add(productList[index_car]);
                _MyColor = Colors.red;


              }
              else
                {

                  Favorite.removeWhere((item) => item.id == productList[index_car].id);
                  count = 0;
                  _MyColor = Colors.white;
                }
            });
          },

      ),
    );
  }
}

  class IconButtonShop extends StatefulWidget {
   IconButtonShop({Key? key, required this.index_car}) : super(key: key);
  final int index_car;
  @override
  State<IconButtonShop> createState() => IconButtonShopState(index_car);
}

class IconButtonShopState extends State<IconButtonShop> {
  final int index_car;
  bool _isFavorite = false;
  int count = 0;
  Color _MyColor = Colors.white;
  IconButtonShopState(this.index_car);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      
      
      
      child: IconButton(
        
        
        
        icon: Icon(Icons.shop),
        isSelected: _isFavorite,
        color: _MyColor,
        tooltip: 'Добавить в корзину',
          onPressed: (){
            setState(() {
              count++;
              _isFavorite = !_isFavorite;

             
                Shopping.add(productList[index_car]);
            },
            );
          },

      )
      );
  }
}

