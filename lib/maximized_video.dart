import 'package:flutter/material.dart';
import 'main.dart';

class MaximizedVideo extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // final String title;
  // final Widget content;

  MaximizedVideo({
    Key? key,
    // required Text content,
    // required String title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Bag Counter',
        ),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            // Handle home icon press
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  var cam2Controller;
                  var cam1Controller;
                  var cam3Controller;
                  return Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 2.2,
                      height: MediaQuery.of(context).size.width * 0.3,
                      child: AlertDialog(
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white)),
                        title: const Text('Camera Settings'),
                        content: Column(
                          children: [
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'CAM1 IP address',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(width: 16),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        child: TextFormField(
                                          controller: cam1Controller,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 8.0),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            // suffixIcon: IconButton(
                                            //   onPressed: () {
                                            //     // Handle the zoom_in_map icon press here
                                            //   },
                                            //   icon: const Icon(Icons.zoom_out_map),
                                            // ),
                                          ),
                                          validator: (value) {
                                            final ipRegExp = RegExp(
                                              r'^([0-9]{1,3}\.){3}[0-9]{1,3}$',
                                              caseSensitive: false,
                                              multiLine: false,
                                            );
                                            if (value == null ||
                                                value.isEmpty) {
                                              // return 'Please enter a valid IP address';
                                            } else if (!ipRegExp
                                                .hasMatch(value)) {
                                              return 'Please enter a valid IP address';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'CAM2 IP address',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(width: 16),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        child: TextFormField(
                                          controller: cam2Controller,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 8.0),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            // suffixIcon: IconButton(
                                            //   onPressed: () {
                                            //     // Handle the zoom_in_map icon press here
                                            //   },
                                            //   icon: const Icon(Icons.zoom_out_map),
                                            // ),
                                          ),
                                          validator: (value) {
                                            final ipRegExp = RegExp(
                                              r'^([0-9]{1,3}\.){3}[0-9]{1,3}$',
                                              caseSensitive: false,
                                              multiLine: false,
                                            );
                                            if (value == null ||
                                                value.isEmpty) {
                                              // return 'Please enter a valid IP address';
                                            } else if (!ipRegExp
                                                .hasMatch(value)) {
                                              return 'Please enter a valid IP address';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'CAM3 IP address',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(width: 16),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        child: TextFormField(
                                          controller: cam3Controller,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 8.0),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            // suffixIcon: IconButton(
                                            //   onPressed: () {
                                            //     // Handle the zoom_in_map icon press here
                                            //   },
                                            //   icon: const Icon(Icons.zoom_out_map),
                                            // ),
                                          ),
                                          validator: (value) {
                                            final ipRegExp = RegExp(
                                              r'^([0-9]{1,3}\.){3}[0-9]{1,3}$',
                                              caseSensitive: false,
                                              multiLine: false,
                                            );
                                            if (value == null ||
                                                value.isEmpty) {
                                              // return 'Please enter a valid IP address';
                                            } else if (!ipRegExp
                                                .hasMatch(value)) {
                                              return 'Please enter a valid IP address';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 65.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // Save the IP addresses
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.black,
                                            side: const BorderSide(
                                                color: Colors.white),
                                          ),
                                          child: const Text('Save'),
                                        ),
                                        const SizedBox(width: 16),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.black,
                                            side: const BorderSide(
                                                color: Colors.white),
                                          ),
                                          child: const Text('Cancel'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Add your page content here
          Container(
            color: Colors.black,
            child: Stack(
              children: const [
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Text(
                    'CAM:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Add zoom in and zoom out icons here
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  color: Colors.grey[700],
                  iconSize: 70.0,
                  onPressed: () {
                    // Implement zoom in functionality
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle),
                  color: Colors.grey[700],
                  iconSize: 70.0,
                  onPressed: () {
                    // Implement zoom out functionality
                  },
                ),
              ],
            ),
          ),
          // Add PTZ joystick controller here
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.grey[700],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_upward),
                      color: Colors.white,
                      iconSize: 25.0,
                      onPressed: () {
                        // Implement PTZ joystick upward movement
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          iconSize: 25.0,
                          onPressed: () {
                            // Implement PTZ joystick backward movement
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.circle),
                          color: Colors.white,
                          iconSize: 35.0,
                          onPressed: () {
                            // Implement PTZ joystick center button press
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          color: Colors.white,
                          iconSize: 25.0,
                          onPressed: () {
                            // Implement PTZ joystick forward movement
                          },
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_downward),
                      color: Colors.white,
                      iconSize: 25.0,
                      onPressed: () {
                        // Implement PTZ joystick downward movement
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CameraSelector extends StatefulWidget {
  final List<Map<String, String>> cameras;
  final void Function(String) onCameraSelected;

  CameraSelector({required this.cameras, required this.onCameraSelected});

  @override
  _CameraSelectorState createState() => _CameraSelectorState();
}

class _CameraSelectorState extends State<CameraSelector> {
  String _selectedCamera = '';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedCamera,
      items: widget.cameras.map((camera) {
        return DropdownMenuItem<String>(
          value: camera['ip'],
          child: Text(camera['name']!),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedCamera = value!;
          widget.onCameraSelected(_selectedCamera);
        });
      },
      hint: Text('Select a camera'),
    );
  }
}
