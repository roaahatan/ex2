import 'dart:wasm';

import 'package:exx/main.dart';
import 'package:exx/splash_screen.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget{
  List<String> groups = [ ];
final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepOrange,

          title: new Text("about app "),


    ),

    drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.deepOrange),

            currentAccountPicture: Icon(

              Icons.account_circle,
              size: 50.0,
              color: Colors.white,
            ),

          ),
          new ListTile(
            title: new Text("AHMED HUISSEN"),
            subtitle: Text("EMAIL@EXAMPLE.COM "),
          ),
          new ListTile(
            title: new Text("TOP MOVIE"),
            trailing: new Icon(Icons.movie),


          ),
          new ListTile(
            title: new Text("about app "),
            trailing: new Icon(Icons.notifications_active),

          ),
          new ListTile(
            title: new Text("sign out"),
            trailing: new Icon(Icons.arrow_right ),
          ),


        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,


        child: Text('log in '),


        onPressed: (){

          Navigator.push(context, new MaterialPageRoute(

              builder: (context)=> page6()

          )
          );

        },


      ),


    body: groups.isEmpty

        ? Center(

        child: Text('The Movie Database (TMDb) is a community built'
            'movie and TV database. Every piece of data has'
            'been added by our amazing community dating back'
            'to 2008. TMDb’s strong international focus and'
            'breadth of data is largely unmatched and something'
            'we’re incredibly proud of. Put simply, we live and'
            'breathe community and that’s precisely what makes'
            'us different.'
            ''
            ''
            ''),

    )

        : ListView(


      children: [
        ...groups.map(
              (group) => Card(
              elevation: 3,
              child: Dismissible(
                  background: Container(
                      child: const Icon(Icons.delete),
                      color: Colors.red),

                  key: UniqueKey(),





                  child: ListTile(
                    title: Text(group),
                    trailing: Icon(Icons.details),

                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => home()

                        )
                    ),

                  )
              )
          ),
        )
      ],


    ),
  );

  
}

  void setState(void Function() param0) {}}

