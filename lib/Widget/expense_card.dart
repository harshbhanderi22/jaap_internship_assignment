import 'package:flutter/material.dart';
import 'package:jaap_internship_assignment/constant.dart';

class TrendingExpense extends StatefulWidget {

  const TrendingExpense({super.key, required this.heading,required this.date, required this
      .expense});

  final String heading;
  final String date;
  final int expense;

  @override
  State<TrendingExpense> createState() => _TrendingExpenseState();
}

class _TrendingExpenseState extends State<TrendingExpense> {


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
                   Text(widget.heading, style: kTreadingHeading,),
                    const SizedBox(height: 5,),
                    Text(widget.date,style: kTreadingDate,)
                ],
              ),
            ],
          ),
           Center(
            child: Text(
                '-${widget.expense}',
                style: kTreadingExpense
            ),
          )
        ],
      ),
    );
  }
}