import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey="pk_live_51JMd3RDhsPFPnMOxlSsLe1pe8wgUG53Vh9TXm5N4culehWYXuPUWQW6jN4F4YG1vsi6dS63wjXGco5UjWbzWsbbI000GF4lVHa";
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      // theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
