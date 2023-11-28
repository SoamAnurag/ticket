import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trainbooking/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:trainbooking/utils/layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Layout.getHeight(20,context), vertical: Layout.getHeight(20,context)),
        children: [
          Gap(Layout.getHeight(40,context)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Layout.getHeight(86,context),
                width: Layout.getWidth(75,context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Layout.getHeight(10,context)),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/logo.jpg',
                    ),
                  ),
                ),
              ),
              Gap(Layout.getHeight(10,context)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Ticket',
                      style: TextStyles.headline3.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.black)),
                  Gap(Layout.getHeight(2,context)),
                  Text(
                    'Abuja',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.black1,
                    ),
                  ),
                  Gap(Layout.getHeight(8,context)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Layout.getHeight(100,context)),
                      color: Colors.white70,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: Layout.getHeight(3,context),
                        vertical: Layout.getHeight(3,context)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.purple,
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: ColorManager.white,
                            size: 15,
                          ),
                        ),
                        Gap(Layout.getHeight(5,context)),
                        Text('Premium',
                            style: TextStyles.textStyle.copyWith(fontSize: 12)),
                        Gap(Layout.getHeight(5,context)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: TextStyles.textStyle.copyWith(
                        color: ColorManager.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const Gap(8),
          Divider(color: Colors.grey.shade300),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: Layout.getHeight(90,context),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.black2,
                    borderRadius: BorderRadius.circular(Layout.getHeight(18,context))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(Layout.getHeight(30,context)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Layout.getHeight(20,context),
                    horizontal: Layout.getWidth(20,context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: ColorManager.black2,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: ColorManager.white,
                    ),
                    const Gap(3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'v got a new award',
                          style: TextStyles.headline2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorManager.white,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'You used 50 trains in a year',
                          style: TextStyles.headline2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ColorManager.white.withOpacity(0.9),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(25),
          Text('Accumulated miles', style: TextStyles.headline2),
          Container(
            child: Column(
              children: [
                Gap(Layout.getHeight(15,context)),
                Text(
                  '20000',
                  style: TextStyle(
                    fontSize: 50,
                    color: ColorManager.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles',
                      style: TextStyles.headline4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '3 March 2023',
                      style: TextStyles.headline4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '23000',
                          style: TextStyles.headline4.copyWith(
                              fontSize: 16, color: ColorManager.black),
                        ),
                        Text(
                          'Miles',
                          style: TextStyles.headline4.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'LOS Train',
                          style: TextStyles.headline4.copyWith(
                              fontSize: 16, color: ColorManager.black),
                        ),
                        Text(
                          'Received from',
                          style: TextStyles.headline4.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20',
                          style: TextStyles.headline4.copyWith(
                              fontSize: 16, color: ColorManager.black),
                        ),
                        Text(
                          'Miles',
                          style: TextStyles.headline4.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Kd Train',
                          style: TextStyles.headline4.copyWith(
                              fontSize: 16, color: ColorManager.black),
                        ),
                        Text(
                          'Received from',
                          style: TextStyles.headline4.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '300',
                          style: TextStyles.headline4.copyWith(
                              fontSize: 16, color: ColorManager.black),
                        ),
                        Text(
                          'Miles',
                          style: TextStyles.headline4.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'PHC Train',
                          style: TextStyles.headline4.copyWith(
                              fontSize: 16, color: ColorManager.black),
                        ),
                        Text(
                          'Received from',
                          style: TextStyles.headline4.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
