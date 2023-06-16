import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Groceries',
        theme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 147, 229, 250),
            brightness: Brightness.dark,
            surface: const Color.fromARGB(255, 42, 51, 59),
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Your Groceries'),
          ),
          body: ListView.builder(
            itemCount: groceryItems.length,
            itemBuilder: (BuildContext context, int index) {
              var item = groceryItems[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: item.category.color,
                  child: Text(item.quantity.toString()),
                ),
                title: Text(item.name),
                subtitle: Text(item.category.name),
              );
            },
          ),
        ));
  }
}
