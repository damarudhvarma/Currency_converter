
import 'package:flutter/material.dart';
class Pagee extends StatefulWidget{
  const Pagee({super.key});
  @override
  State createState()=> _Pagee1();
  
}
class _Pagee1 extends State{
   double result =0;
    final TextEditingController textEditingController= TextEditingController();
@override
Widget build(BuildContext context){
    
    final border = OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                              style :BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              
                            ),
                            borderRadius: BorderRadius.circular(60),
                            );
                            
    return(    Scaffold( backgroundColor: Colors.blueGrey,
       appBar: AppBar(
        backgroundColor: Colors.blueGrey ,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
       ),
        body: Center( 
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: 
                 [
                           Text(
                            'INR  ${result !=0 ? result.toStringAsFixed(2): result.toStringAsFixed(2) }',
                          style: const TextStyle(fontSize:35,
                          fontWeight: FontWeight.w400,
                          color:Color.fromARGB(255, 255, 255, 255)
                          ),
                          ),
                       TextField(
                        controller: textEditingController,
                        style:  const TextStyle( color:  Colors.white  ),
                        decoration :InputDecoration(
                            hintText:"enter the currency in USD",
                            hintStyle: const  TextStyle(
                              color: Colors.white54
                            ),
                            prefixIcon: const Icon(Icons.monetization_on),
                            prefixIconColor: Colors.black,
                            filled: true,
                            fillColor: Colors.grey,
                               focusedBorder: border,
                               enabledBorder: border,
                             ),
                             keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                             ),
                        ),
                        const SizedBox(height: 10),
                       ElevatedButton(
                        onPressed: (){
                          setState(() {
                            result= double.parse(textEditingController.text)*83.04;
                          });
                        },
                        
                        style:  TextButton.styleFrom(
                          backgroundColor:Colors.black,
                          foregroundColor:Colors.white,
                          minimumSize:const  Size(
                            double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            ),
                            child: const Text('convert'),
                        ),
                       
                   ],
                      ),
          ),
          
        )
   )
    );
}
}

