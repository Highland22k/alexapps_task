import 'package:flutter/material.dart';

import 'home_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Center(child: Image.asset('assets/images/car.jpeg')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text('تسجيل دخول'),
              Row(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        SizedBox(
                            width: 30,
                            height: 100,
                            child: Image.asset(
                              'assets/images/saudi-arabia.png',
                              fit: BoxFit.contain,
                            )),
                        const SizedBox(width: 5),
                        const Text(
                          '966+',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 1,
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: '01284712921',
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
              Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.shade500,
                      width: 1,
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'كلمة المرور',
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: Icon(Icons.visibility_off)),
                  )),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const Text(
                'هل نسيت كلمة السر؟',
                style: TextStyle(fontSize: 16),
              ),
              Center(
                  child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text('تسجيل الدخول '),
                      ))),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              Row(
                children: [
                  const Text('ليس لديك حساب '),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'سجل الان ',
                        style: TextStyle(color: Colors.lightBlue),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
