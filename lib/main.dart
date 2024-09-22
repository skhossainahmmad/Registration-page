import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: "Registration",
      home: MyHomePage(),
    );
  }
}

// Stateful widget for the registration page
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedOption =
      'Personal'; // Tracks the selected radio option (Personal/Company)
  String _gender = 'Male'; // Tracks the selected gender (Male/Female)

  // Function to launch Terms & Conditions URL
  Future<void> _launchURL() async {
    const url = 'https://yourtermsandconditionsurl.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url'; // Error handling if URL can't be launched
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true, // Centers the title in the AppBar
      ),
      body: SafeArea(
        child: Container(
          height:
              MediaQuery.of(context).size.height, // Takes full screen height
          width: MediaQuery.of(context).size.width, // Takes full screen width
          color: Colors.white, // Sets background color to white
          child: Column(
            children: [
              // Divider at the top of the form
              Divider(
                color: Color.fromARGB(255, 211, 210, 210),
                height: 10,
                thickness: 2,
                indent: 45,
                endIndent: 45,
              ),

              // Radio buttons for Personal/Company selection
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Personal',
                            groupValue: _selectedOption,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption =
                                    value!; // Updates the selected option
                              });
                            },
                          ),
                          const Text('Personal'),
                        ],
                      ),
                      SizedBox(width: 20), // Space between radio buttons
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Company',
                            groupValue: _selectedOption,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value!;
                              });
                            },
                          ),
                          const Text('Company'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Divider between sections
              Divider(
                color: Color.fromARGB(255, 211, 210, 210),
                height: 10,
                thickness: 2,
                indent: 45,
                endIndent: 45,
              ),

              // Email input field with icon
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              border:
                                  InputBorder.none, // Removes default border
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Name input field with icon
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Password input field with icon
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Divider before gender radio buttons
              Divider(
                color: Color.fromARGB(255, 211, 210, 210),
                height: 10,
                thickness: 2,
                indent: 45,
                endIndent: 45,
              ),

              // Radio buttons for Male/Female gender selection
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(45),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Male',
                            groupValue: _gender,
                            onChanged: (String? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          const Text('Male'),
                        ],
                      ),
                      SizedBox(width: 20), // Space between radio buttons
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Female',
                            groupValue: _gender,
                            onChanged: (String? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          const Text('Female'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Divider before the Terms and Conditions text
              Divider(
                color: Color.fromARGB(255, 211, 210, 210),
                height: 10,
                thickness: 2,
                indent: 45,
                endIndent: 45,
              ),

              // Terms and Conditions text with a clickable link
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 45),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "By clicking Register, you agree on our ",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        TextSpan(
                          text: "Terms and Conditions",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Submit button
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  width: double.infinity, // Makes button take full width
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Button color
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
