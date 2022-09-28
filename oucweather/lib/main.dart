import 'package:flutter/material.dart';
import 'package:oucweather/weatheroption.dart';
import 'package:weather/weather.dart';

import 'fivedays.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'OUC Weather Report'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getWeather(),
      builder: ((context, snapshot) {
        if(!snapshot.hasData){
          return Text("now loading...");
        }
        List<Weather> fiveWeather = snapshot.data as List<Weather>;
        Weather weather = fiveWeather[0];
        String temperature = weather.temperature.toString().replaceFirst("Celsius","");
        String? weath = Options.getWeatherName(weather.weatherMain);
        double? pressure = weather.pressure;
        double? humidity = weather.humidity;
        double? windSpeed = weather.windSpeed;
        double? deg = weather.windDegree;
        String? iconID = weather.weatherIcon;
        
        return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
               // 横幅
                width: 360,
                // 縦幅
                height: 350,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
      topRight: Radius.circular(50),
    ),
    
    gradient: LinearGradient(
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight,
      colors: [
        const Color(0xffe4a972).withOpacity(0.6),
        const Color(0xff9941d8).withOpacity(0.6),
      ],
      stops: const [
        0.0,
        1.0,
      ],
    ),
  ),
              margin: EdgeInsets.all(10),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text ("現在", style: TextStyle(fontSize: 40,color: Colors.white)),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget>[
                Text(temperature + "°",style: TextStyle(fontSize: 70,color: Colors.white)),
                Padding(padding: EdgeInsets.only(left:30)),
                /*
              Icon(Icons.sunny_snowing,size: 100,color: Colors.white,)
              */
              Container(
                width: 100,
                height: 100,
                
                child: Image.network("http://openweathermap.org/img/wn/${iconID}@2x.png")
              ),
              ]),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget> [
                    Text(weath!,style: TextStyle(fontSize: 20,color: Colors.white),),
                    Padding(padding: EdgeInsets.only(left:120)),
                    Text("気圧　${pressure}hPa",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ]),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text("湿度 ${humidity}%",style: TextStyle(fontSize: 20,color: Colors.white),),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text("風速 ${getDegree(deg)}${windSpeed}m/s",style: TextStyle(fontSize: 20,color:Colors.white),)
              ],
            ),
            ])
            
              ),
              
               Container(
              alignment: Alignment.centerLeft,
               // 横幅
                width: 360,
                // 縦幅
                height: 100,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight,
      colors: [
        Color.fromARGB(255, 1, 254, 170).withOpacity(0.6),
        Color.fromARGB(255, 0, 136, 255).withOpacity(0.6),
      ],
      stops: const [
        0.0,
        1.0,
      ],
    ),
  ),
  
              margin: EdgeInsets.all(10),
              child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("時刻", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 55)),
            Text ("温度", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
          ]
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("13時", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Icon(Icons.sunny,size: 30,color: Colors.grey,),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text("23°",style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 104, 103, 103)),),
          ]
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("14時", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Icon(Icons.sunny,size: 30,color: Colors.grey,),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text("23°",style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 104, 103, 103)),),
          ]
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("15時", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Icon(Icons.sunny,size: 30,color: Colors.grey,),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text("23°",style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 104, 103, 103)),),
          ]
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("16時", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Icon(Icons.sunny,size: 30,color: Colors.grey,),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text("23°",style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 104, 103, 103)),),
          ]
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("17時", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Icon(Icons.sunny,size: 30,color: Colors.grey,),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text("23°",style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 104, 103, 103)),),
          ]
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text ("18時", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 104, 103, 103))),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Icon(Icons.sunny,size: 30,color: Colors.grey,),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text("23°",style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 104, 103, 103)),),
          ]
          ),
            
           
           
            ]
            ),
            
            ),
             Card(
            child: ListTile(
               title: Text("明日"),
              subtitle: Text("22°/16°"),
              trailing: Icon(
                Icons.sunny,
              ),
            ),
          ),
            Align(
              alignment: Alignment.topLeft,
              child:TextButton.icon(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => FivedaysPage(five:fiveWeather),));
                },
                icon: Icon(Icons.list), //アイコン
                label: Text('5日間の天気'), //テキスト
              )
            )
          ],
        ),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
      })
    );
  }

  Future<List<Weather>> getWeather()async{
    WeatherFactory wf = new WeatherFactory("18ec531f4d4fa0ce7a9548ba1dcc3dd2",language: Language.JAPANESE);
    List<Weather> five = await wf.fiveDayForecastByCityName("Otaru");
    return five;
  }



  static String getDegree(double? deg){
    double degree = deg!;
    if(degree < 22.5 || 337.5 < degree){
      return "北";
    }else if(degree < 67.5){
      return "北東";
    }else if(degree < 112.5){
      return "東";
    }else if(degree < 157.5){
      return "南東";
    }else if(degree < 202.5){
      return "南";
    }else if(degree < 247.5){
      return "南西";
    }else if(degree < 292.5){
      return "西";
    }else{
      return "北西";
    }
  }
}