import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/constants.dart';
import 'package:wallet_app/views/widgets/my_listtile_widget.dart';

import '../controllers/home_controller.dart';
import '../models/balance.dart';
import 'views.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController c = Get.put(HomeController());
  final pc = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: const Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink.shade100,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 32,
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: kCTStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ' Card',
                        style: kCTStyle,
                      )
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 12),
                  height: 220,
                  child: PageView.builder(
                    
                    controller: pc,
                    itemCount: c.cardData.length,
                    itemBuilder: (context, index) {
                      Balance b = c.cardData[index];
                      var color = c.getColor(index);
                      return MyCardWidget(color: color, b: b);
                    },
                  )),
              const SizedBox(
                height: 14,
              ),
              SmoothPageIndicator(
                controller: pc,
                count: c.cardData.length,
                effect: const ExpandingDotsEffect(),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  InkResponse(
                      child: ButtonWidget(
                          image: 'assets/send-money.png', title: 'Send')),
                  ButtonWidget(image: 'assets/credit-card.png', title: 'Pay'),
                  ButtonWidget(image: 'assets/bill.png', title: 'Bills'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyListTileWidget(
                      image: 'assets/statistics.png',
                      title: 'Statistics',
                      subTitle: 'Payments and Income'),
                  SizedBox(
                    height: 12,
                  ),
                  MyListTileWidget(
                      image: 'assets/cash-flow.png',
                      title: 'Statistics',
                      subTitle: 'Payments and Income')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
