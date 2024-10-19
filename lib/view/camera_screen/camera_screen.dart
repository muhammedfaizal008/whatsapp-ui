// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _cameraController;
  List<CameraDescription>? cameras;
  bool isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    // Set system navigation bar to visible with a transparent color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black.withOpacity(0.5), // Semi-transparent navigation bar
      systemNavigationBarIconBrightness: Brightness.light,    // Icons in the navigation bar will be light
      statusBarColor: Colors.transparent,                     // Status bar transparent
      statusBarIconBrightness: Brightness.light,              // Icons in the status bar will be light
    ));
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    if (cameras!.isNotEmpty) {
      _cameraController = CameraController(
        cameras![0],
        ResolutionPreset.high,
      );
      await _cameraController?.initialize();
      setState(() {
        isCameraInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,                         
        systemOverlayStyle: SystemUiOverlayStyle.light, 
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          Navigator.pop(context);
        },
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            child: Icon(Icons.flash_off_outlined)
          ),SizedBox(width: 10,)
        ],
      ),
      body: isCameraInitialized
          ? Stack(
            children: [
              // Camera preview as the background
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: CameraPreview(_cameraController!),
              ),

              // Add a semi-transparent overlay
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.3), // Overlay color
                ),
              ),

              // Add a floating button at the bottom center
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.photo_outlined,color: Colors.white,size: 40,)),
                    ElevatedButton(
                      onPressed: () {
                        // Capture or any other action
                      },
                      child: Icon(Icons.camera_alt, size: 40,color: Colors.black,),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        if (cameras!.length > 1) {
                          int newCameraIndex = cameras![0] == _cameraController?.description ? 1 : 0;
                          _cameraController = CameraController(
                            cameras![newCameraIndex],
                            ResolutionPreset.high,
                          );
                          await _cameraController?.initialize();
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.rotate_left_outlined, color: Colors.white, size: 40),
                    ),

                  ],
                ),
              ),

              
            ],
          )
          : Center(child: CircularProgressIndicator()
          ),
    );
  }
}
