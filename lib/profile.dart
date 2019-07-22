import 'package:flutter/material.dart';


class Profile extends StatelessWidget {

  final Map profile;
  Profile(this.profile);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 400.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      title: Text(profile['name'].toString()+profile['suname'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: Image.asset(
                        "assets/Jobs.jpg",
                      )),
                ),
              ];
            },
            body:  Container(
              color: Colors.white,
              child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(profile['phonnumber'].toString()),
                  subtitle: Text("Mobile"),
                ),
                ListTile(
                  title: Text("(+374)23655778"),
                  subtitle: Text("Work"),
                  leading: Icon(Icons.phone),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_post_office),
                  title: Text(profile['email']),
                  subtitle: Text("Personal"),
                ),
            Divider(),


              ],
            ),)));
  }
}

