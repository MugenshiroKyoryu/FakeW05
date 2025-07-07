import 'package:flutter/material.dart';
import '../models/gunpla.dart';
import 'package:intl/intl.dart';

class GunplaDetailScreen
    extends
        StatelessWidget {
  final Gunpla
  gunpla;

  const GunplaDetailScreen({
    super.key,
    required this.gunpla,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    final dateFormat = DateFormat(
      'yyyy-MM-dd',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          gunpla.name,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                gunpla.imagePath,
              ),
            ),

            const SizedBox(
              width: 16,
            ),

            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grade: ${gunpla.grade}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Price: ${gunpla.price}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Status: ${gunpla.status}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Purchase Date: ${dateFormat.format(gunpla.purchaseDate)}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Assembled Date: ${gunpla.assembledDate != null ? dateFormat.format(gunpla.assembledDate!) : 'Not assembled'}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ID: ${gunpla.id}",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
