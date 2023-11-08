import 'package:flutter/widgets.dart';

class ErrorPlaceholderDisplay extends StatelessWidget {
  const ErrorPlaceholderDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6i29mlctWXgW7c6eZ0QAoBoPk6Z9OyrjW5WvVjU-TZTsF0FX9C3PhJdv_MH-zrN1so0k&usqp=CAU',
      fit: BoxFit.fill,
    );
  }
}
