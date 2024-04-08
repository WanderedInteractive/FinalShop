import 'package:flutter/material.dart';
import 'package:gwandvideo/example_button.dart';
import 'package:gwandvideo/example_text_field.dart';
import 'package:gwandvideo/main.dart';
import 'package:gwandvideo/registration_page.dart';




class Login_Page extends StatelessWidget {
  const Login_Page ({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(

                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network('https://sun9-19.userapi.com/impf/TINIsp1nfBG1_xHfRMXmm83ffGirabTe5KGs6Q/ZR5y_10xI48.jpg?size=800x600&quality=96&sign=944adbda1fce1c965fa79c60b179708b&type=album'),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box_sharp),
                        border: OutlineInputBorder(),
                        hintText: 'Введите логин:'
                    ),
                    maxLength: 30,
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ExampleTextField(HintText: 'Введите пароль:', MAXLength: 10)
                )
            ),
            Expanded(
                child: Container(

            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                  child: ExampleButton(text: 'Войти'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage())
                    );
                  }
              ),
            )
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  child: ExampleButton(text: 'Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                    );
                  }
            )
            )
            )
          ],
        ),
      ),
    );
  }
}