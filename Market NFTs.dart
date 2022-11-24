import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:like_button/like_button.dart';

List barnames = ['All NFTs', 'Art', 'Collectibles', 'Music', 'Photography'];
List photoslink = [
  'https://s3-alpha-sig.figma.com/img/0da8/f64c/e5ed7c16301e490f75e484be7eea3d08?Expires=1670198400&Signature=ZKzbybG9YfZKy6hCHfEXLxGNI5LyWNGD6oBSemr7oY1xU-N9T3roMdNmJVrAbTXGu7U7vR5jezbzNIyiJde6udIJJS~RgoyEPliqtimFVDCFCuCDnFPeLJuFV7KVbzthEDHw7XqGvPQZsu52P8~xz2Be33QhVWuqCDPYtMwH6992bOGzIj90Ey-ejeeoHp0mAZfQEeybcU43m9lMJ4EgHBpHcbsIVV8ZvoNY5TrOIRg4GBePDCxRzkutozYNBkFQRY22WbQFYiuvfRlOkG~DZTWHRuCvQvjsV1bLgXcjmA9Kb7XyK-fUAp5h9K3HfPaIHJdgAthM33b1ZwxVjcx~nw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/f540/8614/b61770d0ea1a427c83b2d73ef53b33b2?Expires=1670198400&Signature=TiDrzmAXqIlxKQUCh5Asu362k4w0fyEU-92mX5VGUMJ6cXwjX45tXiI1Ze43Kwqpji67HAtGBmbHZbJ5ZKuYBLsK6ngZnjQawB126SOuICgnvktef~JXBLrnC2ORI9A7U4tmsQ0qAMTOWAvzdsCuQvlwojKJOfEYKxURAaV51I1YIlJJDpgfsnWCCYV7fcEOAE5k0W8vzWvF7Hk1IMiPkPrKAla2OS1xxdZO2POPwG2l0FAEXW6bhNmoUwprvKUYXXy552coBmy9xEiwur0NTx2~~-ubin0KX2-D6bJ2Gp2SbQuIAyhHhLANTOb9FHc9xP1ia-iWalhfq~fMSfvG9g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/a598/0439/bfb9a685d444fe7d2494849e65ed7459?Expires=1670198400&Signature=RGuqtCbkynXCIE9vODLcpAg7Pl71CjsZdtfAPSJWiqhcFT2CeJMg3ZwO2j0wG-xB0Y~DV0~tbY5wdj5efnLhpECGxyLU9qEPYTSNVr~yKtkdWLwu9YuJpUPI4ujYwKBxMAROd3t1WfeVBM6GlpRTKyI-qaOXuvxZ5wnAL-5cyuvrht~ZV6S383Toz5-hhdP0ctI4BeB9k5ym-5dcfJOXdXMD7LFMee2k-utzyKAx8CHQQJnFKHQRgFhQiBAkb3oJOlxLUqOm1jBVDs4arnjVj~u5uhzcgCoJud9PqZWBXa-2H3CLOA1n1xL7UGOwxrh-ef4ltnxmDeYYtxHqyGMldg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
];
List photoslink2 = [
  'https://s3-alpha-sig.figma.com/img/a2b1/a54e/af84c6b7b4623a75c5202091738af60d?Expires=1670198400&Signature=H6jfs7piNPnaO7DCRiCKwjfaCJBdo5DRy1XKBxhWRQpENfAy31YyYq4ZE-1kgqzPQaLOCEhO8hyETCWyriTHZsyem~mXP636AqsrvgZUgjsfsbKCE6Lr2mrL4CsBQC6ubqRd~sc-l~v2jvjwFuQkjIVzq~DxuzHMBtYbD~coqqmPDKeeqJ5FIKkLyipP1dbaxjy95nlgZUU8sJgZ0rKlzGKvxgDHj0iIgWeKMG9aPno1LlIVsY5pYQ7J~Q20P56ruAJWTeE-n~m5EPK6nHwJXM6HwEHmnzrYzMu2P8s~oDYG5b29zefNjdwklA5lMtc~4ScgkozIkUri-yU7cQZHug__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/a698/8e91/55cd83b9c863fd267085a848d4e6ff0c?Expires=1670198400&Signature=cQs8cz2xEbTp2GF5REkI52jJQs2Dx9I5PtZBAcPMwDZEJsta0thWGS9Huzphh~gVAkeJ8m4eV5nVM4MH5X69iWLzu38vAhU3R8TBescIw2i6NdZV9Mome0r0kAy1ZESDV4uEDZa0O4kONs8fI2-vkrroXhBj0UbVUssr5CkV16ijcYXFxnF2254zj1-B0-TNcptG6U4BairzA--HjpR4mhLh1uCYpcJbIREWRo7j1lkVfE5pRJY1awxh8GE7XHcoQyQaJaj1CB2zW0vo2gd3EeMCE~DXvjl5ckKT2wuHvccwVm-4zj5DR2cFLu9rS2tILfLD91y5PXJfYF2qZj2tVg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/3993/09c1/e9cdff75d39a153befb7542a65a4e82b?Expires=1670198400&Signature=Oevz8uIgj1i06wVXlW32TkWzLmXFtJF-u00ZWPnhmsMqpyuJjfPsvzbJeHvJ3gRqunPdK3-XLGzoYvwpBB0~2m1CZ14k9z4MMEIJUfGiJgxeiNwaWXz6r~lRY0uuPJL5bmKdLkn-jelwIF62MCmd8O5qFZ97O5-bL2MVOmOEZNS1YL8mpGiQdJGssCZddljLnk5W59tyS-ukUPgnFlpV9b3-kh51GVVXk0usolQR1j9T5lk6N03YzdI2joTiAbWuB3~He1j9~g4JFqq60m9ZLYtj6DuQScFalo7uE83Y6dWDF3TyhKVbm05WCsdcwtb8wroJdivYHTR6DVpvl~arww__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'
];

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
          centerTitle: true,
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
          title: const Text(
            "Market",
            style: TextStyle(
              fontFamily: "Urbanist",
              color: Color(0xFFFFFFFF),
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          color: const Color(0xFF0F111E),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 40,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (((context, index) {
                        return Container(
                          alignment: Alignment.center,
                          width: 88,
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Color(0xFF2F2F34),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF0AFF96),
                                  Color(0xFF00E0FF),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Container(
                            alignment: Alignment.center,
                            width: 86,
                            height: 37,
                            decoration: const BoxDecoration(
                                color: Color(0xFF2F2F34),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Text(
                              barnames[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 12),
                            ),
                          ),
                        );
                      })),
                      separatorBuilder: ((context, index) => const SizedBox(
                            width: 10.0,
                          )),
                      itemCount: barnames.length),
                ),
                //===================== pictures   ============================
                const SizedBox(height: 35),
                SizedBox(
                  height: 590,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (((context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 156,
                                  height: 159,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF2A3547),
                                      image: DecorationImage(
                                          image:
                                              NetworkImage(photoslink[index]),
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    widthFactor: 28.0,
                                    heightFactor: 17.0,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 2),
                                      width: 28,
                                      height: 17,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        color: Color(0xff332f2f34),
                                      ),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.favorite_outline_sharp,
                                            size: 15,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(fontSize: 10),
                                          )
                                        ],
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 6),
                                ),
                                Container(
                                  width: 156,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff4d2a3547),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      const Text(
                                        "Super Influencers",
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 12,
                                            fontFamily: "Urbanist",
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(bottom: 6)),
                                      Row(
                                        children: const [
                                          Text(
                                            "#1267",
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 12,
                                                fontFamily: "Urbanist",
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 48),
                                          Icon(
                                            CryptoFontIcons.ETH,
                                            color: Color(0xFFFFFFFF),
                                            size: 20,
                                          ),
                                          Text(
                                            "6.64",
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 12,
                                                fontFamily: "Urbanist",
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 23),
                            Column(
                              children: [
                                Container(
                                  width: 156,
                                  height: 159,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF2A3547),
                                      image: DecorationImage(
                                          image:
                                              NetworkImage(photoslink2[index]),
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    widthFactor: 28.0,
                                    heightFactor: 17.0,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 2),
                                      width: 28,
                                      height: 17,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        color: Color(0xff332f2f34),
                                      ),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.favorite_outline_sharp,
                                            size: 15,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(fontSize: 10),
                                          )
                                        ],
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ),
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 6),
                                ),
                                Container(
                                  width: 156,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff4d2a3547),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      const Text(
                                        "Super Influencers",
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 12,
                                            fontFamily: "Urbanist",
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(bottom: 6)),
                                      Row(
                                        children: const [
                                          Text(
                                            "#1267",
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 12,
                                                fontFamily: "Urbanist",
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 48),
                                          Icon(
                                            CryptoFontIcons.ETH,
                                            color: Color(0xFFFFFFFF),
                                            size: 20,
                                          ),
                                          Text(
                                            "6.64",
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 12,
                                                fontFamily: "Urbanist",
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      })),
                      separatorBuilder: ((context, index) => const SizedBox(
                            height: 14.0,
                          )),
                      itemCount: 3),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
