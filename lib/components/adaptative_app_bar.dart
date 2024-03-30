import 'package:flutter/material.dart';

class AdaptativeAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String label;
  const AdaptativeAppBar(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          label,
          textAlign: TextAlign.start,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
