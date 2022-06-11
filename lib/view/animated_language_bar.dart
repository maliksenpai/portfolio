import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedLanguageBar extends StatefulWidget {
  String title;
  String description;
  double progress;
  bool isMobile;

  AnimatedLanguageBar(
      {Key? key,
      required this.title,
      required this.description,
      required this.progress,
      required this.isMobile})
      : super(key: key);

  @override
  _AnimatedLanguageBarState createState() => _AnimatedLanguageBarState();
}

class _AnimatedLanguageBarState extends State<AnimatedLanguageBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> progressValue;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    progressValue = CurvedAnimation(
      parent: Tween<double>(begin: 0, end: widget.progress / 10)
          .animate(_controller),
      curve: Curves.easeInOutQuad,
    );
    _controller.forward();
    progressValue.addStatusListener((status) {
      if (status != AnimationStatus.completed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flex(
          direction: widget.isMobile ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                widget.title,
                style: const TextStyle(color: Colors.white70),
              ),
            ),
            Stack(
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, newWidget) {
                    return SizedBox(
                      width: widget.isMobile ? 90.w : 50.w,
                      height: 20,
                      child: LinearProgressIndicator(
                        value: progressValue.value,
                        color: Colors.redAccent,
                        backgroundColor: Color(0xFF1B1B1B),
                      ),
                    );
                  },
                ),
                Positioned.fill(
                  child: Center(
                    child: Text(
                      "${widget.progress * 10}%",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            widget.description,
            style: const TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}
