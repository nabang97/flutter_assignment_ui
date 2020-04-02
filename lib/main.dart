

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

Widget _buildCard(BuildContext context, String title, String downloadst, String description, String img, Object backgroundColor1, Object backgroundColor2, double size, double score, double popularity ) => SizedBox(
    height: 150,
    child: Container( 
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      
      decoration: new BoxDecoration(
        boxShadow: [
        BoxShadow(
          color: backgroundColor2,
          blurRadius: 20.0, // has the effect of softening the shadow
          spreadRadius: -10.0, // has the effect of extending the shadow
          offset: Offset(
            0.0, // horizontal, move right 10
            20.0, // vertical, move down 10
          ),
        )
      ],
        gradient: LinearGradient(
          colors: [backgroundColor1,backgroundColor2],
          ) ,
          borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
                bottomRight:const Radius.circular(10.0) ,
                bottomLeft: const Radius.circular(10.0),
              )
      ),
      // color: backgroundColors,
      // shape: RoundedRectangleBorder(       
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: new InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => BehanceRoute(),
            settings: RouteSettings(
              arguments: [
                title,
                downloadst,
                description,
                img,
                backgroundColor1,
                backgroundColor2,
                size,
                score,
                popularity
              ]  
            ),
          ),
        );
      },     
      child:
      Container(
       child: Row(
        children: <Widget>[
          Expanded(
          flex: 4, // 20%
          child: Container(            
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:2,
                  child: Container(
                    padding:const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Center(
                      child : Image.network(img)
                    )
                  )
                  
                  ),
                Expanded(
                  flex:4,
                  child: Container(
                    padding:const EdgeInsets.only(left: 10.0, right: 10.0, top:20, bottom:20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child : Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children : <Widget> [
                            Text(title, 
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              color: Colors.white30.withOpacity(0.8),
                              fontSize: 16
                              )
                            ),
                            Text(downloadst, 
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.normal, 
                              color: Colors.white30.withOpacity(0.8),
                              fontSize: 12
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child : new Text(description, 
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.normal, 
                                color: Colors.white70.withOpacity(0.8),
                                fontSize: 13
                                ),
                              )
                            )
                        ]
                      )
                    )
                  ) 
                ),
                Container(
                  decoration: new BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: backgroundColor1,
                        blurRadius: 20.0, // has the effect of softening the shadow
                        spreadRadius: -10.0, // has the effect of extending the shadow
                        offset: Offset(
                          -20.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      )
                    ],
                   color: backgroundColor2,
                      borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(100.0),
                            topRight: const Radius.circular(10.0),
                            bottomRight:const Radius.circular(10.0) ,
                            bottomLeft: const Radius.circular(100.0),
                          )
                      
                  ),
                  margin:const EdgeInsets.only(left: 20.0), 
                  width: 70,
                  height: 150,
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                       Icons.file_download,
                       color: Colors.white38,
                      size: 30.0, 
                    )
                  ),
                  
                )
              ],
            ),
          ),
        ),

        ],),)
    ),
    ),
  );

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Mine', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Color(0xffa8b1c4),
                fontSize: 20
                )
              ),
        backgroundColor: Color(0xfff3f3ff),
        centerTitle: true,
        elevation:0.0
      ),
      body: Container(
        color: Color(0xfff3f3ff),
        padding: EdgeInsets.all(20.0),
        child : Column(
          children: [
            
            _buildCard(context, 'Behance', '120,000 downloads', 'Behance was founded in 2006, the famous design' ,'https://cdn.freebiesupply.com/logos/large/2x/behance-1-logo-png-transparent.png', Color(0xff5b73f8), Color(0xff8fa4f4), 21.0, 8.0, 21.0),
             _buildCard(context, 'Dribble', '120,000 downloads',"The world's best UI work platform" ,'https://cdn.freebiesupply.com/logos/large/2x/behance-1-logo-png-transparent.png', Color(0xfff960a1), Color(0xfff98cb9),21.0, 8.0, 21.0),
              _buildCard(context, 'Pinterest','120,000 downloads','','https://cdn.freebiesupply.com/logos/large/2x/behance-1-logo-png-transparent.png', Color(0xfffa514c),Color(0xfffc8080), 21.5, 85.7, 2.1)
          ],
        
        )
        
      ),
       bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size:35
            ),
          title: Text('Home'),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business,
          size:35),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school,
          size:35),
          title: Text('School'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border,
          size:35),
          title: Text('School'),
        ),
      ],
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color(0xff5b73f8),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
        
      
    );
  }
}

class BehanceRoute extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final List data = ModalRoute.of(context).settings.arguments;
    Color bg1, bg2, bg3, bg4;
    if (data[0] == 'Behance') {
      bg1 =Color(0xff5b73f8);
      bg2 = Color(0xff8fa4f4);
      bg3 = Color(0xffa0b1fc);
      bg4= Color(0xffcbd6f7);
    }
    if (data[0] == 'Dribble') {
       bg1 =Color(0xfff960a1);
       bg2 =  Color(0xfff98cb9);
    }
    if (data[0] == 'Pinterest') {
        bg1 =Color(0xfffa514c);
        bg2 =  Color(0xfffc8080);
    }
   
       
    return Scaffold(
      appBar: AppBar(leading: new IconButton(
        icon: new Icon(Icons.arrow_back, color:  Color(0xffa8b1c4)),
        onPressed: () => Navigator.of(context).pop(),
      ), 
        title: Text(data[0],
        overflow: TextOverflow.fade,
        textAlign: TextAlign.center, 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Color(0xffa8b1c4),
                fontSize: 20
                )),
          backgroundColor: Color(0xfff3f3ff),
        centerTitle: true,
        elevation:0.0
      ),
      body: 
        Container(                     
            child:Stack( 
              alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        top : 30,
                          child : Container(
                            height: 400,
                            margin: EdgeInsets.all(20.0),
                            width:250,
                            decoration: new BoxDecoration(
                              gradient: LinearGradient(colors: 
                                [bg4, bg4]
                              ),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomRight:const Radius.circular(10.0) ,
                                bottomLeft: const Radius.circular(10.0),
                              )
                              ),
                          ),
                      ),
                      Positioned(
                        top : 20,
                          child : Container(
                            height: 400,
                            margin: EdgeInsets.all(20.0),
                            width:300,
                            decoration: new BoxDecoration(
                              gradient: LinearGradient(colors: 
                                [bg3, bg3]
                              ),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomRight:const Radius.circular(10.0) ,
                                bottomLeft: const Radius.circular(10.0),
                              )
                              ),
                          ),
                      ),
                      Positioned(
                        top : 10,
                          child : Container(
                            height: 400,
                            margin: EdgeInsets.all(20.0),
                            width:350,
                            decoration: new BoxDecoration(
                              gradient: LinearGradient(colors: 
                                [bg1, bg2]
                              ),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomRight:const Radius.circular(10.0) ,
                                bottomLeft: const Radius.circular(10.0),
                              )
                              ),
                            child: Column(children: <Widget>[
                              Container(
                                height:200,
                                padding: EdgeInsets.only(top: 50),
                                child:Image.network(data[3],
                                alignment: Alignment.center,
                                width:200,
                                height: 200,
                              )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child:Text(data[0], 
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.white30.withOpacity(0.8),
                                  fontSize: 16
                                ),)
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child : Text(
                                  data[2],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal, 
                                    color: Colors.white30.withOpacity(0.8),
                                    fontSize: 12
                                    )
                                )
                              ),
                              Padding(
                                padding:EdgeInsets.only(top: 60),
                                child : Row(                              
                                children: <Widget>[
                                  Expanded(
                                    flex :2 ,
                                    child : Column(children: <Widget>[
                                        Text(data[6].toString()+'M',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          color: Colors.white30.withOpacity(0.8),
                                          fontSize: 24,
                                          height: 1
                                          )
                                        ),
                                        Text('size',
                                          textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          color: Colors.white30.withOpacity(0.8),
                                          fontSize: 12,
                                          height: 1.5
                                          )
                                        )
                                    ],
                                  )
                                  ),
                                  Expanded(
                                    flex :2 ,
                                    child : Column(children: <Widget>[
                                        Text(data[7].toString(),
                                          textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          color: Colors.white30.withOpacity(0.8),
                                          fontSize: 24,
                                          height: 1
                                          )
                                        ),
                                        Text('Score',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          color: Colors.white30.withOpacity(0.8),
                                          fontSize: 12,
                                          height: 1.5
                                          )
                                        )
                                    ],
                                  )
                                  ),
                                  Expanded(
                                    flex :2 ,
                                    child : Column(children: <Widget>[
                                        Text(data[8].toString()+'W',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          color: Colors.white30.withOpacity(0.8),
                                          fontSize: 24,
                                          height: 1
                                          )
                                        ),
                                        Text('Popularity',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          color: Colors.white30.withOpacity(0.8),
                                          fontSize: 12,
                                          height: 1.5
                                          )
                                        )
                                    ],
                                  )
                                  ),
                                ], 
                                )
                              )
                            ],
                            ),
                          ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 40,
                        right:40,
                          child: Container(                        
                          width: MediaQuery.of(context).size.width,
                          child: Container(                            
                            padding: EdgeInsets.only(left: 3.5, right: 3.5,bottom: 4,top:4),
                            width: MediaQuery.of(context).size.width,
                            decoration: new BoxDecoration(
                              gradient: LinearGradient(colors: 
                                [Color(0xff8b8fd1), Color(0xff86b5d5)]
                              ),
                              borderRadius: new BorderRadius.circular(30.5),                               
                            ),
                            child : RaisedButton(
                                color: Color(0xfff3f3ff),
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child : ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return RadialGradient(
                                      center: Alignment.topLeft,
                                      radius: 1.0,
                                      colors: <Color>[Color(0xff8b8fd1), Color(0xff86b5d5)],
                                      tileMode: TileMode.mirror,
                                    ).createShader(bounds);
                                  },
                                   child: new Icon(
                                  Icons.file_download,
                                  size: 40,
                                  color: Colors.white70
                                ),
                                ),
                               
                                
                                onPressed: (){
                                  print('Tombol ditekan');
                                },
                                shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                                  
                                ),
                            
                          ),
                         
                        )
                        ) 
                      ),
                    ],
                  )
              
                // Expanded(
                //   flex: 2,     
                //   child: Container(
                //     margin:const EdgeInsets.only(bottom: 30, left: 50, right:40),
                //     width: MediaQuery.of(context).size.width,
                //     child: new OutlineButton(
                      
                //       padding: EdgeInsets.only(bottom: 10,top:10),
                //     child: new Icon(
                //       Icons.file_download,
                //       size: 40
                //     ),
                //     onPressed: null,
                //     shape: new RoundedRectangleBorder(
                //       borderRadius: new BorderRadius.circular(30.0),
                      
                //       )
                //   )
                //   ) 
                // )
        ),
      backgroundColor: Color(0xfff3f3ff)  
      
    );
  }
}

