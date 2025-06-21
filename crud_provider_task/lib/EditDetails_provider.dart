import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class EditDetails extends StatefulWidget {
 final int index;
 String name;
 String number;
 String street;
 String villageName;
 String pinCode;
 String state;
 String district;
 EditDetails({
super.key,
   required this.number,
   required this.pinCode,
   required this.street,
   required this.villageName,
   required this.district,
   required this.state,
   required this.name,
});

 @override
  State<EditDetails> createState()=>_EditDetailsState();

}
class EditDetailsState extends state<EditDetails>{
@override
Widget build(BuildContext context){
var provider=Provider.of<EditDetailsProvider>(context ,listen: false);

provider.nameController.text=wiget.name

}
}

