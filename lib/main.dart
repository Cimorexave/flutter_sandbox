import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: const ColorScheme(
            primary: Colors.blue, // A darker variant of the primary color
            secondary: Colors.orange, // A darker variant of the secondary color
            surface: Colors
                .white, // The background color for surfaces such as cards and dialogs
            background: Colors.white, // The background color for your app
            error: Colors.red, // The error color for your app
            onPrimary: Colors
                .white, // The color to use for text on top of the primary color
            onSecondary: Colors
                .black, // The color to use for text on top of the secondary color
            onSurface:
                Colors.black, // The color to use for text on top of surfaces
            onBackground: Colors
                .black, // The color to use for text on top of the background color
            onError: Colors
                .white, // The color to use for text on top of the error color
            brightness: Brightness
                .light, // The overall brightness of the theme (light or dark)
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            headline3: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 16),
            bodyText2: TextStyle(fontSize: 14),
          )),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add),
          onPressed: () {
            print('pressed action button.');
          },
        ),
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Flutter SandBox'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: const Center(
          child: Text(
            'CENTER!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
