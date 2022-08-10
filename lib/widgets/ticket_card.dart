import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/constant.dart';
import 'package:ticket_booking_app/widgets/rounded_container.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 100.0,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "NYC",
                  style: Styles.heading4.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                const RoundedContainer(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                    child: LayoutBuilder(builder: (
                      BuildContext context,
                      BoxConstraints constraints,
                    ) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          7,
                          (index) => const Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Transform.rotate(
                  angle: 0,
                  child: const Icon(FluentSystemIcons.ic_fluent_airplane_filled,
                      color: Colors.white),
                ),
                Expanded(
                  child: SizedBox(
                    height: 20,
                    child: LayoutBuilder(builder: (
                      BuildContext context,
                      BoxConstraints constraints,
                    ) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          7,
                          (index) => const Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const RoundedContainer(),
                const Spacer(),
                Text(
                  "LDN",
                  style: Styles.heading4.copyWith(color: Colors.white),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New-YorkN",
                  style: Styles.heading4.copyWith(color: Colors.white),
                ),
                Text(
                  "8H 30M",
                  style: Styles.heading4.copyWith(color: Colors.white),
                ),
                Text(
                  "Addise",
                  style: Styles.heading4.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
