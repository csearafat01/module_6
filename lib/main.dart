import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(icon: Icons.add_shopping_cart, name: 'Apples'),
    ShoppingItem(icon: Icons.add_shopping_cart, name: 'Bananas'),
    ShoppingItem(icon: Icons.add_shopping_cart, name: 'Milk'),
    ShoppingItem(icon: Icons.add_shopping_cart, name: 'Bread'),
    ShoppingItem(icon: Icons.add_shopping_cart, name: 'Eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Shopping List')),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart icon tap
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(shoppingItems[index].icon),
            title: Text(shoppingItems[index].name),
            // Add any additional styling here
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final IconData icon;
  final String name;

  ShoppingItem({required this.icon, required this.name});
}
