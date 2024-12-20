import 'package:flutter/material.dart';
// import 'gatekeeper_page/gatekeeper_page.dart'; 
// import 'discover_page/discover_page.dart'; 
// import 'facilities_page/facilities_page.dart'; 
// import 'helpdesk_page/helpdesk_page.dart'; 
import 'package:flutter_project_1/consumer_service_page/consumer_service_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist', // Set the default font family
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        ),
      ),
      home: ConsumerServicePage(), // Call the HomePage widget
    );
  }
}
