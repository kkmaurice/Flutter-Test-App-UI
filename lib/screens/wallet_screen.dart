import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE0F7FE),
        body: Column(children: [
          // TOP CONTAINER WITH THE MAIN ELEMENTS
          _topContainer(context),
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            clipBehavior: Clip.antiAlias,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x38000000),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  _paysWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Transactions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF001B21),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.50,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'View All',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF2A4146),
                            fontSize: 12,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 1.50,
                          ),
                        )
                      ],
                    ),
                  ),
                  _transactionsList(
                      iconUrl: 'assets/images/dribble.png',
                      title: 'Dribble',
                      status: 'Completed',
                      statusColor: const Color(0xFF15CF74)),
                  _transactionsList(
                      iconUrl: 'assets/images/spotify.png',
                      title: 'Spotify',
                      status: 'In Progress',
                      statusColor: const Color(0xFFFB923C)),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Actions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF001B21),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.50,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'View All',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF2A4146),
                            fontSize: 12,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 1.50,
                          ),
                        )
                      ],
                    ),
                  ),
                  _actionsList(
                      title: 'Link Request',
                      iconUrl: 'assets/images/link.png',
                      amount: '500.00',
                      status: 'Completed',
                      statusColor: const Color(0xFF15CF74)),
                  _actionsList(
                      title: 'Link Request',
                      iconUrl: 'assets/images/link.png',
                      amount: '500.00',
                      status: 'Completed',
                      statusColor: const Color(0xFF15CF74)),
                ],
              ),
            ),
          ))
        ]),
      ),
    );
  }

  Widget _actionsList(
      {required String title,
      required String iconUrl,
      required String amount,
      required String status,
      required Color statusColor}) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: const ShapeDecoration(
          color: Color(0xFFE0F7FE),
          shape: OvalBorder(),
        ),
        child: Transform.scale(
          scale: 0.6,
          child: Image.asset(
            iconUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        title,
        //textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF001B21),
          fontSize: 13,
          fontFamily: 'IBM Plex Sans',
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
      ),
      subtitle: const Opacity(
        opacity: 0.50,
        child: Text(
          '2021.05.04',
          style: TextStyle(
            color: Color(0xFF8E8D8D),
            fontSize: 10,
            fontFamily: 'IBM Plex Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      trailing: Column(
        children: [
          Text(
            '-\$ $amount',
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF2A4146),
              fontSize: 13,
              fontFamily: 'IBM Plex Sans',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          Opacity(
            opacity: 0.50,
            child: Text(
              status,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: statusColor,
                fontSize: 10,
                fontFamily: 'IBM Plex Sans',
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0.30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _transactionsList(
      {required String title,
      required String iconUrl,
      required String status,
      required Color statusColor}) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: const ShapeDecoration(
          color: Color(0xFFE0F7FE),
          shape: OvalBorder(),
        ),
        child: Transform.scale(
          scale: 0.6,
          child: Image.asset(
            iconUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        title,
        //textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF001B21),
          fontSize: 13,
          fontFamily: 'IBM Plex Sans',
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
      ),
      subtitle: const Opacity(
        opacity: 0.50,
        child: Text(
          '2021.05.04',
          style: TextStyle(
            color: Color(0xFF8E8D8D),
            fontSize: 10,
            fontFamily: 'IBM Plex Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      trailing: Column(
        children: [
          const Text(
            '-\$ 99.00',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF2A4146),
              fontSize: 13,
              fontFamily: 'IBM Plex Sans',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          Opacity(
            opacity: 0.50,
            child: Text(
              status,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: statusColor,
                fontSize: 10,
                fontFamily: 'IBM Plex Sans',
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0.30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _paysWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 10,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 153,
            height: 66,
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFE0F7FE)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE0F7FE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/Login2.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pay-In',
                      style: TextStyle(
                        color: Color(0xFF2A4146),
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.30,
                      ),
                    ),
                    Text(
                      '\$4,600.00',
                      style: TextStyle(
                        color: Color(0xFF001B21),
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.50,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // second container
          Container(
            width: 153,
            height: 66,
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFE0F7FE)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE0F7FE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/Arrow - Right Square2.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pay-Out',
                      style: TextStyle(
                        color: Color(0xFF2A4146),
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0.30,
                      ),
                    ),
                    Text(
                      '\$1,498.66',
                      style: TextStyle(
                        color: Color(0xFF001B21),
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.50,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _topContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 390,
      decoration: const BoxDecoration(color: Color(0xFFE0F7FE)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(Icons.arrow_back,),
                // ),
                Icon(const FaIcon(FontAwesomeIcons.arrowLeft).icon, size: 19),
                const Text(
                  'Activity',
                  style: TextStyle(
                    color: Color(0xFF001B21),
                    fontSize: 16,
                    fontFamily: 'IBM Plex Sans',
                    fontWeight: FontWeight.w700,
                    height: 1.40,
                  ),
                ),
                Icon(const FaIcon(FontAwesomeIcons.circleQuestion).icon,
                    size: 19),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            width: 207,
            height: 111,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Opacity(
                              opacity: 0.60,
                              child: Text(
                                'Total Spending',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF008AA7),
                                  fontSize: 12,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '\$450.49',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 44,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Day',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF008AA7),
                                      fontSize: 10,
                                      fontFamily: 'IBM Plex Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 14),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'Week',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF008AA7),
                                    fontSize: 10,
                                    fontFamily: 'IBM Plex Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 14),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Month',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF008AA7),
                                      fontSize: 10,
                                      fontFamily: 'IBM Plex Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 13),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: ShapeDecoration(
                          color: Color(0x4C008AA7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Year',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF008AA7),
                                      fontSize: 10,
                                      fontFamily: 'IBM Plex Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Stack(children: [
            Image.asset(
              'assets/images/Vector 5.png',
              width: MediaQuery.of(context).size.width,
              height: 170,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 110,
              left: 200,
              child: Container(
                width: 22.58,
                height: 22.58,
                decoration: const ShapeDecoration(
                  color: Color(0xFF008AA7),
                  shape: OvalBorder(
                    side: BorderSide(width: 2.50, color: Colors.white),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x264A5568),
                      blurRadius: 13,
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            )
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 20,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Jan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Feb',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Mar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    color: Color(0x4C008AA7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Apr',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'May',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Jun',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Jul',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
