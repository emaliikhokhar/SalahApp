import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salah App',
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Color.fromRGBO(133, 43, 9, 0.0))),
      home: const MyHomePage(title: 'Salah App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  String _email = '';
  String _password = '';
  final _urlImage =
      "https://images.unsplash.com/photo-1601191362988-ac6ebec629c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(_urlImage), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Login',
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: _emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'johndoe@example.com',
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: _passwordController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: '********',
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        print(_emailController);
                      },
                      child: Text('Login'),
                    )),
              ],
            ),
          ),
        ));
  }
}
