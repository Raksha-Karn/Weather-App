import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_tutorial/models/weekly_weather.dart';
import 'package:weather_app_tutorial/services/api_helper.dart';

final weeklyWeatherProvider = FutureProvider.autoDispose<WeeklyWeather>((ref) async {
  return ApiHelper.getWeeklyForecast();
});