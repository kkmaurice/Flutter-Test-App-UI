import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChoosePlan extends StatelessWidget {
  const ChoosePlan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE0F7FE),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE0F7FE),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(Icons.arrow_back,),
                        // ),
                        Icon(const FaIcon(FontAwesomeIcons.arrowLeft).icon,
                            size: 19),
                        const Text(
                          'Choose your plan',
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
                  const SizedBox(height: 25),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 227,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF008AA7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(9),
                              topRight: Radius.circular(9))),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Transform.rotate(
                                angle: 3.14 / 2,
                                child: Image.asset(
                                  'assets/images/chip.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Transform.rotate(
                                angle: 3.14 / 2,
                                child: Image.asset(
                                  'assets/images/wifi.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Image.asset(
                            'assets/images/geniopay icon white 4.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x11060419),
                    blurRadius: 50,
                    offset: Offset(0, 8),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Basic',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                  // const SizedBox(height: 20),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '€0',
                          style: TextStyle(
                            color: Color(0xFF008AA7),
                            fontSize: 18,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: '/month',
                          style: TextStyle(
                            color: Color(0xFF008AA7),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/emojione-monotone_credit-card.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Contactless debit card',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'FREE',
                      style: TextStyle(
                        color: Color(0xFF008AA7),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/uil_money-withdraw.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'ATM withdrawls',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '€1.50 ',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'fee',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),

                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/bi_cash-coin.png',
                            fit: BoxFit.cover, height: 10, width: 10)),
                    title: const Text(
                      'Top-up with cash',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '3.5% ',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'fee (€3 minimum)',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/bi_currency-exchange.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Foreign currency card spending',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '2% ',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'fee',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/wpf_worldwide-location.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Send money globally',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'FREE & Instant ',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'to other GenioPay accounts on\nworkdays, ',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '1%',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' fee on weekends\n\n',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '2.5%',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' fee (€2 minimum) when sending to non-\nGenioPay accounts, additional ',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '1%',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' fee on weekends',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/ic_round-support-agent.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Customer support',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Standard ',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'chat, email and phone',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/emojione-monotone_credit-card.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Replacement cards',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Standard ',
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'chat, email and phone',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 10,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),

            // const SizedBox(height: 10),
            // Container(
            //   height: 40,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Color(0xFFE0F7FE),
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x11060419),
                    blurRadius: 50,
                    offset: Offset(0, 8),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
                      child: Text(
                        'ALL PLANS GET',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/nimbus_wallet.png',
                            fit: BoxFit.cover, height: 10, width: 10)),
                    title: const Text(
                      'Accounts in multiple currencies',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Open for free, each with their own account number',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/fluent_calendar-checkmark-28-regular.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Free Direct Debits',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'GBP & EUR accounts only (in your country of residence)\n\nPay regular bills and subscriptions',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/fluent_calendar-checkmark-28-regular.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Free recurring payments',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Free recurring payments',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/carbon_mobile-download.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Free & instant top-up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Add money instantly with a debit card',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/mdi_bank-transfer.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Instant transfers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Instant transfers to other GenioPay accounts in any \ncurrency are instant',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/emojione-monotone_money-bag.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Free to receive salary & transfers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Instantly viewable in app',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/ant-design_apple-outlined.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Apple Pay',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Pay contactless using your phone in supported \ncountries',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  ListTile(
                    //contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F7FE),
                          //shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                            'assets/images/material-symbols_business-center-outline.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10)),
                    title: const Text(
                      'Business accounts',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text(
                      'Get a full account for UK-registered company',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 10,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Transform.scale(
                        scale: 1.2,
                        child: Image.asset('assets/images/Arrow - Down 4.png')),
                  ),
                  const SizedBox(height: 10),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'See',
                          style: TextStyle(
                            color: Color(0xFF5D5D5D),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0xFF008AA7),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: 'full pricing information',
                          style: TextStyle(
                            color: Color(0xFF008AA7),
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: const Color(0xFFEBD75C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text(
                'CHOOSE BASIC',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'IBM Plex Sans',
                  fontWeight: FontWeight.w600,
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
            )
          ]),
        ),
      ),
    );
  }
}
