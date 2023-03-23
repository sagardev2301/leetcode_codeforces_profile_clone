import 'package:flutter/material.dart';
import 'package:graphdemo/provider/leetcode_provider.dart';
import 'package:graphdemo/tab_bar.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter(); // for cache
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LeetCodeUser())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GraphQL Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const TabBarScreen(),
      ),
    );
  }
}
