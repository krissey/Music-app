import 'package:get/get.dart';

class SplashScreenController {
  /*
  *we usually do a put in the main.dart
  * create a new RXList
  * adding data to the list
  * add a variable RXInt
  * use the int to display data from the list
  * a function to switch the variable value(Rx)
  * wrap the column in splashscreen with
  * pass the function to the button
  * and trigger the function using button
  **/
  RxList bodyData = [
    {
      "image": "assets/Ellipse -1.png",
      "title": "Harmony Hub",
      "subTitle": "Discover. Listen.Enjoy.",
      "description": "Explore new music,listen to your favorites,and enjoy the ultimate music experience with our app",
      "primaryColor": 0xff335571,
      "secondaryColor": 0xff707070,
      "buttonText": "Power Up",
      "position": 0
    },
    {
      "image": "assets/image_2023_12_04T13_41_13_001Z.png",
      "title": "TuneWave",
      "subTitle": "Where Sound Meets Soul",
      "description": "Let the power of music touch your soul",
      "primaryColor": 0xff485045,
      "secondaryColor": 0xffC800C2,
      "buttonText": "songs picked",
      "position": 1
    },{
      "image": "assets/Ellipse -2.png",
      "title": "TuneWave",
      "subTitle": "Your Gateway",
      "description": "Step into the world of endless",
      "primaryColor": 0xff485045,
      "secondaryColor": 0xffC800C2,
      "buttonText": "songs picked",
      "position": 2
    },{
      "image": "assets/Ellipse -3.png",
      "title": "Harmony Hub",
      "subTitle": "Discover. Listen.Enjoy.",
      "description":
          "Explore new music,listen to your favorites,and enjoy the ultimate music experience with our app",
      "primaryColor": 0xff335571,
      "secondaryColor": "",
      "buttonText": "Power Up",
      "position": 3
    }
  ].obs;

  RxInt currentShowing = 0.obs;

  //this will change the value of title
  changeCurrentShowing() async {
    if(bodyData.length==currentShowing.value){
      return;
    }
    currentShowing.value = currentShowing.value + 1;
  }
}
