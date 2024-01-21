import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';
import '../home_page/line_chart.dart';
import 'package:iot/config/router.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/svg/start_page_background.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 50, 24, 50),
            child: Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Smart Home',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFD8E4E8),
                    ),
                  ),
                ),
                const SizedBox(height: 67),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome Home',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFD8E4E8),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '''
No matter how far you go,
home will be your destination to return to. 
let's make your home comfortable
''',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFD8E4E8),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/img/human_start_page.png',
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                      backgroundColor: const Color(0xFF9A7265),
                      fixedSize: const Size(300, 48)),
                  onPressed: () {
                    print("test");
                    context.go(RouteName.home);
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
