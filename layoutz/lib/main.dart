import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutDemo());
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Row, Column & Stack Demo')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // =========================
                // ROW EXAMPLE
                // =========================
                const Text(
                  'Row Layout → Horizontal Alignment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(width: 60, height: 60, color: Colors.red),
                    Container(width: 60, height: 60, color: Colors.green),
                    Container(width: 60, height: 60, color: Colors.blue),
                  ],
                ),

                const Divider(height: 40, thickness: 2),

                // =========================
                // COLUMN EXAMPLE
                // =========================
                const Text(
                  'Column Layout → Vertical Alignment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: 80, height: 60, color: Colors.orange),
                    const SizedBox(height: 10),
                    Container(width: 80, height: 60, color: Colors.purple),
                    const SizedBox(height: 10),
                    Container(width: 80, height: 60, color: Colors.teal),
                  ],
                ),

                const Divider(height: 40, thickness: 2),

                // =========================
                // STACK EXAMPLE
                // =========================
                const Text(
                  'Stack Layout → Overlapping Elements',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(width: 200, height: 200, color: Colors.grey[300]),
                      Container(width: 150, height: 150, color: Colors.lightBlue),
                      Container(width: 100, height: 100, color: Colors.indigo),
                      const Text(
                        'Center',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
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
