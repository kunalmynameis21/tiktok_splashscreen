import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'api_helper.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {

  var amountController = TextEditingController();
  Razorpay? razorpay;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    razorpay = Razorpay();
    razorpay?.on(
        Razorpay.EVENT_PAYMENT_SUCCESS, (PaymentSuccessResponse success) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("PAYMENT  DONE")));
    });
    razorpay?.on(
        Razorpay.EVENT_PAYMENT_ERROR, (PaymentFailureResponse failed) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("PAYMENT faild")));
    });
    razorpay?.on(
        Razorpay.EVENT_EXTERNAL_WALLET, (ExternalWalletResponse wallet) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("PAYMENT  DONE")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomepageScreen"), centerTitle: true,),
      body: Column(
        children: [SizedBox(height: 20,),
          TextField(controller: amountController,
            style: TextStyle(fontWeight: FontWeight.bold,),
            decoration: InputDecoration(
              hintText: "Entre your amount",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ), SizedBox(height: 20,),
          ElevatedButton(onPressed: ()async{
            var amount = int.parse(amountController.text) * 100;
            var orderId=await ApiHelper.createOrderId(amount);

            var options = {
              'key': 'rzp_test_RD0BiIvkAPO6jt',
              'amount': "$amount",
              'name': 'Acme Corp.',
              'order_id':orderId,
              'description': 'Fine T-Shirt',
              'prefill': {
                'contact': '8888888888',
                'email': 'test@razorpay.com'
              }
            };
            razorpay?.open(options);
          }, child: Text("send Amount", style: TextStyle(color: Colors.red),))
        ],
      ),
    );
  }
}

