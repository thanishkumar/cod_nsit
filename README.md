# cod_nsit

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
 return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.orangeAccent, Colors.blue]),
        ),
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),

    );




    Column(
                  children: <Widget>[
                    SizedBox(height: 4,),
                    Divider(
                      indent: 30,
                      endIndent: 30,
                      height: 5,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(height: 10,),
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
                                    topLeft:  const  Radius.circular(15.0),
                                    topRight: const  Radius.circular(15.0),
                                bottomLeft:  Radius.circular(15.0),bottomRight: Radius.circular(15.0))
                            ),
                            height: 150,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Container(
                                  color: Colors.transparent,
                                  child: ListView.builder(
                                  itemCount: dummyData.length,
                                    itemBuilder: (context,i)=>new Column(
                                        children:<Widget>[
                                          Divider(height: 10.0,
                                          ),
                                          ListTile(
                                            leading: CircleAvatar(
                                              foregroundColor: Theme.of(context).primaryColor,
                                              backgroundColor: Colors.grey,
                                              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                                            ),
                                            title: new Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                new Text(dummyData[i].name,style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                new Text(dummyData[i].time,style:TextStyle(color: Colors.grey,fontSize: 14.0), ),

                                              ],
                                            ),
                                            subtitle: Container(
                                              padding: EdgeInsets.only(top: 5.0),
                                              child: Text(
                                                dummyData[i].message,style: TextStyle(color: Colors.grey,fontSize: 15.0),
                                              ),

                                            ),
                                          )
                                        ]
                                    ),


                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
