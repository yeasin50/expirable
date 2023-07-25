part of expirable_widget;

class ExpirableWidget extends StatelessWidget {
  /// Creates a widget that will expire on the given date.
  const ExpirableWidget({
    super.key,
    required this.expireDate,
    required this.child,
    this.message,
  });

  /// The date on which the [child] will be replaced with [DeadView()]
  final DateTime expireDate;

  /// if the [expireDate] is after the current date,
  /// the [child] will be replaced with [DeadView()
  final Widget child;

  /// The message to be displayed on [DeadView()]
  /// if not provided, the default message will be displayed
  final String? message;

  @override
  Widget build(BuildContext context) {
    bool isDead = DateTime.now().isAfter(expireDate);

    assert(() {
      if (isDead) {
        throw FlutterError.fromParts([
          ErrorSummary('ExpirableWidget is dead'),
          ErrorDescription('The expireDate is before the current date, the child will be replaced with DeadView()'),
          ErrorHint('To avoid this error, make sure the expireDate is after the current date'),
        ]);
      }
      return true;
    }());
    return isDead ? DeadView(message: message) : child;
  }
}
