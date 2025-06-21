import 'dart:convert';
import 'package:http/http.dart' as http;

class CartApiService {
  static Future<List<CartModel>?> getCartApi() async {
    try {
      final response = await http.get(
        Uri.parse("https://fakestoreapi.com/carts"),
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonBody = jsonDecode(response.body);
        return jsonBody.map((json) => CartModel.fromJson(json)).toList();
      } else {
        // Handle different status codes
        print('Request failed with status: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // Handle exceptions (network errors, etc.)
      print('Error fetching cart data: $e');
      return null;
    }
  }
}

// Example of what your CartModel should look like for the carts endpoint:
class CartModel {
  final int id;
  final int userId;
  final String date;
  final List<Map<String, dynamic>> products;

  CartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      date: json['date'] ?? '',
      products: List<Map<String, dynamic>>.from(json['products'] ?? []),
    );
  }
}