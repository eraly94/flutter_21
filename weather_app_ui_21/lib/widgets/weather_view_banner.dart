import 'package:flutter/material.dart';

class WeatherViewBanner extends StatelessWidget {
  const WeatherViewBanner({
    super.key,
    required this.image,
    required this.title,
    required this.value,
  });
  final String image;
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        width: double.infinity,
        height: 66,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.25),
            borderRadius: BorderRadius.circular(
              16,
            ),
            border: Border.all(
              color: const Color(0xffbceffb),
              width: 0.86,
            )),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18.97,
            right: 48.29,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 37.94,
                    height: 37.94,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        13.8,
                      ),
                    ),
                    child: Image.asset(
                      image,
                    ),
                  ),
                  const SizedBox(
                    width: 17.46,
                  ),
                  Text(
                    title,
                  ),
                ],
              ),
              Text(
                value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
