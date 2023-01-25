import 'package:flutter/material.dart';
import 'package:jaap_internship_assignment/Widget/bottom_nav.dart';
import 'package:jaap_internship_assignment/Widget/expense_card.dart';
import 'package:jaap_internship_assignment/constant.dart';
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
      bottomNavigationBar: BottomNavBar(),
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
                        const SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black38,)
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/2.5,
              ),
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
                    height: MediaQuery.of(context).size.height/3,
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                       children: [
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
}


