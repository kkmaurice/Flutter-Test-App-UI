import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/utils/dark_theme_styles.dart';
import 'package:shopper/widgets/btm_nav_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
        return const MaterialApp(
          title: 'Shopper',
          debugShowCheckedModeBanner: false,
          // theme: Styles.themeData(themeChangeProvider.darkTheme, context),
          home: BottomNavBar(),
        
        );
      
    
  }
}
