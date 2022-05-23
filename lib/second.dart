import 'package:cafe/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  bool isCube0Selected=true;
  bool isCube1Selected=true;
  bool isCube2Selected=true;
  bool isCube3Selected=true;
  bool isCup1Selected=true;
  bool isCup2Selected=true;
  bool isCup3Selected=true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF4EE),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(270),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 20,
          title:Text('macciato',style: TextStyle(color: Colors.black,fontFamily: 'Sen',fontWeight: FontWeight.bold),),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft:Radius.circular(40)),
            child:Stack(
              fit: StackFit.expand,
              children: const[
                Image(image: AssetImage("images/bg.png"),fit: BoxFit.fitWidth),
                Image(image: AssetImage("images/macciato.png"),),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const[
                    Text('Macciato',style: TextStyle(color: Colors.black,fontFamily: 'Sen',fontSize: 20),),
                    Text('210\$',style: TextStyle(color: Color(0xFFCF9775),fontFamily: 'Sen',fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed:(){
                          if(counter > 0){
                            setState((){
                              counter--;
                            });
                          }
                        }, icon: Icon(Icons.remove_circle),color: Color(0xFFCF9775),),
                        Text("$counter"),
                        IconButton(onPressed: (){
                          if(counter < 6){
                            setState((){
                              counter++;
                            });
                          }
                        }, icon: Icon(Icons.add_circle),color: Color(0xFFCF9775),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size",style: TextStyle(color: Colors.black,fontFamily: 'Sen',fontSize: 20),),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.fromLTRB(0,0,10,0),
                          child: IconButton(onPressed:(){
                            setState((){
                              isCup1Selected=true;
                              if(isCup1Selected){
                                //isCup1Selected=false;
                                isCup2Selected=false;
                                isCup3Selected=false;
                              }
                            });
                          },icon:Icon(MyFlutterApp.cup),iconSize: 30,color: isCup1Selected ? const Color(0xFFCF9775):Colors.black,),
                        ),
                        Padding(
                          padding:  EdgeInsets.fromLTRB(0,0,10,0),
                          child: IconButton(onPressed:(){
                            setState((){
                              isCup2Selected=true;
                              if(isCup2Selected) {
                                //isCup2Selected = false;
                                isCup1Selected=false;
                                isCup3Selected=false;
                              }
                            });
                          },icon:Icon(MyFlutterApp.cup),iconSize: 40,color: isCup2Selected ? const Color(0xFFCF9775):Colors.black,),
                        ),
                        Padding(
                          padding:  EdgeInsets.fromLTRB(0,0,0,0),
                          child: IconButton(onPressed:(){
                            setState((){
                              isCup3Selected=true;
                              if(isCup3Selected){
                                isCup1Selected=false;
                                isCup2Selected=false;
                              }
                            });
                          },icon:Icon(MyFlutterApp.cup),iconSize: 50,color: isCup3Selected ? const Color(0xFFCF9775):Colors.black,),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sugar (in cubes)",style: TextStyle(color: Colors.black,fontFamily: 'Sen',fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0,0,0,0),
                            child: IconButton(onPressed:(){
                              isCube0Selected=true;
                              setState((){
                                if(isCube0Selected){
                                  isCube1Selected=false;
                                  isCube2Selected=false;
                                  isCube3Selected=false;
                                }
                              });
                            },icon:Icon(MyFlutterApp.group_21),iconSize: 20,color: isCube0Selected ? const Color(0xFFCF9775):Colors.black,)),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,0,0),
                          child: IconButton(onPressed:(){
                            setState((){
                              isCube1Selected=true;
                              if(isCube1Selected){
                                isCube0Selected=false;
                                isCube2Selected=false;
                                isCube3Selected=false;
                              }
                              });
                          },icon:Icon(MyFlutterApp.cube),iconSize: 20,color: isCube1Selected ? const Color(0xFFCF9775):Colors.black,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,0,0),
                          child: IconButton(onPressed:(){
                            setState((){
                              isCube2Selected=true;
                              if(isCube2Selected){
                                isCube0Selected=false;
                                isCube1Selected=false;
                                isCube3Selected=false;
                              }
                            });
                          },icon:Icon(MyFlutterApp.group_20),iconSize: 20,color: isCube2Selected ? const Color(0xFFCF9775):Colors.black,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20,0,0,0),
                          child: IconButton(onPressed:(){
                            setState((){
                              isCube3Selected=true;
                              if(isCube3Selected){
                                isCube0Selected=false;
                                isCube1Selected=false;
                                isCube2Selected=false;
                              }
                            });
                          },icon:Icon(MyFlutterApp.cubes),iconSize: 20,color: isCube3Selected ? const Color(0xFFCF9775):Colors.black,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Add to cart",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFCF9775)),
                    elevation: MaterialStateProperty.all(5),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    )
                )
             ),
            )
           ],
          ),
        ),
      ),
    );
  }
}