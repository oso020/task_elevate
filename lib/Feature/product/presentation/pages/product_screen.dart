import 'package:flutter/material.dart';
import 'package:task_elevate/di/di.dart';

import '../../../../core/utils/color_manager.dart';
import '../manager/product_view_model_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/custom_product_widget.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  final ProductViewModelCubit productViewModelCubit =
      getIt<ProductViewModelCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: BlocBuilder<ProductViewModelCubit, ProductViewModelState>(
        bloc: productViewModelCubit..getAllProducts(),
        builder: (context, state) {
          if (state is ProductViewModelSuccess) {
            return
              Padding(
                padding: const EdgeInsets.all(15),
                child: GridView.builder(
                  itemCount: state.products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 15,
                    childAspectRatio: 7 / 9,
                  ),
                  itemBuilder: (context, index) {
                    return ProductItem(
                      productEntity: state.products[index],
                    );
                  },
                ),
              );

          } else if (state is ProductViewModelError) {
            return  Center(
              child: Text(state.failure.errorMessage),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }
}
