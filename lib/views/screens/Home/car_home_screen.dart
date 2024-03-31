import 'package:car_store/constants.dart';
import 'package:car_store/models/car_model.dart';
import 'package:car_store/views/screens/Car%20Details/car_details_screen.dart';
import 'package:car_store/views/widgets/car_items.dart';
import 'package:car_store/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          'Available Car',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: carList.length,
          itemBuilder: (context, index) {
            final car = carList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDetailsScreen()));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 25, bottom: 15, right: 20, top: 10),
                      margin:
                          const EdgeInsets.only(left: 24, right: 24, top: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: cardColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: '\$${car.price.toString()}',
                          ),
                          CustomText(
                            text: 'Price/hr',
                            fontSize: 14,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CarItems(
                                value: 'Brand',
                                name: car.brand!,
                                textColor: Colors.white,
                              ),
                              CarItems(
                                value: 'Model No',
                                name: car.model!,
                                textColor: Colors.white,
                              ),
                              CarItems(
                                value: 'CO2',
                                name: car.co2!,
                                textColor: Colors.white,
                              ),
                              CarItems(
                                value: 'Fuel Cons',
                                name: car.fuelCons!,
                                textColor: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        right: 30,
                        child: Image.asset(
                          car.image!,
                          width: 160,
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
