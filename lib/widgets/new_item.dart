import 'package:flutter/material.dart';
import 'package:shopping_list/data/categories.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  _NewItemState createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Item'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                maxLength: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Quantity'),
                      keyboardType: TextInputType.number,
                      initialValue: '1',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField(items: [
                      for (var category in categories.entries)
                        DropdownMenuItem(
                          value: category.value,
                          child: Row(children: [
                            Container(
                                width: 24,
                                height: 24,
                                color: category.value.color),
                            const SizedBox(width: 6),
                            Text(category.value.name),
                          ]),
                        )
                    ], onChanged: (value) {}),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Cancel')),
                  ElevatedButton(onPressed: () {}, child: const Text('Add')),
                ],
              ),
            ]),
          ),
        ));
  }
}
