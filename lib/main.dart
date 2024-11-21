import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(

            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                color: Colors.indigo,

              ),

            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.menu,size: 28,),color: Colors.white),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,),color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text(

                  'Explore\nThe world',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                ),
              ),

                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 4,

                        itemBuilder:(context,index){
                        if(index==0){
                          return RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Flutter',style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Text('Flutter',style: TextStyle(
                                      color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Text('Flutter',style: TextStyle(
                                      color: Colors.amber,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),

                                ],
                              ),
                            ),
                          );
                        }else{
                          return Column(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  width: 250,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),

                                  ),
                                  child: Image.network('https://plus.unsplash.com/premium_photo-1688645554172-d3aef5f837ce?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW4lMjBjbG91ZHN8ZW58MHx8MHx8fDA%3D',fit: BoxFit.cover,),


                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Mountain',style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black54,
                                ),),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,bottom: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on,color: Colors.amber),
                                    Text('Mountain')
                                  ],
                                ),
                              )
                            ],
                          );
                        }



                        }

                    ),
                  ),


                ],


          )
        ],
      ),
    );
  }
}
