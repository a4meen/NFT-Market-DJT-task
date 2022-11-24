import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0F111E), //0F111E
        appBar: AppBar(
          titleSpacing: 0.0,
          toolbarHeight: 80.0,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: const [
            IconBadge(
              icon: Icon(Icons.notifications),
              hideZero: true,
              itemCount: 5,
              top: 25.0,
              right: 10.0,
            )

            // color: Color(0xFFE9E9E9),
          ],
          title: Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(24, 32, 13, 0)),
              Container(
                width: 35.14,
                height: 35.14,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF00E0FF),
                      Color(0xFF0AFF96),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  child: Container(
                    width: 31.94,
                    height: 31.94,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/me.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
              const Text(
                "Account_1!",
                style: TextStyle(
                  fontFamily: "Urbanist",
                  color: Color(0xFFFFFFFF),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          color: const Color(0xFF0F111E),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Current Wallet Balance",
                  style: TextStyle(
                    fontFamily: "Urbanist",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "\$ 5,323.00",
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 9),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFA0A0A0),
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  width: 161,
                  height: 22,
                  decoration: const BoxDecoration(
                      color: Color(0xFF2F2F34),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        "BTC : 0,00335",
                        style: TextStyle(
                          fontFamily: "Urbanist",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFDFDFD),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                          width: 9.47,
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 23,
                            color: Color(0xFF00FFA3),
                          )),
                      SizedBox(width: 12.53),
                      Text(
                        "+6.54%",
                        style: TextStyle(
                          fontFamily: "Urbanist",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF00FFA3),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                //-----------------------------   the 3 big circule ------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF4E4E4E)),
                          child: CircleAvatar(
                            child: Container(
                              width: 73,
                              height: 73,
                              decoration: const BoxDecoration(
                                color: Color(0xFF2A3547),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/sent-dollar.png')),
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Sent',
                          style: TextStyle(
                              color: Color(0xFFE9E9E9),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF4E4E4E)),
                          child: CircleAvatar(
                            child: Container(
                              width: 76,
                              height: 76,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF0061FF),
                                      Color(0xFF6100FF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: const Icon(
                                Icons.add_rounded,
                                color: Color(0xFFFFFFFF),
                                size: 40,
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Buy',
                          style: TextStyle(
                              color: Color(0xFFE9E9E9),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF4E4E4E)),
                          child: CircleAvatar(
                            child: Container(
                              width: 73,
                              height: 73,
                              decoration: const BoxDecoration(
                                color: Color(0xFF2A3547),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/receive-dollar.png')),
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Receive',
                          style: TextStyle(
                              color: Color(0xFFE9E9E9),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                        )
                      ],
                    ),
                  ],
                ),
                //-------------------------------  Token  --  NFTs  -----------------------
                const SizedBox(height: 34),
                Container(
                  width: 332,
                  height: 47,
                  decoration: const BoxDecoration(
                      color: Color(0xFF212436),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Row(
                    children: [
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: 166,
                        height: 39,
                        decoration: const BoxDecoration(
                            color: Color(0xFF3B3F58),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: const Text(
                          'Tokens',
                          style: TextStyle(
                              color: Color(0xFFE9E9E9),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 162,
                        height: 39,
                        child: const Text(
                          'NFTs',
                          style: TextStyle(
                              color: Color(0xFF7C7D82),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                //---------------------- below graph  1st ---------------------------------
                const SizedBox(height: 40),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 22)),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFF7931A)),
                      child: const CircleAvatar(
                        child: SizedBox(
                          width: 45,
                          height: 45,
                          child: Icon(
                            Icons.currency_bitcoin_sharp,
                            color: Color(0xFFFFFFFF),
                            size: 30,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(width: 13),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'BTC',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Bitcoin',
                          style: TextStyle(
                              color: Color(0xFFA0A0A0),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(width: 41),
                    const SizedBox(
                      width: 100,
                      height: 27,
                      child: Image(image: AssetImage('assets/images/fig1.png')),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '\$36,590.00',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 2),
                        Text(
                          '+6.21%',
                          style: TextStyle(
                              color: Color(0xFF0AFF96),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 17),
                SizedBox(
                  width: 334,
                  height: 1,
                  child: Container(
                    color: const Color(0xFF212436),
                  ),
                ),
                const SizedBox(height: 17),
                //---------------------- below graph  2st ---------------------------------
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 22)),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFF00FFA3)),
                      child: const CircleAvatar(
                        child: SizedBox(
                          width: 45,
                          height: 45,
                          child: Icon(
                            CryptoFontIcons.ETH,
                            color: Color(0xFF343434),
                            size: 30,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(width: 13),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'ETH',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Ethereum',
                          style: TextStyle(
                              color: Color(0xFFA0A0A0),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(width: 41),
                    const SizedBox(
                      width: 100,
                      height: 27,
                      child: Image(image: AssetImage('assets/images/fig2.png')),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '\$2,590.00',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 2),
                        Text(
                          '+5.21%',
                          style: TextStyle(
                              color: Color(0xFF0AFF96),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
                //---------------------- below graph  3st ---------------------------------
                const SizedBox(height: 17),
                SizedBox(
                  width: 334,
                  height: 1,
                  child: Container(
                    color: const Color(0xFF212436),
                  ),
                ),
                const SizedBox(height: 17),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 22)),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFCFFFF3)),
                      child: const CircleAvatar(
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image(
                            image: AssetImage('assets/images/sol.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(width: 13),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'SOL',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Solona',
                          style: TextStyle(
                              color: Color(0xFFA0A0A0),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(width: 41),
                    const SizedBox(
                      width: 100,
                      height: 27,
                      child: Image(image: AssetImage('assets/images/fig3.png')),
                    ),
                    const SizedBox(width: 46),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '\$390.00',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 2),
                        Text(
                          '+2.21%',
                          style: TextStyle(
                              color: Color(0xFF0AFF96),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist"),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
