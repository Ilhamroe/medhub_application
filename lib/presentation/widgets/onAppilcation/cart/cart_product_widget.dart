import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/domain/model/cart/cart_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class CartProductWidgets extends StatefulWidget {
  const CartProductWidgets({super.key});

  @override
  State<CartProductWidgets> createState() => _CartProductWidgetsState();
}

class _CartProductWidgetsState extends State<CartProductWidgets> {
  List<CartModel> cartModel = [
    CartModel(
      title: 'Sugar Free Gold',
      subtitle: 'bottle of 500 pellets',
      price: 'Rp 25.000',
      image: 'assets/images/product3.png',
      quantity: 1,
    ),
    CartModel(
      title: 'Sugar Free Gold',
      subtitle: 'bottle of 500 pellets',
      price: 'Rp 18.000',
      image: 'assets/images/product4.png',
      quantity: 1,
    ),
  ];

  void _removeItem(int index) {
    setState(() {
      cartModel.removeAt(index);
    });
  }

  void _incrementQuantity(int index) {
    setState(() {
      cartModel[index].quantity += 1;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (cartModel[index].quantity > 1) {
        cartModel[index].quantity -= 1;
      }
    });
  }
  
  int _getTotalItems() {
    int totalItems = 0;
    for (var item in cartModel) {
      totalItems += item.quantity;
    }
    return totalItems;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical:  16.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${_getTotalItems()} Items in your cart',
                style: TextStyle(
                  fontFamily: 'Sofia-Pro',
                  fontSize: 14.sp,
                  color: textColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.add,
                      color: green,
                    ),
                    Text(
                      'Add More',
                      style: TextStyle(
                        fontFamily: 'Sofia-Pro',
                        fontSize: 14.sp,
                        color: green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240.h,
          child: ListView.builder(
            itemCount: cartModel.length,
            itemBuilder: (context, index) {
              final cart = cartModel[index];
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: button,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              cart.image,
                              width: 70.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cart.title,
                                  style: TextStyle(
                                    fontFamily: 'Overpass-Bold',
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  cart.subtitle,
                                  style: TextStyle(
                                    fontFamily: 'Overpass-Regular',
                                    fontSize: 13.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      cart.price,
                                      style: TextStyle(
                                        fontFamily: 'Overpass-Bold',
                                        fontSize: 16.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.highlight_remove,
                                    color: Colors.grey),
                                onPressed: () {
                                  _removeItem(index);
                                },
                              ),
                              Row(
                                children: [
                                  _buildQuantityButton(Icons.remove, green, () {
                                    _decrementQuantity(index);
                                  }),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0.w),
                                    child: Text(
                                      '${cart.quantity}',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  _buildQuantityButton(Icons.add, primary, () {
                                    _incrementQuantity(index);
                                  }),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: dvdColor, 
                    thickness: 1, 
                    height: 1, 
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildQuantityButton(
      IconData icon, Color buttonColor, VoidCallback onPressed) {
    return Container(
      width: 32.w,
      height: 32.h,
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: pureWhite, size: 18),
        onPressed: onPressed,
      ),
    );
  }
}