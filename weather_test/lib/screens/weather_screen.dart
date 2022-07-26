import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../providers/provider.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeatherScreenProvider>();
    provider.contextPr = context;
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SpinKitPumpingHeart(
            color: Colors.red,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
