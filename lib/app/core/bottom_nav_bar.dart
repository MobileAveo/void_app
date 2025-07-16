import 'package:flutter/material.dart';
import 'package:void_app/app/common/text_styles.dart';

class BottomNavBarItem {
  final String icon;
  final String text;
  final bool isEnabled;
  final VoidCallback? onTap;

  const BottomNavBarItem({
    required this.icon,
    required this.text,
    this.isEnabled = true,
    this.onTap,
  });
}

class CommonBottomNavBar extends StatelessWidget {
  final List<BottomNavBarItem> items;
  final int currentIndex;
  final Function(int) onTap;

  const CommonBottomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(
            color: Color(0xFF2A2A2A),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.asMap().entries.map((entry) {
          final index = entry.key;
          final item = entry.value;
          final isSelected = index == currentIndex;
          final isEnabled = item.isEnabled;

          return GestureDetector(
            onTap: () {
              if (isEnabled) {
                onTap(index);
                item.onTap?.call();
              }
            },
            child: Container(
              width: 80,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon with gradient
                  Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.only(
                      top: 7.3,
                      left: 8.23,
                    ),
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: isSelected && isEnabled
                              ? const [
                                  Color(0xFFFFFFFF), // #FFFFFF at 19.44%
                                  Color(0xFF878787), // #878787 at 77.78%
                                ]
                              : const [
                                  Color(0x66FFFFFF), // Disabled state
                                  Color(0x66878787),
                                ],
                          stops: const [0.1944, 0.7778],
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        item.icon,
                        width: 24,
                        height: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Text with gradient
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: isSelected && isEnabled
                            ? const [
                                Color(0xFFFFFFFF), // #FFFFFF at 19.44%
                                Color(0xFF878787), // #878787 at 77.78%
                              ]
                            : const [
                                Color(0x66FFFFFF), // Disabled state
                                Color(0x66878787),
                              ],
                        stops: const [0.1944, 0.7778],
                      ).createShader(bounds);
                    },
                    child: Text(
                      item.text.toUpperCase(),
                      style: isSelected && isEnabled
                          ? AppTextStyles.geist14w600White
                          : AppTextStyles.geist14w500White.copyWith(
                              color: Colors.white,
                              letterSpacing: 0.0,
                              height: 1.0,
                            ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
