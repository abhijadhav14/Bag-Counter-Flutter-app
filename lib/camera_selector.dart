import 'package:flutter/material.dart';
import 'package:bag_counter/camera_selector.dart';
import 'maximized_video.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String _selectedCamera = '';

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> cameras = [
      {'name': 'Camera 1', 'ip': '192.168.0.101'},
      {'name': 'Camera 2', 'ip': '192.168.0.102'},
      {'name': 'Camera 3', 'ip': '192.168.0.103'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Selector'),
      ),
      body: Center(
        child: CameraSelector(
          cameras: cameras,
          onCameraSelected: (String ip) {
            setState(() {
              _selectedCamera = ip;
            });
          },
        ),
      ),
    );
  }
}
