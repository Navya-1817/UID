import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    // Define breakpoints
    const mobileBreakpoint = 600;
    const tabletBreakpoint = 1000;

    int crossAxisCount;
    double fontSize;
    EdgeInsetsGeometry padding;

    if (screenWidth < mobileBreakpoint) {
      // 📱 Mobile layout
      crossAxisCount = 1;
      fontSize = 16;
      padding = const EdgeInsets.all(16);
    } else if (screenWidth < tabletBreakpoint) {
      // 💻 Tablet layout
      crossAxisCount = 2;
      fontSize = 18;
      padding = const EdgeInsets.all(24);
    } else {
      // 🖥️ Desktop layout
      crossAxisCount = 3;
      fontSize = 20;
      padding = const EdgeInsets.all(32);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive with MediaQuery'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: padding,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Card ${index + 1}',
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.teal,
        height: isPortrait ? 50 : 40,
        child: Center(
          child: Text(
            'Screen width: ${screenWidth.toStringAsFixed(0)} | height: ${screenHeight.toStringAsFixed(0)}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
