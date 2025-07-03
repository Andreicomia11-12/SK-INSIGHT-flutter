import 'package:flutter/material.dart';

class SiblingSection extends StatefulWidget {
  const SiblingSection({super.key});

  @override
  _SiblingSectionState createState() => _SiblingSectionState();
}

class _SiblingSectionState extends State<SiblingSection> {
  List<Map<String, String>> siblings = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Siblings Information:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          ...siblings.asMap().entries.map((entry) {
            int index = entry.key;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: SizedBox(
                  width: 330,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'Name'),
                          onChanged: (value) => siblings[index]['name'] = value,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'Gender'),
                          onChanged: (value) => siblings[index]['gender'] = value,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'Age'),
                          onChanged: (value) => siblings[index]['age'] = value,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                siblings.add({'name': '', 'gender': '', 'age': ''});
              });
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Sibling'),
          ),
        ],
      ),
    );
  }
}
