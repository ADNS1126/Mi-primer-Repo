import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      // Define all your routes here
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen(); // Replace with your actual home screen
        },
      ),
      GoRoute(
        path: '/details',
        builder: (BuildContext context, GoRouterState state) {
          return const DetailScreen(); // Replace with your actual detail screen
        },
      ),
      // Add additional routes as needed
    ],
    errorBuilder: (context, state) => const ErrorScreen(), // Handle errors
  );
}

// Dummy screens for the example, replace with your actual implementations
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: const Text('Home Screen'),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: const Text('Detail Screen'),
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: const Text('Error: Page not found!'),
      ),
    );
  }
}