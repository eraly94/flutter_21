import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app_ui_21/constants/app_text_style.dart';
import 'package:weather_app_ui_21/constants/liner_gradient_color.dart';
import 'package:weather_app_ui_21/widgets/weather_view_banner.dart';
import 'package:http/http.dart' as http;
import 'widgets/slider_view.dart';
import 'widgets/weather_days_card.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String weatherInfo = 'жүктөлүүдө';
  String cityName = '';
  String countryName = '';
  String weatherIcon = '';
  String mainWeather = '';
  double windWeather = 0;

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);

      final name = data['name'] ?? "Белгисиз шаар";
      final temp = data['main']['temp'] ?? 0.0;
      final countryNamne = data['sys']['country'] ?? "Белгисиз өлкө";
      final icon = data['weather'][0]['icon'] ?? "";
      final main = data['weather'][0]['main'] ?? "Белгисиз аба-ырайы";
      final wind = data['wind']['speed'] ?? 0.0.toDouble();
      final withKelvin = temp - 273.15;

      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        cityName = name;
        countryName = countryNamne;
        weatherIcon = icon;
        //'https://openweathermap.org/img/wn/$icon@4x.png';
        mainWeather = main;
        windWeather = wind;
      });
    } else {
      print('Ката: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    weatherFun();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Color(0xff97eafc), Color(0xff16C4EA)],
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/search.svg')),
        title: SvgPicture.asset('assets/images/point.svg'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/menu.svg'),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Color(0xff97eafc), Color(0xff16C4EA)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$cityName\n$countryName',
                style: AppTextStyl.locationStyle,
              ),
              const Text('Tue, June 30', style: AppTextStyl.dateStyle),
              Row(children: [
                Image.network(
                  //'$weatherIcon',
                  'https://openweathermap.org/img/wn/$weatherIcon@4x.png',
                  width: 180,
                  height: 200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: weatherInfo,
                        style: AppTextStyl.tempStyle,
                        children: <InlineSpan>[
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -40),
                              child: const Text(
                                '°C',
                                style: AppTextStyl.tempSelcieStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      mainWeather,
                      style: AppTextStyl.tempNameStyle,
                    ),
                  ],
                ),
              ]),
              const WeatherViewBanner(
                image: 'assets/images/rainfall.png',
                title: 'Rainfall',
                value: '3cm',
              ),
              WeatherViewBanner(
                image: 'assets/images/wind.png',
                title: 'Wind',
                value: '$windWeather km/h',
              ),
              const WeatherViewBanner(
                image: 'assets/images/humidity.png',
                title: 'Humidity',
                value: '64%',
              ),
              const SizedBox(height: 10),
              const SliderView()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinerGradientColor.liner,
        ),
        child: SizedBox(
          height: 98.99,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const WeatherDaysCard(
                text1: 'now',
                image: 'assets/images/icon.png',
                text2: '19 °',
              );
            },
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
