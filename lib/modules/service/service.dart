import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tabor/layout/layout_screen.dart';
import 'package:tabor/modules/Home/homeScreen.dart';
import 'package:tabor/modules/requirement/requirement.dart';
import 'package:tabor/modules/showTecket/showTecket.dart';
import 'package:tabor/shared/componants/componant.dart';
import 'package:tabor/shared/componants/constants.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

class Service_screen extends StatefulWidget {
   Service_screen({super.key});
  @override
  State<Service_screen> createState() => _Service_screenState();
}

class _Service_screenState extends State<Service_screen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController nationalIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    int carTime=15;
    int bikeTime=17;
    int walkTime=20;
    bool _titleColor=false;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: screenHight * 0.17,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(blurRadius: 4, color: Color(0xff40000000))
                ],
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: DefoltSvgImage(
                            image:
                                'assets/images/vuesax_bulk_arrow_square_right.svg'),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('الفيوم-فرع الجامعة',
                            style: const TextStyle(
                                color: Color(0xff161616),
                                fontWeight: FontWeight.w600,
                                fontFamily: "ReadexPro",
                                fontStyle: FontStyle.normal,
                                fontSize: 18.0),
                            textAlign: TextAlign.right),
                        SizedBox(
                          height: 8,
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: specialtext(text: "طابور خدمة العملاء",),
                        )
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Color(0xffbceee3),
                      child: InkWell(
                          onTap: () {
                            NavigateAndFinsh(
                                context,
                                Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: layoutScreen()));
                          },
                          child: Icon(Icons.close)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(top: 16, start: 16, bottom: 16,end: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.699999988079071,
                          child: specialtext(
                            text: 'وسيلة النقل',
                            fcolor: Color(0xff161616),
                            fweight: FontWeight.w500,
                            fsize: 21,
                            talign: TextAlign.right
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                        width: screenWidth - 32,
                        height: 152,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        ),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Container(
                        color: _titleColor==true ? const Color(0xffbceee3):Colors.white,
                        child: ListTile(
                  //selectedTileColor: _titleColor,
                  horizontalTitleGap: 0,
                  leading: Opacity(
                  opacity: 0.7,
                  child: Radio(
                  activeColor:Color(0xff009c7b),
                  value: 1,
                  groupValue: selectedTransport,
                  onChanged: (value) {
                    setState((){});
                    selectedTransport=value!;
                    
                  },
                  ),
                  ),
                  title: specialtext(
                    text: 'سيارة',
                    fweight: FontWeight.w500,
                    fsize: 16,
                  ),
                  trailing: specialtext(text: "$carTime دقيقة",),
                  onTap: () {
                   setState(() {
                     _titleColor=!_titleColor;
                   });
                  },
                ),
          ),
              ListTile(
                //tileColor: _titleColor,
                horizontalTitleGap: 0,
                leading: Opacity(
                opacity: 0.7,
                child: Radio(
                value: 2,
                activeColor:Color(0xff009c7b),
                groupValue: selectedTransport,
                onChanged: (value) {
                  setState((){});
                  selectedTransport=value!;
                  
                },
                ),
                ),
                title: specialtext(
                  text: 'دراجة',
                  fweight: FontWeight.w500,
                  fsize: 16,
                ),
                trailing: specialtext(text: "$bikeTime دقيقة",),
                onTap: () {
                  setState(() {
                  // _titleColor=Color(0xffbceee3);
                 });
                },
              ),
              ListTile(
                //tileColor: _titleColor,
                horizontalTitleGap: 0,
                leading: Opacity(
                opacity: 0.7,
                child: Radio(
                activeColor:Color(0xff009c7b),
                value: 3,
                groupValue: selectedTransport,
                onChanged: (value) {
                  setState((){});
                  selectedTransport=value!;
                  
                },
                ),
                ),
                title: specialtext(
                  text: 'سير',
                  fweight: FontWeight.w500,
                  fsize: 16,
                ),
                trailing: specialtext(text: "$walkTime دقيقة",),
                onTap: () {
                  setState(() {
                  // _titleColor=Color(0xffbceee3);
                 });
                },
              ),
             ],
             ),
              ),
              const SizedBox(height: 32,),
              specialtext(text: 'المعلومات الخاصه بك',
              fweight: FontWeight.w500,
              fsize: 18,
              fcolor: const Color(0xff7d7d7d),
              ),
              const SizedBox(height: 16,),
                     Container(
                      padding:EdgeInsetsDirectional.only(start: 16,end: 16,top: 8) ,
                      width: double.infinity,
                      height: 172,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      ),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MixedText(text1: 'رقم الهاتف'),
                        const SizedBox(height: 4,),
                        defaultFormFieldReservation(
                          fcolor: Color(0xff161616),
                          hintText: 'ادخل رقم الهاتف',
                          controller: phoneController ,
                           type: TextInputType.phone,
                           validate: (value) {
                              if (value == null || value.isEmpty) {
                                return 'الرجاء ادخال رقم هاتف صحيح';
                              }
                            },
                           width: double.infinity),
                        const SizedBox(height: 16,),
                        MixedText(text1: 'الرقم القومي'),
                        const SizedBox(height: 4,),
                        defaultFormFieldReservation(
                          fcolor: Color(0xff161616),
                          hintText: "ادخل الرقم القومي",
                          controller: nationalIDController ,
                           type: TextInputType.number,
                           validate: (value) {
                              if (value == null || value.isEmpty) {
                                return 'الرجاء ادخال رقم قومي صحيح';
                              }
                            },
                           width: double.infinity),
                        ],
                        ),
                        ),      
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buttonCardBottom(
            space: (16/390)*screenWidth,
            widthCard: (158/390)*screenWidth,
            function1: (){
              NavigateTo(context,  Directionality(textDirection: TextDirection.rtl,
              child: Service_screen()));
              //RequirementScreen
            },
             text1:' حجز الدور',
              image1: 'assets/images/vuesax_bold_ticket_expired.svg',
            function2: (){
            NavigateTo(context,  const Directionality(textDirection: TextDirection.rtl,
            child: RequirementScreen()));
            },
              text2: ' المطلوب',
              image2: 'assets/images/vuesax_bold_info_circle.svg'),
          ],
        ),
      ),
    );
  }
}
