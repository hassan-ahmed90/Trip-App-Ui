import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? _pageController;
  void _onSCroll(){

  }
  int totalPage=4;
  @override
  void initState() {
    _pageController=PageController(
      initialPage: 0,
    )..addListener(_onSCroll);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage('images/one.jpg','USA','The United States of America is the worlds third largest country in size and nearly the third largest in terms of population. Located in North America, the country is bordered on the west by the Pacific Ocean and to the east by the Atlantic Ocean. Along the northern border Canada and the southern border is Mexico.','1'),
          makePage('images/two.jpg','CANADA','It is the second largest country in the world, but it has only one-half of one percent of the worlds population. Canada features black-blue lakes, numerous rivers, majestic western mountains, rolling central plains, and forested eastern valleys.','2'),
          makePage('images/three.jpg','TURKEY','Turkey is a large peninsula that bridges the continents of Europe and Asia. Turkey is surrounded on three sides by the Black Sea, the Mediterranean Sea, and the Aegean Sea. Istanbul, the largest city in Turkey, is built on land in the Bosporus seaway.','3'),
          makePage('images/four.jpg','SAUDI ARABIA','The Kingdom of Saudi Arabia is the largest country in the Arabian Peninsula. It occupies an area about the size of the United States east of the Mississippi River. Saudi Arabias population is 27 million, including 8.4 million foreign residents (2010 census), and its capital city is Riyadh.','4'),


        ],
      ),
    );
  }
}
Widget makePage(image,title,description,page){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.3,0.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2)
              ]
          )
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(page,style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                Text('/4',style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                        Icon(Icons.star,color: Colors.grey,size: 15,),
                        Text('(4.0) ',style: TextStyle(color: Colors.white70),),
                        Text('2300',style: TextStyle(color: Colors.white38,fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(padding: EdgeInsets.only(right: 20),
                    child: Text(description,style: TextStyle(
                      fontSize: 19,
                      color: Colors.white.withOpacity(.7),

                    ),),),
                    SizedBox(height: 20,),
                  Text("Read More",style: TextStyle(color: Colors.white),)
                  ],
                )

            )
          ],
        ),
      ),

    ),
  );
}