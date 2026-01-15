import 'package:flutter/material.dart';
import 'package:onlystudy11/core/theme/colors_manager.dart';
import 'package:onlystudy11/core/theme/txt_style.dart';
import 'package:rich_readmore/rich_readmore.dart';


class DetailsScreen extends StatefulWidget {
  const DetailsScreen ({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}
//thgfh

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFav = false;
  bool isS =true;
  bool isM = false;
  bool isL = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 26,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios),),
              Text("Detail",
              style: TextStyle(
                color: Color.fromRGBO(47, 45, 44, 1),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              ),
              IconButton(onPressed: (){

                setState(() {
                  isFav = !isFav;

                });
              }, icon: Icon(isFav == true ?Icons.favorite: Icons.favorite_border),),


            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/coffee_detail.png"),
                Text("Cappuccino",
                  style: TextStyle(
                    color: ColorsManager.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text("with Chocolate",
                  style: TextStyle(
                    color:  ColorsManager.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,


                  ),
                ),
                Row(
                  spacing: 3,
                  children: [
                    Icon(Icons.star,color: Colors.yellow),
                    Text("4.8",
                      style: TextStyle(
                        color: ColorsManager.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,

                      ),),
                    Text("230",
                      style: TextStyle(
                        color: ColorsManager.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,

                      ),),
                    Spacer(),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightBrown,
                        borderRadius: BorderRadius.circular(14),

                    ),
                      child: Image.asset("assets/logos/bean.png"),
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightBrown,
                        borderRadius: BorderRadius.circular(14),

                      ),
                      child: Image.asset("assets/logos/milk.png"),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Text("Description",
                  style:TxtStyle.font600Size16Black,
                ),
                SizedBox(height: 10),
                RichReadMoreText.fromString(
                  text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..  ',
                  textStyle: TextStyle(color:  ColorsManager.grey,fontSize: 14,fontWeight: FontWeight.w400),
                  settings: LengthModeSettings(
                    trimLength: 70,
                    trimCollapsedText: ' Read more ',
                    trimExpandedText: ' Read less ',
                    onPressReadMore: () {
                      /// specific method to be called on press to show more
                    },
                    onPressReadLess: () {
                      /// specific method to be called on press to show less
                    },
                    lessStyle: TextStyle(color: ColorsManager.brown,fontSize: 14,fontWeight: FontWeight.w600),
                    moreStyle: TextStyle(color: ColorsManager.brown,fontSize: 14,fontWeight: FontWeight.w600),
                  ),
                ),

                SizedBox(height: 24),

                Text("Size",
                  style:TxtStyle.font600Size16Black,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        width: 96,
                        height: 43,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:isS == true? ColorsManager.brown : ColorsManager.grey,
                            width: 1,
                          ),
                          color:isS ==true?ColorsManager.brown : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("S",
                          style: TxtStyle.font400Size14Black,
                        )),),
                        onTap: (){
                          isS =true;
                          isM = false;
                          isL = false;
                          setState(() {

                          });
                        },
                      ),
                      


                    InkWell(
                      onTap :(){
                        isS =false;
                        isM = true;
                        isL = false;
                        setState(() {

                        });
                      },
                      child : Container(
                        width: 96,
                        height: 43,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:isM == true?ColorsManager.brown : ColorsManager.grey,
                            width: 1,
                          ),
                          color:isM ==true?ColorsManager.brown : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      
                      
                        ),
                        child: Center(child: Text("M",
                          style: TxtStyle.font400Size14Black,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                       isL = true;
                      isM= false;
                      isS = false;
                      setState(() {

                        });
                      },
                        child: Container(
                        width: 96,
                        height: 43,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:isL == true?ColorsManager.brown : ColorsManager.grey,
                            width: 2,
                          ),
                          color:isL == true?ColorsManager.brown : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                      
                      
                        ),
                        child: Center(child: Text("L",
                          style: TxtStyle.font400Size14Black,)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: ColorsManager.white,
                  height: 1,

                ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Price",
                          style: TxtStyle.font400Size14Grey,
                          ),
                          Text(isS == true? "4.99\$":isM == true? "7.00\$":"9.50\$", style: TxtStyle.font600Size16Brown,
                          ),

                        ],
                      ),
                      Container(
                        width: 217,
                        height: 55,
                        decoration: BoxDecoration(
                          color: ColorsManager.brown,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(child: Text("Buy Now",
                        style: TxtStyle.font600Size16White,
                        ))

                      ),

                    ],
                  ),
              ],
            ),
          ),


        ],

      ),
    );
  }
}
