import 'package:flutter/material.dart';

class TimeOptionButton extends StatelessWidget {
  const TimeOptionButton(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:
              isSelected ? Colors.teal.withOpacity(0.06) : Colors.transparent,
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class TimeOptionRow extends StatefulWidget {
  const TimeOptionRow({super.key});

  @override
  State<TimeOptionRow> createState() => _TimeOptionRowState();
}

class _TimeOptionRowState extends State<TimeOptionRow> {
  String selectedPeriod = "Week";

  final List<String> periods = ["Day", "week", "month", "year"];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: periods.map((period) {
        return TimeOptionButton(
            label: period,
            isSelected: selectedPeriod == period,
            onTap: () => setState(() => selectedPeriod = period));
      }).toList(),
    );
  }
}
