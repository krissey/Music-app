import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_fade/image_fade.dart';
import 'package:musicapp/controllers/splash_controller.dart';
import 'package:musicapp/widget/buttonwidget.dart';
import 'package:musicapp/widget/textwidget.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Obx(() => Column(
            children: controller.bodyData
                .where((e) =>
                    e['position'] as int == controller.currentShowing.value)
                .map((element) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: ImageFade(
                            // whenever the image changes, it will be loaded, and then faded in:
                            image: AssetImage(element['image'].toString()),

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
                                Center(
                                    child: CircularProgressIndicator(
                                        value: progress)),

                            // displayed when an error occurs:
                            errorBuilder: (context, error) => Container(
                              color: const Color(0xFF6F6D6A),
                              alignment: Alignment.center,
                              child: const Icon(Icons.warning,
                                  color: Colors.black26, size: 128.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextWidget(
                              text: element['title'].toString(),
                              color: Colors.black,
                              fontsize: 25,
                              fontfamily: '',
                              fontWeight: FontWeight.w600,
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextWidget(
                                text: element['subTitle'].toString(),
                                color: Color(element['primaryColor'])
                                    .withOpacity(0.4),
                                fontsize: 13,
                                fontfamily: '',
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.center),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextWidget(
                              text: element['description'].toString(),
                              color: Color(element['primaryColor']),
                              fontsize: 14,
                              fontfamily: '',
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: InkWell(
                            child: const ButtonWidget(
                              width: 250,
                              height: 60,
                              color: Colors.black,
                              radius: 60,
                              widget: TextWidget(
                                  text: "Next",
                                  color: Color(0xffFFFFFF),
                                  fontsize: 15,
                                  fontfamily: '',
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center),
                            ),
                            onTap: () {
                              controller.changeCurrentShowing();
                            },
                          ),
                        )
                      ],
                    ))
                .toList(),
          )),
    ));
  }
}
