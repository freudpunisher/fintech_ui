import 'package:fintech_ui/widgets/time_option_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Center(
          child: Text(
            "Activity",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          IconButton.outlined(
              onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 340,
                              height: 75,
                              decoration: BoxDecoration(
                                color: index % 2 == 0
                                    ? const Color.fromARGB(2555, 16, 80, 98)
                                    : Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Smartphone",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "9/13",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor:
                                              Colors.white.withOpacity(0.8),
                                        ),
                                        Transform.translate(
                                            offset: const Offset(-10, 0),
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  Colors.white.withOpacity(0.8),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Total Spending Today",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "\$ 45.99",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TimeOptionRow(),
                    const SizedBox(height: 16),
                    Expanded(
                        child: LineChart(
                      LineChartData(
                          gridData: const FlGridData(show: false),
                          titlesData: FlTitlesData(
                            leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    const tiles = ['S', 'M', 'T', 'W'];
                                    final index = value.toInt();
                                    if (index >= 0 && index < tiles.length) {
                                      return Text(
                                        tiles[index],
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      );
                                    }
                                    return const Text("");
                                  },
                                  reservedSize: 22,
                                  interval: 1),
                            ),
                            rightTitles: const AxisTitles(
                                sideTitles: SideTitles(
                              showTitles: false,
                            )),
                            topTitles: const AxisTitles(
                                sideTitles: SideTitles(
                              showTitles: false,
                            )),
                          ),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                                spots: [
                                  const FlSpot(0, 2),
                                  const FlSpot(1, 1),
                                  const FlSpot(2, 4),
                                  const FlSpot(4, 3),
                                  const FlSpot(5, 4),
                                  const FlSpot(6, 6),
                                ],
                                isCurved: true,
                                color: Colors.teal,
                                barWidth: 3,
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(show: true)),
                          ]),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
