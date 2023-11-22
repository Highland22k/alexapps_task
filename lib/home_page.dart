import 'package:flutter/material.dart';
import 'package:ui_task/order_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabBar get _tabBar => TabBar(
          indicator: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          labelColor: Colors.grey,
          unselectedLabelColor: Colors.white,
          tabs: const [
            Tab(
              text: 'الطلبات',
            ),
            Tab(
              text: 'الجارية',
            ),
            Tab(
              text: 'المنتهية',
            ),
            Tab(
              text: 'الملغاة',
            ),
          ]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.grey), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment, color: Colors.grey),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble_rounded, color: Colors.grey),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.pending,
                      color: Colors.grey,
                    ),
                    label: ''),
              ]),
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'الطلبات ',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(color: Colors.grey, child: _tabBar),
            ),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey),
                            top: BorderSide(color: Colors.grey),
                            left: BorderSide(color: Colors.grey)),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/box.jpg'),
                        title: Column(
                          children: [
                            const Text('ابو فهد عبد العزيز'),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.02,
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 9,
                                ),
                                Text(
                                  '1097,Daju Ridge',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 6,
                                  color: Colors.lightBlue,
                                ),
                                Text(
                                  '1283,Cunema Extension',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis),
                                )
                              ],
                            ),
                          ],
                        ),
                        trailing: Container(
                          width: MediaQuery.sizeOf(context).width * 0.17,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: const Center(child: Text('السعر')),
                        ),
                        subtitle: const Text(
                          'اريد توصيل شحنة خشب الي ميناء جدة....',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey),
                            left: BorderSide(color: Colors.grey)),
                      ),
                      child: const Divider(
                        height: 2.0,
                        color: Colors.grey,
                        indent: 20.0,
                        endIndent: 20.0,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey),
                            bottom: BorderSide(color: Colors.grey),
                            left: BorderSide(color: Colors.grey)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.calendar_month),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.09,
                          ),
                          const Text(
                            '04 jul 2021',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderDetails()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            child: const Text(
                              'التفاصيل',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.03,
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.close))
                        ],
                      ),
                    )
                  ]),
            ),
            const Center(
                child: Text(
              'لا يوجد طلبات حاليا',
              style: TextStyle(fontSize: 16),
            )),
            const Center(
                child: Text(
              'لا يوجد طلبات حاليا',
              style: TextStyle(fontSize: 16),
            )),
            const Center(
                child: Text(
              'لا يوجد طلبات حاليا',
              style: TextStyle(fontSize: 16),
            ))
          ])),
    );
  }
}
