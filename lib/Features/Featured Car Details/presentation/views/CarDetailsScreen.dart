import 'package:carz/core/Styles/styles.dart';
import 'package:flutter/material.dart';

import '../../../Featured Sell Car/presentation/views/Sell Car Screen.dart';
import '../../../FeaturedVideo/presentation/views/WatchVideo Screen.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {
            },
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,

                        MaterialPageRoute(builder: (context)=> WatchVideoScreen()));
                  },
                  child: Image.network(
                    "https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSmallImage(
                      "https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg"),
                  _buildSmallImage(
                      "https://images.pexels.com/photos/217325/pexels-photo-217325.jpeg"),
                  _buildSmallImage(
                      "https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg"),
                  _buildSmallImage(
                      "https://images.pexels.com/photos/217325/pexels-photo-217325.jpeg"),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Telsa Model 3",
                      style: Style.titleStyle,
                    ),
                  ),
                  // التقييم
                  Row(
                    children: [
                      Text(
                        "4.5/5",
                        style: Style.titleStyle.copyWith( color: Colors.orange,
                          fontWeight: FontWeight.bold,fontSize: 18),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                "Rs. 18,000,000.00",
                style: Style.priceStyle,
              ),
              const SizedBox(height: 8),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Maecenas diam nam eu nulla a. Vestibulum aliquet facilisi interdum "
                    "nibh blandit. Read more...",
                style: Style.descriptionStyle,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  _buildTag("Autopilot"),
                  _buildTag("360° Camera"),
                ],
              ),

              const SizedBox(height: 16),
              Row(
                children: [
                  _buildInfoItem(Icons.phone_in_talk, "Contact Dealer"),
                  SizedBox(
                    width: 25,
                  ),
                  _buildInfoItem(Icons.info_outline, "Car details (Model, year...)"),

                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _buildInfoItem(Icons.location_on_outlined, "Dehli, India"),
                  SizedBox(
                    width: 50,
                  ),

                  _buildInfoItem(Icons.account_balance_wallet, "EMI/Loan"),
                ],
              ),
              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> SellCarScreen()));
                  },
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSmallImage(String imageUrl) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 60,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      width: 170,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Checkbox(
            checkColor: Colors.orange,
            activeColor: Colors.white,
            side: BorderSide(color: Colors.orange, width: 2),
            value: isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                isChecked = newValue!;
              });
            },
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black, size: 20),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(color: Colors.black87),
        ),
      ],
    );
  }
}



