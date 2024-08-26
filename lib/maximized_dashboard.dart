import 'package:bag_counter/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MaximizedDashboard extends StatefulWidget {
  final String title;
  final Widget content;

  const MaximizedDashboard(
      {Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  _MaximizedDashboardState createState() => _MaximizedDashboardState();
}

class _MaximizedDashboardState extends State<MaximizedDashboard> {
  late DateTime _selectedDate;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'CAM1 IP address',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        const SizedBox(width: 16),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'CAM2 IP address',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        const SizedBox(width: 16),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'CAM3 IP address',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        const SizedBox(width: 16),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                      padding:
                                          const EdgeInsets.only(left: 65.0),
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
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.black, // Set the background color here
          ),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.width * 0.001,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _selectedDate =
                            _selectedDate.subtract(const Duration(days: 1));
                      });
                    },
                    icon: const Icon(Icons.arrow_left),
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: _selectedDate,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      );
                      if (picked != null && picked != _selectedDate) {
                        setState(() {
                          _selectedDate = picked;
                        });
                      }
                    },
                    child: Text(
                      DateFormat('dd/MM/yyyy, EEEE').format(_selectedDate),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _selectedDate =
                            _selectedDate.add(const Duration(days: 1));
                      });
                    },
                    icon: const Icon(Icons.arrow_right),
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: screenSize.width * 0.015),
              Expanded(child: widget.content),
            ],
          ),
        ));
  }
}
