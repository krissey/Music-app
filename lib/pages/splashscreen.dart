import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_fade/image_fade.dart';
import 'package:musicapp/widget/textwidget.dart';

class SplashScreenView extends GetView{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.only(top: 20.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: ImageFade(
                  // whenever the image changes, it will be loaded, and then faded in:
                  image: AssetImage("assets/Ellipse -3.png"),

                  // slow fade for newly loaded images:
                  duration: const Duration(milliseconds: 900),

                  // if the image is loaded synchronously (ex. from memory), fade in faster:
                  syncDuration: const Duration(milliseconds: 150),

                  // supports most properties of Image:
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  width: 250,
                  // shown behind everything:
                  // placeholder: Container(
                  //   color: const Color(0xFFCFCDCA),
                  //   alignment: Alignment.center,
                  //   child: const Icon(Icons.photo, color: Colors.white30, size: 128.0),
                  // ),

                  // shows progress while loading an image:
                  loadingBuilder: (context, progress, chunkEvent) =>
                      Center(child: CircularProgressIndicator(value: progress)),

                  // displayed when an error occurs:
                  errorBuilder: (context, error) => Container(
                    color: const Color(0xFF6F6D6A),
                    alignment: Alignment.center,
                    child: const Icon(Icons.warning, color: Colors.black26, size: 128.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextWidget(text: "Harmony", color: Color(0xff335571), fontsize: 25, fontfamily: '', fontWeight: FontWeight .w600, textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextWidget(text: "Discover.Listen.Enjoy", color: Color(0xff335571), fontsize: 20, fontfamily: '', fontWeight: FontWeight .w600, textAlign: TextAlign.center),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextWidget(text: "Explore new music,listen to your favorites,and enjoy the ultimate music experience with our app", color: Color(0xff335571), fontsize: 15, fontfamily: '', fontWeight: FontWeight .w600, textAlign: TextAlign.center),
              ),
            ],
          ),
       )
    );
  }

}