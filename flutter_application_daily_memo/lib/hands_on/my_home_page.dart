import 'package:flutter/material.dart';
import 'package:flutter_application_daily_memo/hands_on/create_page.dart';
// import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> _todoItems = [
    Todo("英語の課題", Icons.description),
    Todo("牛乳を買う", Icons.local_grocery_store),
  ];

//   final ImagePicker _picker = ImagePicker();

// void _takePicture() {
//   final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
// }

  // final List<String> _todoItems = [
  //   "英語の課題",
  //   "牛乳を買う",
  // ];

  void _addTodo(Todo todo) {
    setState(() {
      _todoItems.add(todo);
    });
  }

  void _deleteTodo(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _todoItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.red),
              ),
              child: ListTile(
                leading: Icon(_todoItems[index].icon, size: 35.0),
                title: Text(_todoItems[index].title),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(_todoItems[index].title),
                      actions: [
                        IconButton(
                          onPressed: () {
                            _deleteTodo(index);
                            Navigator.pop(context);
                          },
                          color: Colors.red,
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Todo? todo = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CreatePage()));
          if (todo != null) _addTodo(todo);
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Todo {
  String title;
  IconData? icon;

  Todo(this.title, this.icon);
}
