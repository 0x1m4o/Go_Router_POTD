import 'package:flutter/material.dart';

// Import the app route
import 'package:go_router_potd/presentation/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Assign the go router in the material app
      routerConfig: router,
    );
  }
}
