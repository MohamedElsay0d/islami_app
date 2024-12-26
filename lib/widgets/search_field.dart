import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key , required this.onSearch});
   final void Function(String) onSearch;
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(137, 32, 32, 32), 
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xffE2BE7F)), 
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16), 
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/icons/closed_book.svg', 
                  color: const Color(0xffE2BE7F),
                ),
                const SizedBox(width: 8),  
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Sura Name',
                      hintStyle: TextStyle(
                        color: Colors.white70, 
                      ),
                      border: InputBorder.none, 
                    ),
                    style: const TextStyle(
                      color: Colors.white, 
                    ),
                    onChanged: onSearch,
                  ),
                ),
              ],
            ),
          );
  }
}