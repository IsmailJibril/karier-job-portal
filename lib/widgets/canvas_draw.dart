import 'package:flutter/material.dart';
import 'package:karier_job_portal/theme/colors.dart';

void main() => runApp(MyApp());

class MyCustomPainter extends CustomPainter {
  final List<double> data;
  final double maxPercentage;
  final double minPercentage;
  final Color lineColor;
  final Color pointColor;

  MyCustomPainter({
    required this.data,
    this.maxPercentage = 100.0,
    this.minPercentage = 0.0,
    this.lineColor = white,
    this.pointColor = white,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final dataLength = data.length;
    final dataStep = size.width / (dataLength - 1);

    // Calculate vertical scale factors
    final verticalRange = maxPercentage - minPercentage;
    final verticalScaleFactor =
        verticalRange != 0 ? size.height / verticalRange : 1.0;

    // Draw the line graph
    final path = Path();
    path.moveTo(
        0, size.height - (data[0] - minPercentage) * verticalScaleFactor);

    for (int i = 1; i < dataLength; i++) {
      final x = i * dataStep;
      final y = size.height - (data[i] - minPercentage) * verticalScaleFactor;
      path.lineTo(x, y);
    }

    paint.color = lineColor;
    canvas.drawPath(path, paint);

    // Draw data points
    for (int i = 0; i < dataLength; i++) {
      final x = i * dataStep;
      final y = size.height - (data[i] - minPercentage) * verticalScaleFactor;

      paint.color = pointColor;
      canvas.drawCircle(Offset(x, y), 1.0, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Percentage Change Line Graph')),
        body: Center(
          child: CustomPaint(
            painter: MyCustomPainter(
              data: [20.0, 35.0, 50.0, 65.0, 40.0, 60.0, 80.0],
            ),
            size: Size(300, 200),
          ),
        ),
      ),
    );
  }
}
