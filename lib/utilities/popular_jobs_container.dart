// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PopularJob extends StatelessWidget {
  final String jobName;
  final String jobPay;
  final String jobPlace;
  final String jobCompany;
  final Widget jobIconContainer;

  const PopularJob({super.key, required this.jobIconContainer, required this.jobCompany, required this.jobName, required this.jobPay, required this.jobPlace});
  void _onPressed(){

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        width: 500,
        height: 88,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              //logo and job name
              Row(
                children: [
                  //container for displaying the icon
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0, bottom: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: jobIconContainer,
                        ),
                      ),
                    ),
                  ),
                  //job name and company
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(jobName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
                      SizedBox(height: 5,),
                      Text(jobCompany),
                    ],
                  ),
                  SizedBox(width: 70,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(jobPay, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
                      SizedBox(height: 5,),
                      Text(jobPlace),
                    ],
                  ),
                ],
              ),
              
             
            ],
          ),
        ),
      ),
    );
  }
}