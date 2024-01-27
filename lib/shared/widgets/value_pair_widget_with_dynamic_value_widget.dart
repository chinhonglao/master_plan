import 'package:master_plan/index.dart';

class ValuePairWidgetWithDyanamicValueWidget extends StatefulWidget {
  final String title;
  final Widget valueWidget;
  final double keyWidth;
  final double verticalPadding;
  final double verticalMargin;
  final CrossAxisAlignment crossAxisAlignment;
  const ValuePairWidgetWithDyanamicValueWidget({
    super.key,
    required this.title,
    required this.valueWidget,
    this.keyWidth = 200,
    this.verticalPadding = 8,
    this.verticalMargin = 0,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });
  @override
  State<ValuePairWidgetWithDyanamicValueWidget> createState() =>
      _ValuePairWidgetWithDyanamicValueWidgetState();
}

class _ValuePairWidgetWithDyanamicValueWidgetState
    extends State<ValuePairWidgetWithDyanamicValueWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: widget.verticalPadding),
      margin: EdgeInsets.symmetric(vertical: widget.verticalMargin),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: widget.crossAxisAlignment,
        children: [
          SizedBox(
            width: widget.keyWidth,
            child: TextWidget(widget.title),
          ),
          Expanded(
            child: widget.valueWidget,
          ),
        ],
      ),
    );
  }
}
