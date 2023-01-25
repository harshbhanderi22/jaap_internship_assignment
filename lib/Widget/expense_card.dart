import 'package:flutter/material.dart';
import 'package:jaap_internship_assignment/constant.dart';

class TrendingExpense extends StatelessWidget {

  const TrendingExpense({super.key, required this.heading,required this.date, required this
      .expense});

  final String heading;
  final String date;
  final int expense;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage
                  ('assests/images/starbuck.png'),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(heading, style: kTreadingHeading,),
                    const SizedBox(height: 5,),
                    Text(date,style: kTreadingDate,)
                ],
              ),
            ],
          ),
           Center(
            child: Text(
                '-$expense',
                style: kTreadingExpense
            ),
          )
        ],
      ),
    );
  }
}