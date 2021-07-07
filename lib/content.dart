import 'package:flutter/material.dart';

import 'data.dart';

// ignore: use_key_in_widget_constructors
class Content extends StatefulWidget {

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {

  int cardIndex = 0;
  late double height,width;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white.withOpacity(0.9),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: [
            Container(
              width: width, height: width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [Data.contentShadow],
                borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: width,height: width * 0.4,
                  child: PageView(
                    onPageChanged: (index) {
                        setState(() {
                          cardIndex = index;
                        });
                    },
                    children: [
                      Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/dummy-1.png'),fit: BoxFit.cover)),width: width,),
                      Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/dummy.png'),fit: BoxFit.cover)),width: width,),
                      Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/dummy-1.png'),fit: BoxFit.cover)),width: width,),
                      Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/dummy.png'),fit: BoxFit.cover)),width: width,),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 25),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedContainer(duration: const Duration(milliseconds: 200),width: cardIndex == 0 ? 20 : 10,height: cardIndex == 0 ? 7 : 5,decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(3.5)),color: cardIndex == 0 ? Colors.deepPurple : Colors.grey,),),
                    const SizedBox(width: 5,height: 10,),
                    AnimatedContainer(duration: const Duration(milliseconds: 200),width: cardIndex == 1 ? 20 : 10,height: cardIndex == 1 ? 7 : 5,decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(3.5)),color: cardIndex == 1 ? Colors.deepPurple : Colors.grey,),),
                    const SizedBox(width: 5,height: 10,),
                    AnimatedContainer(duration: const Duration(milliseconds: 200),width: cardIndex == 2 ? 20 : 10,height: cardIndex == 2 ? 7 : 5,decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(3.5)),color: cardIndex == 2 ? Colors.deepPurple : Colors.grey,),),
                    const SizedBox(width: 5,height: 10,),
                    AnimatedContainer(duration: const Duration(milliseconds: 200),width: cardIndex == 3 ? 20 : 10,height: cardIndex == 3 ? 7 : 5,decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(3.5)),color: cardIndex == 3 ? Colors.deepPurple : Colors.grey,),),
                  ],
                )
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              width: width,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [Data.contentShadow]
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("My Admissions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                  SizedBox(width: 1,height: 10,),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                      maxLines: 3,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 1,child: featureCard("College Predictor"),),
                    const SizedBox(width: 15,height: 1,),
                    Expanded(flex: 1,child: featureCard("Degree Selector"),),
                  ],
                ),
                const SizedBox(width: 1,height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 1,child: featureCard("My Coaching"),),
                    const SizedBox(width: 15,height: 1,),
                    Expanded(flex: 1,child: featureCard("Overseas Admission"),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text("Blogs for you",style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.bold),),
                Expanded(child: SizedBox(),),
                Text("View more",style: TextStyle(color: Colors.blueAccent,fontSize: 16,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(
            width: width, height: width * 0.375,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              children: [
                blogCard(),
                blogCard(),
                blogCard()
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget blogCard() {

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: width * 0.5,height: width * 0.35,
        padding: const EdgeInsets.all(7.5),
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [Data.contentShadow]
        ),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/dummy.png'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),),
            ),
            const SizedBox(height: 5,width: 1,),
            const Expanded(
              flex: 3,
              child: Text(
                  "Lorem ipsum dolor sit amet consectetur.",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
                  maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );

  }


  Widget featureCard(String title) {

    return SizedBox(
      height: width * 0.135 + 5,
      child: Stack(
        children: [
          Container(height: width * 0.135 + 5,),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: width * 0.135,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [Data.contentShadow],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text(title,style: const TextStyle(color: Colors.blueAccent,fontSize: 14,fontWeight: FontWeight.w600),),),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 60,height: 16,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.redAccent),
              child: const Center(child: Text("COMMING SOON",style: TextStyle(color: Colors.white,fontSize: 7,fontWeight: FontWeight.bold),)),
            ),
          )
        ],
      ),
    );

  }

}
