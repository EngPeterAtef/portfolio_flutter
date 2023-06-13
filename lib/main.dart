import 'package:om_chauhan/all_imports.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sp;
Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  sp = await SharedPreferences.getInstance();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: 'Peter Atef',
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const Home(),
    );
  }
}
