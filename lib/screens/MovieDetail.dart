import "package:flutter/material.dart";
import "package:flutter_rating_bar/flutter_rating_bar.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:neoncolors/components/MaskedImage.dart";
import "package:neoncolors/constants.dart";

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Color(0xFF19191B),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: height * 0.5,
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/movie promos/image 76.png"))),
            ),
          ),
          Positioned(
            top: height * 0.05,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        )),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("images/icons/back.svg"),
                    ),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        )),
                    child: SvgPicture.asset("images/icons/menu.svg"),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 9,
            top: height * 0.42,
            child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [kPinkColor, kGreenColor])),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF767680),
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.5,
              transform: Matrix4.translationValues(0, -height * 0.05, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.7,
                    child: Column(
                      children: [
                        Text(
                          "Eternals",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFFFFFF).withOpacity(0.85),
                          ),
                        ),
                        SizedBox(
                          height: height <= 667 ? 10 : 20,
                        ),
                        Text(
                          "2021Action-Adventure-Fantasy2h36m",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFFFFFF).withOpacity(0.85),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RatingBar.builder(
                          itemSize: 14,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(
                            horizontal: 1,
                          ),
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Color(0xFFF2A33A),
                          ),
                          onRatingUpdate: (rating) {
                            debugPrint(rating.toString());
                          },
                          unratedColor: const Color(0xFFFFFFFF),
                        ),
                        Text(
                          "The saga of the Eternals, a race of\n immortals beings who lived on Earth\nand shaped its history and\ncivilizations.",
                          textAlign: TextAlign.center,
                          maxLines: height <= 667 ? 2 : 4,
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xFFFFFFFF).withOpacity(0.75),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: 2,
                    width: width * 0.8,
                    color: const Color(0xFFFFFFFF).withOpacity(0.15),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Casts",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height <= 667 ? 10 : 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFFFFFFFF),
                              minRadius: 16,
                              maxRadius: width <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage("images/casts/image 77.png"),
                            ),
                            Expanded(
                                child: Container(
                              constraints: const BoxConstraints(
                                maxHeight: 50,
                                maxWidth: 112,
                              ),
                              transform: Matrix4.translationValues(-6, 0, 0),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: const [
                                  MaskedImage(
                                      asset: kMaskCast, mask: kMaskCast),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Angelina\nJolie",
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 13,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            CircleAvatar(
                              backgroundColor: const Color(0xFFFFFFFF),
                              minRadius: 16,
                              maxRadius: width <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage("images/casts/image 78.png"),
                            ),
                            Expanded(
                                child: Container(
                              constraints: const BoxConstraints(
                                maxHeight: 50,
                                maxWidth: 112,
                              ),
                              transform: Matrix4.translationValues(-6, 0, 0),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: const [
                                  MaskedImage(
                                      asset: kMaskCast, mask: kMaskCast),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Gemma\nChan",
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 13,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFFFFFFFF),
                              minRadius: 16,
                              maxRadius: width <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage("images/casts/image 79.png"),
                            ),
                            Expanded(
                                child: Container(
                              constraints: const BoxConstraints(
                                maxHeight: 50,
                                maxWidth: 112,
                              ),
                              transform: Matrix4.translationValues(-6, 0, 0),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: const [
                                  MaskedImage(
                                      asset: kMaskCast, mask: kMaskCast),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Salma\nHayek",
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 13,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            CircleAvatar(
                              backgroundColor: const Color(0xFFFFFFFF),
                              minRadius: 16,
                              maxRadius: width <= 375 ? 24 : 30,
                              backgroundImage:
                                  const AssetImage("images/casts/image 80.png"),
                            ),
                            Expanded(
                                child: Container(
                              constraints: const BoxConstraints(
                                maxHeight: 50,
                                maxWidth: 112,
                              ),
                              transform: Matrix4.translationValues(-6, 0, 0),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: const [
                                  MaskedImage(
                                      asset: kMaskCast, mask: kMaskCast),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Richard\nMadden",
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 13,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
