import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oucweather/weatheroption.dart';
import 'package:weather/weather.dart';

class FivedaysPage extends StatefulWidget {
  final List<Weather> five;
  const FivedaysPage({super.key,required this.five});

  @override
  State<FivedaysPage> createState() => _FivedaysPageState();
}

class _FivedaysPageState extends State<FivedaysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children:cards()
          )
        )
      )
    );
  }

  List<Widget> cards(){
   List<Widget> result = [];
   result.add(
    Align(
      alignment: Alignment.topLeft,
      child:Text ("５日間の天気", style: TextStyle(fontSize: 40,color: Colors.grey)),
    )
   );
   for(int i = 0 ; i < 5 ; i++){
    double max = -999;
    double min = 999;
    for(int k = i*8 ; k < (i*8) + 7 ; k++){
      Weather wea = widget.five[k];
      double deg = double.parse(wea.temperature.toString().replaceAll(" Celsius",""));
      if(max < deg){
        max = deg;
      }
      if(min > deg){
        min = deg;
      }
    }
    Weather weather = widget.five[(i*8)+3];
    double? humidity = weather.humidity;
    result.add(OneDayCard(
      weath:weather.weatherMain!,
      maxtemperature:max.toString(),
      mintemperature:min.toString(),
      humidity:humidity,
      iconID:weather.weatherIcon!));
   } 
   return result;
  }
}

class OneDayCard extends StatelessWidget {
  final String weath;
  final String maxtemperature;
  final String mintemperature;
  final double? humidity;
  final String iconID;
  const OneDayCard({super.key,required this.weath,required this.maxtemperature,required this.mintemperature,required this.humidity,
  required this.iconID});

  @override
  Widget build(BuildContext context) {
    return Container(
                alignment: Alignment.centerLeft,
                // 横幅
                width: 360,
                // 縦幅
                height: 100,
                color: Color.fromARGB(255, 141, 255, 240),
                margin: EdgeInsets.all(10),
                child: FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text ("1日（木）", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text ("${Options.getWeatherName(weath)}", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
                          Padding(padding: EdgeInsets .only (left:15)),
                          Text ("${maxtemperature}°", style: TextStyle(fontSize: 15,color: Colors.red)),
                          Text ("/", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
                          Text ("${mintemperature}°", style: TextStyle(fontSize: 15,color: Colors.blue)),
                          Padding(padding: EdgeInsets .only (left:15)),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text ("${humidity}％", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))), 
                              Padding(padding: EdgeInsets .only (left:90)),
                              /*
                              Icon(Icons.sunny_snowing,size: 60,color: Colors.white,),
                              */
                              Image.network("http://openweathermap.org/img/wn/${iconID}@2x.png"),
                            ]
                          ),
                        ]
                      ),
                    ]
                  ),
                ),
              );
  }
}