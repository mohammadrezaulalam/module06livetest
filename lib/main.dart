import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  mySnackBar(msg, BuildContext context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shopping List"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                mySnackBar("Cart is empty", context);
              },
              icon: const Icon(Icons.shopping_cart)
          )
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.shopping_basket, size: 30,),
            title: Text("Apples", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket, size: 30,),
            title: Text("Bananas", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket, size: 30,),
            title: Text("Bread", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket, size: 30,),
            title: Text("Milk", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket, size: 30,),
            title: Text("Eggs", style: TextStyle(fontSize: 20)),

          ),
        ],
      ),
    );
  }

}