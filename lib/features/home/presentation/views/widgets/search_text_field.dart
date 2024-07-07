import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
      height: 32.w,
     width: 219.h,
      child:
       const Directionality(
         textDirection: TextDirection.rtl,
         child: TextField(
           decoration: InputDecoration(
             hintText: 'بحث',
             prefixIcon: Icon(
               Icons.search,
             ),
           ),
         ),
       ),
    );
  }
}
