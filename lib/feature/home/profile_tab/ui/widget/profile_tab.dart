import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        title: Text(
          'Your Profile',
          style: AppStyles.f16sb().copyWith(
            color: '#FF6B00'.toColor(),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: AppStyles.screenW,
                  color: Colors.grey,
                  height: AppStyles.height(300),
                  child: Image.asset(
                    AppImage.profileBackground,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: AppStyles.height(50),
                              decoration: BoxDecoration(
                                color: '#2b2b2b'.toColor(),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                                border: BorderDirectional(
                                  top: BorderSide(
                                    color: '#FF6B00'.toColor(),
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const HorizontalSpace(35),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 128, 122, 122),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: '#FF6B00'.toColor(),
                                  width: 2,
                                ),
                              ),
                              child: FirebaseImage(
                                imagePath: '',
                                emptyImagePath: AppImage.defaultAvatar,
                                cardHeight: AppStyles.height(100),
                                cardWidth: AppStyles.height(100),
                              ),
                            ),
                            const HorizontalSpace(20),
                            Text('data',
                                style: AppStyles.f16sb()
                                    .copyWith(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text('data',
                style: AppStyles.f16sb().copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
