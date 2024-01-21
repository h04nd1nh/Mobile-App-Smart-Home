import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'line_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 36, 16, 36),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Have A Good Day,',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF020D29),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hoan Dinh',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: const Color(0xFF586AF6),
                ),
                padding: const EdgeInsets.all(18),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'May 16, 2023 10:05 am',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              'Dream House',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              'Ha Dong, Ha Noi, Viet Nam',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '19°C',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 0.3,
                      color: Color(0xFFFFFFFF),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(90, 8, 17, 44)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/svg/temperature.svg"),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '19°C',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Temperature',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(90, 8, 17, 44)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/humadity.svg"),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '97%',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Humadity',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(90, 8, 17, 44)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/brightness.svg"),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '50 lx',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Brightness',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // TabBar
              Container(
                height: 60,
                child: TabBar(
                  indicatorColor: const Color(0xFF586AF6),
                  dividerColor: Colors.transparent,
                  labelColor: const Color(0xFF586AF6),
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Temperature'),
                    Tab(text: 'Humadity'),
                    Tab(text: 'Brightness'),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      height: 190, // Đặt chiều cao theo ý muốn
                      width: double.infinity, // Đặt chiều rộng theo ý muốn
                      child: PageView(
                        children: const [
                          LineChartPage(),
                        ],
                      ),
                    ),
                    Container(
                      height: 190, // Đặt chiều cao theo ý muốn
                      width: double.infinity, // Đặt chiều rộng theo ý muốn
                      child: PageView(
                        children: const [
                          LineChartPage(),
                        ],
                      ),
                    ),
                    Container(
                      height: 190, // Đặt chiều cao theo ý muốn
                      width: double.infinity, // Đặt chiều rộng theo ý muốn
                      child: PageView(
                        children: const [
                          LineChartPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Chart

              // Container(
              //   height: 190, // Đặt chiều cao theo ý muốn
              //   width: double.infinity, // Đặt chiều rộng theo ý muốn
              //   child: PageView(
              //     children: const [
              //       LineChartPage(),
              //     ],
              //   ),
              // ),

              // Container(
              //   height: 190, // Đặt chiều cao theo ý muốn
              //   width: double.infinity, // Đặt chiều rộng theo ý muốn
              //   child: PageView(
              //     children: const [
              //       LineChartPage(),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
