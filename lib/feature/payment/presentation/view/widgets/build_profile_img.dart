import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view_model/card_controller.dart';

class BuildProfileImg extends StatelessWidget {

  final CardController cardController = Get.put(CardController());  
   BuildProfileImg({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetX(builder: (CardController cardController) {
              return CircleAvatar(
                radius: 30,
                backgroundImage: (cardController.fileImagePath.value.isEmpty)
                    ? AssetImage(cardController.assetImagePath.value)
                    : FileImage(File(cardController.fileImagePath.value)),
              );
            }),
          ),
          onTap: () async {
             showImageSourceOptions(
              context,
              () async {
                await cardController.pickProfileImageFromCamera();
              },
              () async {
                await cardController.pickProfileImageFromGallery();
              },
            );  
            
          },
        );
  }


 void showImageSourceOptions(
      BuildContext context, Function pickFromCamera, Function pickFromGallery) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.brownRosy,
          title: const Text('Select Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  pickFromCamera();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  pickFromGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }

}