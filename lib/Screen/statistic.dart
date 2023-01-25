import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jaap_internship_assignment/Widget/bottom_nav.dart';
import 'package:jaap_internship_assignment/Widget/expense_card.dart';
import 'package:jaap_internship_assignment/constant.dart';
import 'package:mrx_charts/mrx_charts.dart';
import 'package:slide_switcher/slide_switcher.dart';

class Statistic extends StatefulWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   }

   List<Widget> tabs = [
     const Text('Day'),
     const Text('Week'),
     const Text('Month'),
     const Text('Year')
   ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Statistic', style: kappBarStyle,),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.downloading_sharp,color: Colors.black,)
          )
        ],
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,)
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.white,
          child: Column(
             children: [
              SlideSwitcher(
                containerColor: Colors.white,
                 slidersColors: const [
                      Color(0xFF558683)
                 ],
                 containerBorderRadius: 5,
                 onSelect: (index) {
                  setState(() {
                  });
                 },
                 containerHeight: 40,
                 containerWight: 350,
                 children: tabs,
               ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF9c9c9c)),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Row(
                      children: const [
                        Text('Expenses', style: kExpenses,),
                        SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black38,)
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3.5,
                child:  Chart(
                  layers: layers(),
                  padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(
                    bottom: 12.0,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text('Top Expenses', style: kTopTreading,),
                      Icon(Icons.sort)
                    ],
                  ),
                  Container(
                     padding: const EdgeInsets.all(10),
                    child: Column(
                       children: const [
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),
                         TrendingExpense(
                             heading: 'Starbuck',
                             date: '12 Jan, 2022',
                             expense: 1200),

                       ],
                     ),
                  )
                ],
              )
            ],

          ),
        ),
      ),

    );
  }

  List<ChartLayer> layers() {
    final from = DateTime(2022, 3);
    final to = DateTime(2022, 12);
    final frequency =
        (to.millisecondsSinceEpoch - from.millisecondsSinceEpoch) / 3.0;
    return [
      ChartHighlightLayer(
        shape: () => ChartHighlightLineShape<ChartLineDataItem>(
          backgroundColor: const Color(0xFF558683),
          currentPos: (item) => item.currentValuePos,
          radius: const BorderRadius.all(Radius.circular(8.0)),
          width: 5.0,
        ),
      ),
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: to.millisecondsSinceEpoch.toDouble(),
            min: from.millisecondsSinceEpoch.toDouble(),
            textStyle: const TextStyle(
              color: Color(0xFF558683),
              fontSize: 10.0,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 100.0,
            max: 600.0,
            min: 0.0,
            textStyle: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 10.0,
            ),
          ),
        ),
        labelX: (value) => DateFormat('MMM')
            .format(DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value.toInt().toString(),
      ),
      ChartLineLayer(
        items: List.generate(
          4,
              (index) => ChartLineDataItem(
            x: (index * frequency) + from.millisecondsSinceEpoch,
            value: Random().nextInt(380) + 20,
          ),
        ),
        settings: const ChartLineSettings(
          color: Color(0xFF558683),
          thickness: 4.0,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipLineShape<ChartLineDataItem>(
          backgroundColor: Colors.white,
          circleBackgroundColor: Colors.white,
          circleBorderColor: const Color(0xFF331B6D),
          circleSize: 4.0,
          circleBorderThickness: 2.0,
          currentPos: (item) => item.currentValuePos,
          onTextValue: (item) => '€${item.value.toString()}',
          marginBottom: 6.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          radius: 6.0,
          textStyle: const TextStyle(
            color: Color(0xFF8043F9),
            letterSpacing: 0.2,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ];
  }
}


