
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

  bool lighSwitched = false;
  String lightStatus = 'Off';
  bool fanSwitched = false;
  String fanStatus = 'Off';
  int temp = 19;
  int human = 80;
  int light = 5500;

  Color tempColor(int temp) {
    if (temp < 15) {
      return Color(0xff0072FF);;
    }
    if (temp > 30) {
      return Color(0xffFF5733);
    }

    return Color(0xff86C8FF);
  }

  Color humanColor(int human) {
    if (temp < 30) {
      return Color(0xffE5E5E5);;
    }
    if (temp > 70) {
      return Color(0xff005C99);    }

    return Color(0xff8AB6D6);
  }

  Color lightColor(int light) {
    if (temp < 500) {
      return Color(0xffFF5733);;
    }
    if (temp > 1000) {
      return Color(0xffFFE600);
    }

    return Color(0xffFFB74D);
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget fanStatusImage() {
    if (fanSwitched) {
      return Image.asset(
        'assets/gif/fan.gif',
        height: 55,
        width: 55,
        alignment: Alignment.topLeft,
      );
    } else {
      return Image.asset(
        'assets/img/fan.png',
        height: 55,
        width: 55,
        alignment: Alignment.topLeft,
      );
    }
  }

  Widget lightStatusImage() {
    if (lighSwitched) {
      return Image.asset(
        'assets/gif/light.gif',
        height: 55,
        width: 55,
        alignment: Alignment.topLeft,
      );
    } else {
      return Image.asset(
        'assets/img/light.png',
        height: 55,
        width: 55,
        alignment: Alignment.topLeft,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(24, 50, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Have A Good Day,',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF142348),
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
                  color: Color(0xFF142348),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
                            'My House',
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
                            borderRadius: BorderRadius.circular(15),
                            color: tempColor(temp),
                            ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/temperature.svg"),
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
                            borderRadius: BorderRadius.circular(15),
                            color: humanColor(human),
                            ),
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
                            borderRadius: BorderRadius.circular(15),
                            color: lightColor(light),
                            ),
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
            SizedBox(
              height: 50,
              child: TabBar(
                indicatorColor: const Color(0xFF586AF6),
                dividerColor: Colors.transparent,
                labelColor: const Color(0xFF586AF6),
                controller: _tabController,
                tabs: const [
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
                  SizedBox(
                    height: 190, // Đặt chiều cao theo ý muốn
                    width: double.infinity, // Đặt chiều rộng theo ý muốn
                    child: PageView(
                      children: [
                        LineChartPage(lineChartType: 'temp'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: PageView(
                      children: [
                        LineChartPage(
                          lineChartType: 'humidity',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: PageView(
                      children: [
                        LineChartPage(
                          lineChartType: 'light',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Device',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF142348),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        color: const Color(0xFFfffefe),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            width: 160,
                            height: 145,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    lightStatusImage(),
                                    Switch(
                                      activeColor: const Color(0xFFFFFFFF),
                                      activeTrackColor: const Color(0xFF576BF5),
                                      inactiveTrackColor:
                                          const Color(0xFFE4EAFF),
                                      inactiveThumbColor:
                                          const Color(0xFF576BF5),
                                      value: lighSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          lighSwitched = value;
                                          if (value) {
                                            lightStatus = 'Actived: 00:00:00';
                                          } else {
                                            lightStatus = 'Off';
                                          }
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Light',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF142348),
                                  ),
                                ),
                                Text(
                                  lightStatus,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF142348),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Card(
                        color: const Color(0xFFfffefe),
                        child: InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            width: 160,
                            height: 145,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    fanStatusImage(),
                                    Switch(
                                      activeColor: const Color(0xFFFFFFFF),
                                      activeTrackColor: const Color(0xFF576BF5),
                                      inactiveTrackColor:
                                          const Color(0xFFE4EAFF),
                                      inactiveThumbColor:
                                          const Color(0xFF576BF5),
                                      value: fanSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          fanSwitched = value;
                                          if (value) {
                                            fanStatus = 'Actived: 00:00:00';
                                          } else {
                                            fanStatus = 'Off';
                                          }
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Fan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF142348),
                                  ),
                                ),
                                Text(
                                  fanStatus,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF142348),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
