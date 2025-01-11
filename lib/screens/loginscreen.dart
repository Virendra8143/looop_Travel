import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:looop_travel/screens/home_screen.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var size,height,width;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          body:  Stack(
            children: [Container(

              height: 1000,
                width: 1000,
                child: Opacity(opacity: 1,
                child: Image.asset('assets/udaipur3.jpg',fit: BoxFit.fitHeight,))),

              ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/Sign in.png',color: Colors.white,)),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(
                      controller: nameController,

                      decoration: const InputDecoration(

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        labelText: 'User Name',

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text('Forgot Password',style: TextStyle(color: Colors.white),),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onLongPress: (){

                      },
                      child: const Text('Login',style: TextStyle(color: Colors.black),),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )
                ),
                Row(
                  children: <Widget>[
                    const Text('Does not have account?',style: TextStyle(color: Colors.white),),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                      onPressed: () {

                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),]
          ),
        ));
  }
}