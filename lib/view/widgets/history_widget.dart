import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: scheme.secondaryContainer,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(child: Icon(Icons.currency_bitcoin)),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleLarge,
              'how we can get bigger trees ?',
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Text(
                  style: textTheme.displayMedium,
                  DateFormat('yy-MM-dd').format(DateTime.now()),
                ),
                Text(
                  style: textTheme.displayMedium,
                  DateFormat('hh : mm : ss').format(DateTime.now()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
