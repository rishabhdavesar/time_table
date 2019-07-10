
import 'package:flutter/material.dart';



class newEvent extends StatelessWidget
{
    String time;
  String item;

  newEvent(this.time,this.item);

   
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  
}


class BookRow extends StatelessWidget {

 
Container MyArticles(String heading,String time)
{
  return  Container(
                  width: 180,
                  child: Card( color: Colors.blueAccent,elevation: 6,margin: EdgeInsets.all(17),
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),

                    child: Wrap(
                      children: <Widget>[
                        ListTile( contentPadding: EdgeInsets.all(8),
                          title: Text(heading, textAlign: TextAlign.center,style: new TextStyle(
                            color: Colors.white
                          ),),
                          
                          subtitle:Padding(padding: EdgeInsets.only(top: 10) ,
                          child: 
                           Text(time),
                          ) 
                        ),
                      ],
                    ),
                  ),
                );
}

  PageController pageController = new PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return new Container(

      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(30.0), color: Colors.white),
      child: Column(
        children: <Widget>[

       
          new Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
               MyArticles("9:30", "check jama bh karna hai!"),
                MyArticles("heading", "sub"),
                 MyArticles("heading", "sub"),
                  MyArticles("heading", "sub"),
                   MyArticles("heading", "sub"),
                    MyArticles("heading", "sub"),

                    
              ],
            ),
          ),
      InkWell(                        
        child: new Container(
          decoration: BoxDecoration(
             color: Colors.green,
             
          boxShadow: [BoxShadow(blurRadius: 4,
            color: Colors.grey,
          ),]
        ),

          width: 80.0,
          padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
         
          child: new Column(
              children: [
                new Text("New Event"),
              ]
          ),
        ),                       
        onTap: () {    
          show_eventplanner();                     
                  print("tapped on container");
                  },                      
               ),
                  
              
                ],
                )     
              );
                
            }
          }
          
          void show_eventplanner() {


}
