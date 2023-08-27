import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InternationalTransfer extends StatelessWidget {
  const InternationalTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE0F7FE),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: deprecated_member_use
                      Icon(const FaIcon(FontAwesomeIcons.close).icon, size: 19),
                      const Text(
                        'International transfer',
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
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Sending',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child:
                          Image.asset('assets/images/carbon_calendar-add.png')),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: Color(0xFF008AA7),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/usa.png',
                              height: 10, width: 10)),

                      const SizedBox(width: 18),
                      Expanded(
                        child: Row(
                          children: [
                            const Text(
                              'USD',
                              style: TextStyle(
                                color: Color(0xFF0B252D),
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                                const FaIcon(FontAwesomeIcons.chevronDown).icon,
                                size: 12),
                          ],
                        ),
                      ),
                      //SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                      const SizedBox(
                        width: 134,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '\$',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.50,
                                ),
                              ),
                              TextSpan(
                                text: '250.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: Color(0xFF008AA7),
                            shape: BoxShape.circle,
                          ),
                          child: Transform.scale(
                            scale: 0.6,
                            child: Image.asset(
                              'assets/images/up-down.png',
                              height: 1,
                              width: 10,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(width: 18),
                      const Text(
                        '1 USD = 0.94 EUR • Delivery fee: 0.00 USD',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 12,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w300,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: Color(0xFF008AA7),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/usa.png',
                              height: 10, width: 10)),

                      const SizedBox(width: 18),
                      Expanded(
                        child: Row(
                          children: [
                            const Text(
                              'USD',
                              style: TextStyle(
                                color: Color(0xFF0B252D),
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                                const FaIcon(FontAwesomeIcons.chevronDown).icon,
                                size: 12),
                          ],
                        ),
                      ),
                      //SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                      const SizedBox(
                        width: 134,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '\$',
                                style: TextStyle(
                                  color: Color(0xFF008AA7),
                                  fontSize: 16,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.50,
                                ),
                              ),
                              TextSpan(
                                text: '250.00',
                                style: TextStyle(
                                  color: Color(0xFF008AA7),
                                  fontSize: 25,
                                  fontFamily: 'IBM Plex Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 133,
                      height: 19,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF008AA7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Our best exchange rate!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Delivery details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
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
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/lady.jpeg',
                          fit: BoxFit.cover, height: 10, width: 10)),
                  title: const Text(
                    'Jane Smith',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: const Text(
                    '+48 654789987',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w300,
                      height: 1.50,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF008AA7),
                    size: 16,
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
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/carbon_send-alt.png',
                          height: 10, width: 10)),
                  title: Row(
                    children: [
                      const Text(
                        'Standard delivery',
                        style: TextStyle(
                          color: Color(0xFF008AA7),
                          fontSize: 14,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF008AA7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Free',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                      )
                    ],
                  ),
                  subtitle: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'By ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: 'Monday',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: ', 19:30, Sep, 05',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF008AA7),
                    size: 16,
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
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                          'assets/images/bi_credit-card-2-front.png',
                          height: 10,
                          width: 10)),
                  title: const Text(
                    'Card payment',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Transform.scale(
                          scale: 1.2,
                          child: Image.asset(
                              'assets/images/logos_mastercard.png')),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Mastercard x-123',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w300,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF008AA7),
                    size: 16,
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
                        shape: BoxShape.circle,
                      ),
                      child: Transform.scale(
                        scale: 0.7,
                        child: Image.asset(
                            'assets/images/teenyicons_discount-outline.png',
                            fit: BoxFit.cover,
                            height: 10,
                            width: 10),
                      )),
                  title: const Text(
                    'Promo code',
                    style: TextStyle(
                      color: Color(0xFF008AA7),
                      fontSize: 14,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: const Text(
                    'PLTR864w33',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF008AA7),
                    size: 16,
                  ),
                ),
                Dash(
                  direction: Axis.horizontal,
                  length: MediaQuery.of(context).size.width,
                  dashLength: 10,
                  dashColor: const Color(0xFF008AA7),
                  dashBorderRadius: 0,
                  dashGap: 10,
                  dashThickness: 1.5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 341,
                  padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
                  //clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE0F7FE),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Summary',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Transfer amount',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          Opacity(
                            opacity: 0.50,
                            child: Text(
                              '250 USD',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Delivery',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          Opacity(
                            opacity: 0.50,
                            child: Text(
                              'FREE',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Fees',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 14,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          Opacity(
                            opacity: 0.50,
                            child: Text(
                              '0.00 USD',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF008AA7),
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'TOTAL',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 16,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                          Text(
                            '250 USD',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF008AA7),
                              fontSize: 16,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          )
                        ],
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
                          'SEND',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
