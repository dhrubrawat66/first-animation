import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:one/widgets/icon_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Animation One";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text(MyApp.title),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          runSpacing: 5,
          children: const [
            IconWidget(icon: FontAwesomeIcons.book),
            SizedBox(width: 10),
            IconWidget(icon: FontAwesomeIcons.gift),
            SizedBox(width: 10),
            IconWidget(icon: FontAwesomeIcons.birthdayCake),
            SizedBox(width: 10),
            IconWidget(icon: FontAwesomeIcons.globe),
          ],
        ),
      ),
    );
  }
}
