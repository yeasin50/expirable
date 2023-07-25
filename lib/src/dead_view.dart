part of expirable;

class DeadView extends StatelessWidget {
  const DeadView({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    final theme  = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ColoredBox(
        color: theme.colorScheme.error,
        child: Center(
          child: Text(message ?? 'This widget is dead'),
        ),
      ),
    );
  }
}
