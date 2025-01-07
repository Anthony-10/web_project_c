import 'package:flutter/material.dart';
import 'package:web_project_c/responsive.dart';

class MainImage extends StatefulWidget {
  const MainImage({super.key});

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return (!Responsive.isMobile(context))
        ? Stack(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mainImage.jpg'),
                      fit: BoxFit.fill),
                ),
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Colors.black87, Colors.black12])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50,top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("WORKOUT\n"
                              "WITH ME",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 120,color: Colors.white),),
                          const Text("A huge selection of health and fitness content, healthy recipes and\n"
                              "transformation stories to help you get fit and stay fit",style: TextStyle(color: Colors.white),),
                         /* DefaultTextStyle(
                              style: const TextStyle(
                                  color: Colors.white,),
                              child: Center(
                                child: AnimatedTextKit(animatedTexts: [
                                  TypewriterAnimatedText("WORKOUT\n"
                                      "WITH ME\n"),
                                  TypewriterAnimatedText("A huge selection of health and fitness content, healthy recipes and\n"
                                      "transformation stories to help you get fit and stay fit")
                                ],
                                    totalRepeatCount: 1,
                                ),
                              )),*/
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: (){},
                            onHover: (val){
                              setState(() {
                                isHover = val;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(color: isHover ? Colors.transparent:Colors.lightGreen),
                              padding: const EdgeInsets.all(10),
                              child: const Text("Join Club Now!", style: TextStyle(color: Colors.white),),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          )
        : Image.asset('assets/images/mainImage.jpg',
            width: double.infinity);
  }
}
