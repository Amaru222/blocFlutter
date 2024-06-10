import 'package:doan/features/home/bloc/home_bloc.dart';
import 'package:doan/features/home/models/home_product_data.dart';
import 'package:flutter/material.dart';

class ProductTitleWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;
  const ProductTitleWidget(
      {super.key, required this.productDataModel, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/0258/4307/3103/products/asset_2_800x.jpg?v=1571839043'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            productDataModel.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(productDataModel.description),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "RS." + productDataModel.price.toString(),
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomeProductWishListButtonClickedEvent(
                            clickedProduct: productDataModel));
                      },
                      icon: Icon(Icons.favorite)),
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomeProductCartButtonClickedEvent(
                            clickedProduct: productDataModel));
                      },
                      icon: Icon(Icons.shopping_bag_outlined))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
