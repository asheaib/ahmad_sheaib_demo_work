/*Dashboard*/
import 'package:ahmad_sheaib_demo/core/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductProvider pvm = context.watch<ProductProvider>();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    context.read<ProductProvider>().getAllProducts();
     return Scaffold(
       body:pvm.productItems.isEmpty? const Center(child: CircularProgressIndicator(
          color: Colors.deepPurple,
       ),
       )
       : ListView.builder(itemCount:pvm.productItems.length ,
           itemBuilder:(context,index){
           return Column (
             children: [
               Image.network(pvm.productItems[index].image.toString(),width: width*0.75,height: height*0.3),
               ListTile(
               title: Text("${pvm.productItems[index].title}"),
               ),
               ],
       );
     }),
     );
  }
}