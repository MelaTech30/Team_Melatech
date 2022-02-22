import 'package:flutter/material.dart';
import 'package:melatech/model/slidemodel.dart';

class SlideItem extends StatelessWidget {
  const SlideItem({ Key? key, required this.index }) : super(key: key);
      final int index;
      
  @override
  Widget build(BuildContext context) {
    return  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Container(
                        width: 200,
                        height: 200,
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(slideList[index].imageUrl),
                            fit: BoxFit.cover,
                            ),
                        ),
                      ),
                     const SizedBox(height:40),
                      Text(slideList[index].title,
                       style: const TextStyle(fontSize:22, 
                       color: Colors.white,)
                       ),
                     const SizedBox(height:10),
                        Text(slideList[index].description,
                       textAlign: TextAlign.center,
                       style: const TextStyle(fontSize:22, 
                       color: Colors.white,)
                       ),
                    ]      
    );
  }
}