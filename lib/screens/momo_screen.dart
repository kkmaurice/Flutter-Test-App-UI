import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MomoScreen extends StatelessWidget {
  const MomoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(const FaIcon(FontAwesomeIcons.arrowLeft).icon,
                          size: 19),
                      Icon(const FaIcon(FontAwesomeIcons.circleQuestion).icon,
                          size: 19),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Sending 100.00 GHS to\nJohn Smith',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 20,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  color: const Color(0xFFE0F7FE),
                  child: const Text(
                    'Your transfer status',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/clarity_dot-circle-line.png'),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Text(
                          'Order placed',
                          style: TextStyle(
                            color: Color(0xFF008AA7),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.50,
                          ),
                        ),
                      ),
                      const Text(
                        '25 Oct',
                        style: TextStyle(
                          color: Color(0xFF5D5D5D),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Image.asset(
                          'assets/images/clarity_dot-circle-line (1).png'),
                      const SizedBox(width: 20),
                      const Text(
                        'Processing',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset(
                          'assets/images/icons8_finish-flag.png',
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Text(
                          'Completed',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  color: const Color(0xFFE0F7FE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Summary',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Hide',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Transfer number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '12345678',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'They get',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '100.00 GHS',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'You sent',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '39.17 PLN',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Transfer fee',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '+4.00 PLN',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Total paid',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '43.17 PLN',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                    'View Summary and Receipt',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  color: const Color(0xFFE0F7FE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Mobile Money Transfer details',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Hide',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Mobile account number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '12345678',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  color: const Color(0xFFE0F7FE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Receipt details',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Hide',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        'John Smith',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Mobile number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        '123456789',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'City',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        'Accra',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Country',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Text(
                        'Ghana',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  color: const Color(0xFFE0F7FE),
                  child: const Text(
                    'Need to change something?',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Text(
                    'Have you entered the wrong name, contact or account details?',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Update recipient’s details',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      Transform.scale(
                          scale: 1.2,
                          child:
                              Image.asset('assets/images/Arrow - Down 4.png')),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Change payout method',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      Transform.scale(
                          scale: 1.2,
                          child:
                              Image.asset('assets/images/Arrow - Down 4.png')),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Request cancellation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 1.50,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 134,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF001B21),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
