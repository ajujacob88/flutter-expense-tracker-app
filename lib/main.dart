import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widget/expenses.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  //widgetsflutterbinding and systemchrome sets the orientation and here i set the app will run only as on portrait mode..locking the device orientation to portrait mode

  //anway i am not locking the orientation instead i make it responsive, so commenting out
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      //above is the dark theme and below is the light theme,, it can be controlled by the thememode parameter in the material app (given at the end)
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        //for chnaging the card theme
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          // margin: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),

        // cardTheme: ThemeData().cardTheme.copyWith(
        //       color: kColorScheme.secondaryContainer,
        //       // margin: const EdgeInsets.all(16),
        //       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //     ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),

        // textTheme: const TextTheme().copyWith(
        //   titleLarge: TextStyle(
        //     fontWeight: FontWeight.normal,
        //     color: kColorScheme.onSecondaryContainer,
        //     fontSize: 16,
        //   ),
        // ),
      ),
      //themeMode: ThemeMode.light,
      //themeMode: ThemeMode.system,
      // above thememode.system is default, so no need to specify it again, it will automatically be chosed,,, Thememode.system means chose dark or light mode according to the user os setting saved by user,, Thememode.dark means always set the app to run on dark mode
      home: const Expenses(),
    ),
  );
  // });
}
