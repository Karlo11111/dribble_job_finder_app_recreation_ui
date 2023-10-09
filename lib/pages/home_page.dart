// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dribble_job_finder_app_recreation_ui/utilities/featured_jobs_container.dart';
import 'package:dribble_job_finder_app_recreation_ui/utilities/popular_jobs_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void _onPressed(){

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //appbar text and icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 35),
                      child: Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text("Explore Jobs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 60),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade300),  
                    child: IconButton(onPressed: _onPressed, 
                    icon: Icon(Icons.person), 
                    iconSize: 30,)
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            //search bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey.shade300),  
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Icon(Icons.search, color: Colors.grey.shade400, size: 40,),
                          ),
                          SizedBox(width: 5,),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search a job...',
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey.shade300), 
                    child: IconButton(onPressed: _onPressed, icon: Icon(Icons.abc, color: Colors.green,)),
                  ),
                )
              ],
            ),
            
            SizedBox(height: 20,),
            //featured jobs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Featured Jobs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text("View more", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),),
                ),
                
              ],
            ),
            SizedBox(height: 20,),
            //classes for the featured jobs 
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeaturedJob(
                    jobCompany: "Paypal", 
                    jobName: "Software Engineer", 
                    jobPay: "\$140,000/year", 
                    jobPlace: "California,USA",
                    jobIconContainer: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8),
                        child: Icon(Icons.paypal_rounded, size: 30,),
                      ),
                    ),
                  ),
                  FeaturedJob(
                    jobCompany: "Apple", 
                    jobName: "Ux Researcher", 
                    jobPay: "\$150,000/year", 
                    jobPlace: "Sukošan,HR",
                    jobIconContainer: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8),
                        child: Icon(Icons.apple, size: 30,),
                      ),
                    ),
                  ),
                  FeaturedJob(
                    jobCompany: "Google Play Store", 
                    jobName: "Ui Designer", 
                    jobPay: "\$180,000/year", 
                    jobPlace: "Florida,USA",
                    jobIconContainer: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8),
                        child: Icon(Icons.shop, size: 30,),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            //popular jobs text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Popular Jobs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text("View more", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            //popular jobs tiles
            SingleChildScrollView(
              child: Column(
                children: [
                  PopularJob(
                      jobCompany: "Apple", 
                      jobName: "Ux Researcher", 
                      jobPay: "\$150,000/year", 
                      jobPlace: "Sukošan,HR",
                      jobIconContainer: Container(
                          child: Icon(Icons.apple, size: 50,),
                        ),
                    ),
                    SizedBox(height: 10,),
                    PopularJob(
                    jobCompany: "Paypal", 
                    jobName: "Software Engineer", 
                    jobPay: "\$140,000/year", 
                    jobPlace: "California,USA",
                    jobIconContainer: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8),
                        child: Icon(Icons.paypal_rounded, size: 30,),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  PopularJob(
                      jobCompany: "Google Play Store", 
                      jobName: "Ui Designer", 
                      jobPay: "\$180,000/year", 
                      jobPlace: "Florida,USA",
                      jobIconContainer: Container(
                          child: Icon(Icons.shop, size: 50,),
                        ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
      

    );
  }
}