import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'maximized_dashboard.dart';
import 'maximized_video.dart';
import 'dart:core';
import 'video_player.dart';
import 'camera_selector.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bag Counter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final bool _isExpanded1 = false;
  final bool _isExpanded2 = false;
  final bool _isExpanded3 = false;
  final bool _isExpanded4 = false;
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2001),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2.24,
        padding: EdgeInsets.all(screenSize.width * 0.001),
        mainAxisSpacing: screenSize.width * 0.001,
        crossAxisSpacing: screenSize.width * 0.001,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MaximizedDashboard(
                    title: 'Dashboard',
                    content: Text('Dashboard'),
                  ),
                ),
              );
            },
            child: Container(
              color: Colors.black,
              child: Center(
                child: _isExpanded1
                    ? Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    : Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: screenSize.width * 0.001,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  // final DateTime? picked = await showDatePicker(
                                  //   context: context,
                                  //   initialDate: _selectedDate,
                                  //   firstDate: DateTime(1900),
                                  //   lastDate: DateTime(2100),
                                  // );
                                  // if (picked != null &&
                                  //     picked != _selectedDate) {
                                  //   setState(() {
                                  //     _selectedDate = picked;
                                  //   });
                                  // }
                                },
                                child: Text(
                                  DateFormat('dd/MM/yyyy, EEEE')
                                      .format(_selectedDate),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              SizedBox(height: screenSize.width * 0.015),
                              const Text(
                                'Dashboard',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MaximizedVideo(
                      // content: Text(''),
                      // title: '',
                      ),
                ),
              );
            },
            child: Container(
              color: Colors.black,
              child: Center(
                child: _isExpanded2
                    ? Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    : Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: screenSize.width * 0.001,
                              ),
                              SizedBox(height: screenSize.width * 0.015),
                              const Text(
                                'CAM1 :',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MaximizedVideo(
                      // title: 'Cam 2',
                      // content: Text('Maximized Cam 2 Content'),
                      ),
                ),
              );
            },
            child: Container(
              color: Colors.black,
              child: Center(
                child: _isExpanded3
                    ? Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    : Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: screenSize.width * 0.001,
                              ),
                              SizedBox(height: screenSize.width * 0.015),
                              const Text(
                                'CAM2 :',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MaximizedVideo(
                      // title: 'Cam 3',
                      // content: Text('Maximized Cam 3 Content'),
                      ),
                ),
              );
            },
            child: Container(
              color: Colors.black,
              child: Center(
                child: _isExpanded4
                    ? Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    : Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: screenSize.width * 0.001,
                              ),
                              SizedBox(height: screenSize.width * 0.015),
                              const Text(
                                'CAM3 :',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
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
