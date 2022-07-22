import 'package:flutter/material.dart';

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
              color: Color.fromARGB(255, 106, 199, 253),
              margin: EdgeInsets.all(10),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text ("現在", style: TextStyle(fontSize: 40,color: Colors.white)),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget>[
                Text("21°",style: TextStyle(fontSize: 128,color: Colors.white)),
                Padding(padding: EdgeInsets.only(left:30)),
              Icon(Icons.sunny_snowing,size: 100,color: Colors.white,)]),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget> [
                    Text("晴れ ",style: TextStyle(fontSize: 20,color: Colors.white),),
                    Padding(padding: EdgeInsets.only(left:120)),
                    Text("気圧　1002Pha",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ]),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text("湿度 91%",style: TextStyle(fontSize: 20,color: Colors.white),),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text("風速 東4m/s",style: TextStyle(fontSize: 20,color:Colors.white),)
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
              color: Color.fromARGB(255, 141, 255, 240),
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
            
            Align(
  alignment: Alignment.topLeft,
              child:TextButton.icon(
  onPressed: () {},
  icon: Icon(Icons.list), //アイコン
  label: Text('5日間の天気'), //テキスト
)),
             Card(
            child: ListTile(
               title: Text("7.10(日)"),
              subtitle: Text("21°"),
              trailing: Icon(
                Icons.sunny,
              ),
            ),
          ),
           Card(
            child: ListTile(
               title: Text("7.11(月)"),
              subtitle: Text("21°"),
              trailing: Icon(
                Icons.sunny,
              ),
            ),
          ),
           Card(
            child: ListTile(
               title: Text("7.12(火)"),
              subtitle: Text("21°"),
              trailing: Icon(
                Icons.sunny,
              ),
            ),
          ),
          Card(
            child: ListTile(
               title: Text("7.13(水)"),
              subtitle: Text("21°"),
              trailing: Icon(
                Icons.sunny,
              ),
            ),
          ),
          Card(
            child: ListTile(
               title: Text("7.14（木)"),
              subtitle: Text("21°"),
              trailing: Icon(
                Icons.sunny,
              ),
            ),
          ),





          ],
        ),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}