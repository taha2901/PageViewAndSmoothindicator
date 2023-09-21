import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageView extends StatelessWidget {
  final PageController _controller = PageController();
  final List<Color> _pageColors = [Colors.blue, Colors.green, Colors.red,Colors.lime];
  final int _numPages = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView.builder Example'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _numPages,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: _pageColors[index],
                  child: Center(
                    child: Text(
                      'Page ${index + 1}',
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: _numPages,
              effect: const WormEffect(),
            ),
          ),
        ],
      ),
    );
  }
}
