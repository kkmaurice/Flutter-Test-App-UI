// ignore_for_file: sized_box_for_whitespace, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badges;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFE0F7FE),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xFF008AA7),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'assets/images/lady.jpeg',
                          ), // no matter how big it is, it won't overflow
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 12,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          Text(
                            'New Genius',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 18,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  // LAST ROW
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            const FaIcon(
                              FontAwesomeIcons.tree,
                            ).icon,
                            color: const Color(0xFF008AA7),
                            size: 19,
                          ),
                          const SizedBox(width: 8),
                          badges.Badge(
                            position:
                                badges.BadgePosition.topEnd(top: -6, end: -4),
                            badgeContent: const Text(
                              '5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            badgeStyle: badges.BadgeStyle(
                              padding: const EdgeInsets.all(3),
                              borderRadius: BorderRadius.circular(10),
                              badgeColor: const Color(0xFFD80027),
                              elevation: 0,
                            ),
                            child: Icon(
                                const FaIcon(FontAwesomeIcons.bell).icon,
                                color: const Color(0xFF008AA7),
                                size: 19),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                              const FaIcon(FontAwesomeIcons.circleQuestion)
                                  .icon,
                              color: const Color(0xFF008AA7),
                              size: 19),
                          // IconButton(
                          //     // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          //     icon: FaIcon(FontAwesomeIcons.tree),
                          //     onPressed: () {

                          //     })
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            '10 000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 12,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            const FaIcon(FontAwesomeIcons.solidStarHalfStroke)
                                .icon,
                            color: const Color(0xFFFFDA44),
                            size: 19,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),

            // SECOND CONTAINER
            Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.35,
                padding: const EdgeInsets.all(20),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.15000000596046448),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFF008AA7),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Opacity(
                            opacity: 0.60,
                            child: Text(
                              'Total Balance',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 12,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(width: 110),
                          Icon(const FaIcon(FontAwesomeIcons.eye).icon,
                              color: const Color(0xFF008AA7), size: 19),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      '\$450.49',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF008AA7),
                        fontSize: 44,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0x4C008AA7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'USD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 10,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                                height: 1,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                                const FaIcon(FontAwesomeIcons.chevronDown).icon,
                                color: const Color(0xFF008AA7),
                                size: 14),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Divider(
                      color: const Color(0xFF008AA7).withOpacity(0.20),
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF008AA7).withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const ImageIcon(
                                AssetImage(
                                    'assets/images/arrowrightsquare.png'),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Pay out',
                              style: TextStyle(
                                color: Color(0xFF008AA7).withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.06,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF008AA7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const ImageIcon(
                                AssetImage('assets/images/login.png'),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Pay in',
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 12,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.06,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF008AA7).withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const ImageIcon(
                                AssetImage('assets/images/wallet.png'),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Exchange',
                              style: TextStyle(
                                color: const Color(0xFF008AA7).withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.06,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF008AA7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const ImageIcon(
                                AssetImage('assets/images/category.png'),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'More',
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 12,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.06,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE0F7FE),
                      blurRadius: 10.0,
                      spreadRadius: 40.0,
                      offset:
                          Offset(5.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 24),
                        child: SizedBox(height: 95, child: _rowBoxes(context)),
                      ),
                      const SizedBox(height: 20),
                      _accountBlocked(context),
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
                          title: 'Voucher NA23OA2343...',
                          iconUrl: 'assets/images/validating-ticket.png',
                          amount: '99.00',
                          status: 'In Progress',
                          statusColor: const Color(0xFFFB923C)),
                      _actionsList(
                          title: 'Link Request',
                          iconUrl: 'assets/images/link.png',
                          amount: '500.00',
                          status: 'Completed',
                          statusColor: const Color(0xFF15CF74)),
                      _actionsList(
                          title: 'Voucher NA23OA2343...',
                          iconUrl: 'assets/images/validating-ticket.png',
                          amount: '99.00',
                          status: 'In Progress',
                          statusColor: const Color(0xFFFB923C)),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Get started',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 63,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF008AA7)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFE0F7FE),
                                shape: OvalBorder(),
                              ),
                              child: Transform.scale(
                                scale: 0.6,
                                child: Image.asset(
                                  'assets/images/money.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    width: 234,
                                    child: Text(
                                      'Add money',
                                      style: TextStyle(
                                        color: Color(0xFF434343),
                                        fontSize: 14,
                                        fontFamily: 'IBM Plex Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 1.40,
                                        letterSpacing: 0.22,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 234,
                                    child: Text(
                                      'Get more from your account',
                                      style: TextStyle(
                                        color: Color(0xFF434343),
                                        fontSize: 12,
                                        fontFamily: 'IBM Plex Sans',
                                        fontWeight: FontWeight.w300,
                                        height: 1.40,
                                        letterSpacing: 0.22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(const FaIcon(FontAwesomeIcons.caretRight).icon,
                                color: const Color(0xFF008AA7), size: 22),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Recently paid',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      _makePaymentWidget(context),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Transactions',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      _transactionWidget(context),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Spending',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      _spendingWidget(context),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Budget',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      _budgetWidget(context),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Saving jars',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      _savingJarsWidget(context),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Exchange rates',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                      _exchangeRatesWidget(context),
                    ],
                  ),
                ),
              ),
            )
          ])),
    );
  }

  Widget _rowBoxes(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          height: 93,
          padding: const EdgeInsets.only(
            top: 6,
            left: 12,
            right: 10.0,
            bottom: 5,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF107AF9),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Invite your friends',
                          style: TextStyle(
                            color: Color(0xFFF9FAFB),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'For every invite, you win \$20!\nClick here to start inviting your friends. ',
                          style: TextStyle(
                            color: Color(0xFFF9FAFB),
                            fontSize: 10,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.50,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      'assets/images/boximg1.png',
                      fit: BoxFit.cover,
                      width: 60.35,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          height: 93,
          padding: const EdgeInsets.only(
            top: 6,
            left: 10,
            right: 10.22,
            bottom: 7,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFDF334F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Create a Jar',
                          style: TextStyle(
                            color: Color(0xFFF9FAFB),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                          ),
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          width: 185,
                          child: Text(
                            'Save and grow your money effortlessly.\n You can start wit as little as \$1.00.',
                            style: TextStyle(
                              color: Color(0xFFF9FAFB),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                              height: 1.50,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      'assets/images/img2.png',
                      fit: BoxFit.cover,
                      width: 60.35,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _accountBlocked(BuildContext context) {
    return Container(
      height: 77,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: ShapeDecoration(
        color: const Color(0xFFE0F7FE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.info_outline,
            color: Color(0xFF008AA7),
            size: 22,
          ),
          const SizedBox(
            width: 220,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Account blocked\n',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w600,
                      height: 1.43,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Your KYC is under review. Click here for more information.',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 12,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.67,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(const FaIcon(FontAwesomeIcons.caretRight).icon,
              color: const Color(0xFF008AA7), size: 22),
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

  Widget _makePaymentWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF008AA7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 327,
                child: Text(
                  'Quickly pay your most recent contacts again',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF434343),
                    fontSize: 14,
                    fontFamily: 'IBM Plex Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    letterSpacing: 0.22,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 154,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 154,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFF008AA7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 26,
                      top: 8,
                      child: Text(
                        'MAKE A PAYMENT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _transactionWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 110,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF008AA7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'You haven’t made any transaction yet!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF434343),
              fontSize: 14,
              fontFamily: 'IBM Plex Sans',
              fontWeight: FontWeight.w400,
              height: 1.40,
              letterSpacing: 0.22,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE0F7FE),
                    shape: OvalBorder(),
                  ),
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      'assets/images/Webamat (35) 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE0F7FE),
                    shape: OvalBorder(),
                  ),
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      'assets/images/Webamat (36) 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE0F7FE),
                    shape: OvalBorder(),
                  ),
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      'assets/images/Webamat (40) 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE0F7FE),
                    shape: OvalBorder(),
                  ),
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      'assets/images/Webamat (39) 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE0F7FE),
                    shape: OvalBorder(),
                  ),
                  child: Transform.scale(
                    scale: 0.6,
                    child: Image.asset(
                      'assets/images/Webamat (41) 1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _spendingWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 110,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF008AA7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'June',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.40,
                          letterSpacing: 0.22,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'You haven’t made any \ntransaction yet! ',
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                          letterSpacing: 0.22,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 70),
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Webamat (42) 1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _budgetWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 168,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF008AA7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 145,
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment:
                  //     CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/graph.png',
                            width: 60, height: 60, fit: BoxFit.fill),
                        const Positioned(
                          left: 19,
                          top: 24,
                          child: Text(
                            '70%',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0B252D),
                              fontSize: 12,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    const Text(
                      'June',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF008AA7),
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                        letterSpacing: 0.22,
                      ),
                    ),
                    //const SizedBox(height: 8),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '€10,000',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: 0.22,
                            ),
                          ),
                          TextSpan(
                            text: ' / €3,000 left',
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.40,
                              letterSpacing: 0.22,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '20 days left',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                        height: 1.40,
                        letterSpacing: 0.22,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _savingJarsWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 175,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF008AA7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 64,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 64,
                        height: 64,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE0F7FE),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/Webamat (48) 1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                width: 327,
                child: Text(
                  'Create a jar and set money aside for when you neet it most',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF434343),
                    fontSize: 14,
                    fontFamily: 'IBM Plex Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    letterSpacing: 0.22,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 154,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 154,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF008AA7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 35,
                      top: 8,
                      child: Text(
                        'START SAVING',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _exchangeRatesWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 175,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF008AA7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 64,
            height: 64,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFE0F7FE),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Webamat (50) 1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const SizedBox(
            width: 327,
            child: Text(
              'Sending money abroad? Enjoy our live-rates!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF434343),
                fontSize: 14,
                fontFamily: 'IBM Plex Sans',
                fontWeight: FontWeight.w400,
                height: 1.40,
                letterSpacing: 0.22,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 154,
            height: 32,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 154,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF008AA7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                const Positioned(
                  left: 23.50,
                  top: 8,
                  child: Text(
                    'CHECK OUR RATES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
