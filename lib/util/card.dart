import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
 // final String image;
  final String title;
  final String subtitle;
  
  const ContentCard({
  //  required this.image,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ClipRRect(
       //   borderRadius: BorderRadius.circular(16),
       //   child: Image.network(
         //   image,
//fit: BoxFit.cover,
        //  ),
        ),
        const SizedBox(height: 10),
        if (title.isNotEmpty)
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: textTheme.titleLarge,
          ),
        if (subtitle.isNotEmpty)
          Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
            style: textTheme.titleSmall,
          ),
      ],
    );
  }
}
