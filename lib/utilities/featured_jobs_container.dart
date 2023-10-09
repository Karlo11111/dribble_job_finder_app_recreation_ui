// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FeaturedJob extends StatelessWidget {
  final String jobName;
  final String jobPay;
  final String jobPlace;
  final String jobCompany;
  final Widget jobIconContainer;

  const FeaturedJob({super.key, required this.jobIconContainer, required this.jobCompany, required this.jobName, required this.jobPay, required this.jobPlace});
  void _onPressed(){

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0),
      child: Container(
        width: 230,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
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
                    Text(jobName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),),
                    SizedBox(height: 5,),
                    Text(jobCompany, style: TextStyle(fontSize: 14, color: Colors.white),),
                  ],
                )
              ],
            ),
            //full time part time containers
            SizedBox(height: 5,),
            Row(
              children: [
                //full time container
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: 55,
                    height: 20,
                    decoration: BoxDecoration(color: Colors.blue.shade300, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Full Time", style: TextStyle(fontSize: 10, color: Colors.white),),
                    ),
                  ),
                ),
                //part time container
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: 55,
                    height: 20,
                    decoration: BoxDecoration(color: Colors.blue.shade300, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Part Time", style: TextStyle(fontSize: 10, color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 12),
                  child: Text(jobPay, style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 12),
                  child: Text(jobPlace, style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}