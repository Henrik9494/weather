import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:weather_test/const/const.dart';
import 'package:weather_test/providers/provider.dart';

class WeatherScreenSecond extends StatelessWidget {
  const WeatherScreenSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Consumer<WeatherScreenProvider>(builder: (context, provider, _) {
      var temp = (provider.rezult.current_observation?.condition!.temperature ==
              null
          ? 0
          : (((provider.rezult.current_observation?.condition!.temperature)! -
                      32) *
                  5) /
              9);

      return SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Weather"),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Stack(
            children: [
              Container(
                decoration: provider.photo == "assets/beautiful-sunset-3.jpg"
                    ? const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/beautiful-sunset-3.jpg"),
                        ),
                      )
                    : BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(provider.photo),
                          fit: BoxFit.fill,
                        ),
                      ),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.red),
                      controller: controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Search City",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: TextButton(
                        style: ButtonStyle(),
                        onPressed: () {
                          provider.boolTemp = true;
                          mCity = controller.text;
                          provider.diohttp();
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        child: Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 9, 49, 209)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(image: AssetImage(mIcon))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            "${(temp.ceil())}",
                            style: TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 255, 230, 0)),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        provider.boolTemp = true;
                        provider.positionGeo();
                      },
                      icon: (const Icon(
                        Icons.location_on_outlined,
                      )),
                      iconSize: 40,
                      color: Color.fromARGB(255, 9, 49, 209),
                    ),
                    Text(
                      provider.rezult.location?.city ?? "",
                      style: TextStyle(fontSize: 24, color: Colors.tealAccent),
                    ),
                  ],
                ),
              ),
              provider.boolTemp == true
                  ? Center(
                      child: SpinKitCubeGrid(
                        color: Colors.blue,
                        size: 50.0,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ));
    });
  }
}
