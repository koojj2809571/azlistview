import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class _Entry implements ISuspensionBean {
  _Entry(this.tag, this.number);

  final String tag;
  final int number;

  @override
  bool isShowSuspension = false;

  @override
  String getSuspensionTag() => tag;
}

void main() {
  testWidgets('index bar jumps to the selected section', (tester) async {
    final entries = [
      for (final tag in ['A', 'B', 'C'])
        for (var number = 0; number < 25; number++) _Entry(tag, number),
    ];
    final controller = ItemScrollController();

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AzListView(
          data: entries,
          itemCount: entries.length,
          indexBarData: const ['A', 'B', 'C'],
          itemScrollController: controller,
          itemBuilder: (context, index) => SizedBox(
            height: 56,
            child: Text('${entries[index].tag} item ${entries[index].number}'),
          ),
        ),
      ),
    ));

    expect(find.text('A item 0'), findsOneWidget);
    expect(find.text('B item 0'), findsNothing);

    final indexBar = find.byType(BaseIndexBar);
    final topLeft = tester.getTopLeft(indexBar);
    final gesture = await tester.startGesture(topLeft + const Offset(15, 24));
    await tester.pump();
    await gesture.up();
    await tester.pumpAndSettle();

    expect(controller.isAttached, isTrue);
    expect(find.text('B item 0'), findsOneWidget);
    expect(find.text('A item 0'), findsNothing);
  });
}
