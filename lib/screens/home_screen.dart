import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

import 'package:ticket_booking_app/utils/constant.dart';
import 'package:ticket_booking_app/widgets/ticket_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                // header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Mooring",
                          style: Styles.heading3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.heading1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/avatar.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(20),
                // search
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.heading4,
                      )
                    ],
                  ),
                ),
                // view all
                const Gap(30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Fight", style: Styles.heading2),
                      InkWell(
                        onTap: () {
                          debugPrint("inkwell");
                        },
                        child: Text("View all",
                            style: Styles.heading4
                                .copyWith(color: Styles.primaryColor)),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
              ],
            ),
          ),
          const TicketCard()
        ],
      ),
    );
  }
}
