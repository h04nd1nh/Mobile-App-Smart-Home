import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPage();
}

class _DataPage extends State<DataPage> {
  bool lighSwitched = false;
  String lightStatus = 'Off';
  bool fanSwitched = false;
  String fanStatus = 'Off';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(24, 50, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Data',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF142348),
              ),
            ),
            Wrap(
              spacing: 10,
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                Card(
                  surfaceTintColor: const Color(0xFF5F56FF),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: 150,
                      height: 165,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'assets/img/light.png',
                                height: 50,
                                width: 50,
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF142348),
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            activeColor: const Color(0xFFFFFFFF),
                            activeTrackColor: const Color(0xFF576BF5),
                            inactiveTrackColor: const Color(0xFFE4EAFF),
                            inactiveThumbColor: const Color(0xFF576BF5),
                            value: lighSwitched,
                            onChanged: (value) {
                              setState(() {
                                lighSwitched = value;
                                if (value) {
                                  lightStatus = 'On';
                                } else {
                                  lightStatus = 'Off';
                                }
                              });
                            },
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
                      width: 150,
                      height: 165,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'assets/gif/fan.gif',
                                height: 55,
                                width: 55,
                                alignment: Alignment.topLeft,
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF142348),
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            activeColor: const Color(0xFFFFFFFF),
                            activeTrackColor: const Color(0xFF576BF5),
                            inactiveTrackColor: const Color(0xFFE4EAFF),
                            inactiveThumbColor: const Color(0xFF576BF5),
                            value: fanSwitched,
                            onChanged: (value) {
                              setState(() {
                                fanSwitched = value;
                                if (value) {
                                  fanStatus = 'On';
                                } else {
                                  fanStatus = 'Off';
                                }
                              });
                            },
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
    );
  }

  Widget? lightWidget() {
    if (lighSwitched) {
      return Image.asset(
        'assets/img/light.img',
        height: 125.0,
        width: 125.0,
      );
    }

    return Image.asset(
      'assets/gif/light.gif',
      height: 125.0,
      width: 125.0,
    );
  }
}
