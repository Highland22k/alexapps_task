import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int currentindex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('تفاصيل الطلب '),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.keyboard_arrow_left_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                  items: [
                    Image.asset('assets/images/box.jpg'),
                    Image.asset('assets/images/box.jpg'),
                    Image.asset('assets/images/box.jpg'),
                    Image.asset('assets/images/box.jpg'),
                    Image.asset('assets/images/box.jpg'),
                  ],
                  options: CarouselOptions(
                    autoPlay: false,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                  )),
              Center(
                child: DotsIndicator(
                  dotsCount: 5,
                  position: currentindex,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.75),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/saudi.jpeg'),
                    ),
                    title: Text('ابو فهد عبد العزيز'),
                    subtitle: Text('السعودية'),
                  )),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              const Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(Icons.location_pin),
                      title: Text('موقع التحميل'),
                      subtitle: Text('1097 Daju Ridge'),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Icon(Icons.location_pin),
                      title: Text('موقع التحميل'),
                      subtitle: Text('1097 Daju Ridge'),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      ),
                      title: Text('وقت التحميل'),
                      subtitle: Column(
                        children: [Text('04 jul 2021'), Text('Pm12:12')],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      ),
                      title: Text('وقت  التسليم'),
                      subtitle: Column(
                        children: [Text('04 jul 2021'), Text('Am12:12 ')],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const ListTile(
                leading: SizedBox(
                  width: 30,
                  height: 35,
                  child: Image(image: AssetImage('assets/images/package.jpeg')),
                ),
                title: Text('وزن الشحنة'),
                trailing: Text(
                  '100 طن',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const ListTile(
                leading: SizedBox(
                  width: 30,
                  height: 35,
                  child: Image(image: AssetImage('assets/images/package.jpeg')),
                ),
                title: Text('عدد الحاويات'),
                trailing:
                    Text('60 صندوق', style: TextStyle(color: Colors.grey)),
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const ListTile(
                leading: SizedBox(
                  width: 30,
                  height: 40,
                  child: Image(image: AssetImage('assets/images/truck.jpg')),
                ),
                title: Text('عدد المركبات'),
                trailing:
                    Text('40 شاحنة', style: TextStyle(color: Colors.grey)),
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const ListTile(
                leading: SizedBox(
                  width: 30,
                  height: 40,
                  child: Image(image: AssetImage('assets/images/truck.jpg')),
                ),
                title: Text('نوع المركبات'),
                trailing: Text('دينا-دينا يطحاء',
                    style: TextStyle(color: Colors.grey)),
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const Text(
                'اريد توصيل شحنة خشب الي ميناء جدة وزن الشحن 100 ط    ن ',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  child: Image.asset('assets/images/location.jpeg'),
                ),
              ),
              const Divider(
                height: 2.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Icon(Icons.arrow_upward_outlined),
                  ),
                  const Text('تحديد السعر بين العميل و السائق '),
                  const Row(
                    children: [
                      Text('السعر الحالي '),
                      Text(
                        '2500 ريال ',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Icon(
                              Icons.wallet,
                              color: Colors.black54,
                            )),
                          ),
                          const Text('قدم عرض')
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child:
                                    Icon(Icons.check, color: Colors.black54)),
                          ),
                          const Text('موافقة')
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child:
                                    Icon(Icons.cancel, color: Colors.black54)),
                          ),
                          const Text('رفض')
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
