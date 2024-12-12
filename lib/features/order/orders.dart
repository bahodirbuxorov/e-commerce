
import 'package:flutter/material.dart';
import 'package:untitled1/features/order/widgets/order_widget.dart';
import '../../core/constants/color.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              color: CustomColor.mainColor,
              child: TabBar(
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.transparent,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: CustomColor.buttonColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Processing"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Shipped"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Delivered"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Returned"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Canceled"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Processing
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: const [
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                  OrderWidget(),
                ],
              ),
            ),

            // Shipped
            const Center(
              child: Text(
                "Shipped",
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Delivered
            const Center(
              child: Text(
                "Delivered",
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Returned
            const Center(
              child: Text(
                "Returned",
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Canceled
            const Center(
              child: Text(
                "Canceled",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )

      ),
    );
  }
}


