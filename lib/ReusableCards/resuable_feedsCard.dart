import 'package:flutter/material.dart';
import 'package:cod_nsit/Models/feed_model.dart';

class Reusable_FeedsCard extends StatefulWidget {
  @override
  _Reusable_FeedsCardState createState() => _Reusable_FeedsCardState();
}

class _Reusable_FeedsCardState extends State<Reusable_FeedsCard> {
  @override
  Widget build(BuildContext context) {
//    ListView.builder(
    //    itemCount: dummyData.length,
    //  itemBuilder: (context,i)=>

    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                  height: 5,
                  color: Colors.deepOrange,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.orangeAccent, Colors.blue]),
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(15.0),
                                topRight: const Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0))),
                        height: 353,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Align(
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                          dummyData[i].avatarUrl),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        dummyData[i].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        dummyData[i].personDescription,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 160),
                                      child: IconButton(
                                          icon: Icon(Icons.more_vert),
                                          onPressed: () {}))
                                ],
                              ),
                            ),
                            Container(
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(30.0),
                                          topRight: const Radius.circular(30.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0))),
                                  padding: EdgeInsets.only(left: 30, right: 30),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Image.network(
                                      dummyData[i].imageUrl),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        dummyData[i].topicText,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        dummyData[i].topicDescription,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      Divider(
                                        color: Colors.white,
                                        thickness: 1,
                                        indent: 2,
                                        endIndent: 2,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 3),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 28,
                                  ),
                                ),
                                Text(
                                  dummyData[i].like.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 3),
                                  child: Icon(
                                    Icons.comment,
                                    size: 28,
                                  ),
                                ),
                                Text(
                                  dummyData[i].comment.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                IconButton(
                                    icon: Icon(Icons.bookmark),
                                    color: Colors.black,
                                    iconSize: 28,
                                    onPressed: () {}),
                                Container(
                                  padding: EdgeInsets.only(left: 160),
                                  child: IconButton(
                                      icon: Icon(Icons.share),
                                      color: Colors.black,
                                      onPressed: () {}),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ));
  }
}
