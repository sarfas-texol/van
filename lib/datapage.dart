import 'package:flutter/material.dart';
import 'dart:convert';

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("json example"),
      ),
      body: Container(
          child:Center(
            child: FutureBuilder(
              builder: (context, snapshot){
                    List<Map<String,dynamic>> data= (json.decode(snapshot.data.toString()) as List).map((e) => e as Map<String,dynamic>)?.toList();
                    print(data);
                    print(data[1]["Name"]);
                    return  Wrap(
                      runSpacing: 10,
                        spacing: 20,
                        children:data.map((e) => Text(e["Name"])).toList().cast<Widget>()

                        // data.map((e) =>Text(e)).toList().cast<Widget>()
                      //sa.map((e) =>Text(e)).toList().cast();

                    );
                    // return ListView.builder(
                    //   itemCount: data.length,
                    //   itemBuilder: (BuildContext context,int index){
                    //   return Wrap(
                    //     children: [
                    //       Container(
                    //         width: MediaQuery.of(context).size.width,
                    //         child: Text("NAme= "+data[index]['Name']),
                    //
                    //       ),
                    //     ],
                    //   );
                    //   },
                    //
                    // );
                },
              future: DefaultAssetBundle.of(context).loadString("json/file.json"),


            ),
          )
      ),
    );
  }
}