import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/banner 1.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/banner 2.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
        const SizedBox(height: 20), // Sesuaikan dengan jarak yang diinginkan
        const Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Music Album', // Ganti dengan judul yang diinginkan
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Sesuaikan dengan warna yang diinginkan
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Rock music is a genre of popular music. It developed during and after the 1960s in the United Kingdom.', // Ganti dengan deskripsi yang diinginkan
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey, // Sesuaikan dengan warna yang diinginkan
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 228,
          height: 242,
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(30),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: // Ganti bagian Stack pada SpecialOfferCard dengan yang berikut:
                Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30, // Sesuaikan dengan keinginan Anda
                  left: 100, // Sesuaikan dengan keinginan Anda
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "\$$numOfBrands",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
