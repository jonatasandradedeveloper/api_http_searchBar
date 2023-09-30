import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmerView extends StatelessWidget {
  const HomeShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    double containerHeight = 60.0;

    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
            Container(
              height: containerHeight,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
