import 'dart:async';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:melatech/slideitem.dart';

class SliderPage extends StatefulWidget {
   const SliderPage({ Key? key }) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  int _currentPage = 0;
final PageController _pageController = PageController(
  initialPage: 0,
);

@override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5),
     (Timer timer){
      if(_currentPage < 2 ) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeIn);
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }


@override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var slideLIst;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4e055a),
            Color(0xFF4ccce8)
          ],
          begin:Alignment.topCenter,
          end: Alignment.bottomCenter
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget> [
               Expanded(
                child: PageView.builder(
                  onPageChanged: _onPageChanged,
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: slideLIst.length,
                  itemBuilder: (ctx, i) => SlideItem(index: i),
                  ),                 
                ),
                   const SizedBox(height:20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  FlatButton(onPressed: (){}, 
                  child: const Text('Get Started', 
                  style: TextStyle(fontSize:18 )),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(15),
                  color: const Color(0xFF4e055a),
                  textColor: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                     const Text('Have an account?'),
                      FlatButton(onPressed: (){}, 
                      child: const Text('Login')),
                    ]
                  )
                ]
              )
            ],
          ),
        )
      ),
    );
  }
}