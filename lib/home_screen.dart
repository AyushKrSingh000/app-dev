import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChnaged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/phone.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 400,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'Welcome TO MaxLearn 🤩',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Let\'s upgrade your\nlearning experience',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        '''Chanaging the way people learn by providing an interactive, engaging , and personilaized learing.''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    // isChnaged = !isChnaged;

                    // setState(() {});
                    Navigator.pushNamed(context, '/home');
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const WelcomeScreen(),
                    //   ),
                    // );
                  },
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.phone_android,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Continue With number',
                          style: TextStyle(
                            color: isChnaged ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  '''Or login with''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/download.png',
                            height: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/download (1).png',
                            height: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Facebook',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
