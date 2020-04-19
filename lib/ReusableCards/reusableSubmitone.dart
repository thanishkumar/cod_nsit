import 'package:flutter/material.dart';
import 'package:cod_nsit/Models/pending_models.dart';

class reusablesubmitPendindCard extends StatefulWidget {
  @override
  _reusablesubmitPendindCardState createState() => _reusablesubmitPendindCardState();
}

class _reusablesubmitPendindCardState extends State<reusablesubmitPendindCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) =>Column(
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
                    Container(
                      margin: EdgeInsets.only(left:30),
                      padding: EdgeInsets.only(left: 10,right: 10),
                      height: 20,
                      color: Colors.red,
                      child: Text('Pending',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        
                        fontSize: 18
                      ),),
                    ),
                  ],
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
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: Text(
                'VIEW',
              ),
            ),
                                ),
            Container(padding: EdgeInsets.only(left:30),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.orangeAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  'DELETE',
                ),
              ),
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