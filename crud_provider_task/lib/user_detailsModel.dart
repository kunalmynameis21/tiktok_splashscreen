List<UserDetailsModel>dataList=[];
class UserDetailsModel{
  String name;
  String number;
  String street;
  String villageName;
  String pinCode;
  String state;


  UserDetailsModel({
    required this.state,
    required this.street,
    required this.villageName,
    required this.number,
    required this.pinCode,
    required this.name,


});

}