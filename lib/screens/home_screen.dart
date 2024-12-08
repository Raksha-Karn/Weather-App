import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/constants/app_colors.dart';
import 'package:weather_app_tutorial/screens/search_screen.dart';
import 'package:weather_app_tutorial/screens/weather_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _currentPageIndex = 0;

  final _destinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined, color: Colors.white), 
      label: '', 
      selectedIcon: Icon(Icons.home, color: Colors.white),
    ),

    NavigationDestination(
      icon: Icon(Icons.search_outlined, color: Colors.white), 
      label: '', 
      selectedIcon: Icon(Icons.search, color: Colors.white),
    ),

    NavigationDestination(
      icon: Icon(Icons.wb_sunny_outlined, color: Colors.white), 
      label: '', 
      selectedIcon: Icon(Icons.sunny, color: Colors.white),
    ),

    NavigationDestination(
      icon: Icon(Icons.settings_outlined, color: Colors.white), 
      label: '', 
      selectedIcon: Icon(Icons.settings, color: Colors.white),
    ),
  ];

  final _screens = [
    const WeatherScreen(),
    const SearchScreen(),
    // const WeeklyWeatherScreen(),
    // const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: AppColors.secondaryBlack,
        ),
        child: NavigationBar(
          destinations: _destinations,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: _currentPageIndex,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
        ),
      ),
    );
  }
}