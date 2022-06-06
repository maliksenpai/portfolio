import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedLanguageBar extends StatefulWidget {
  String title;
  double progress;
  bool isMobile;
  AnimatedLanguageBar({Key? key, required this.title, required this.progress, required this.isMobile}) : super(key: key);

  @override
  _AnimatedLanguageBarState createState() => _AnimatedLanguageBarState();
}

class _AnimatedLanguageBarState extends State<AnimatedLanguageBar> with SingleTickerProviderStateMixin {
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
      parent: Tween<double>(begin: 0, end: widget.progress / 10).animate(_controller),
      curve: Curves.easeInOutQuad,
    );
    _controller.forward();
    progressValue.addStatusListener((status) {
      if(status != AnimationStatus.completed){
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
    return Flex(
      direction: widget.isMobile ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title, style: const TextStyle(color: Colors.white70),),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, widget) {
            return SizedBox(
              width: 50.w,
              child: LinearProgressIndicator(
                value: progressValue.value,
                color: Colors.redAccent,
              ),
            );
          },
        ),
        Text("${widget.progress * 10}%", style: const TextStyle(color: Colors.white70))
      ],
    );
  }
}
