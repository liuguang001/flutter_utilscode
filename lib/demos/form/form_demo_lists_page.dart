import 'package:flutter/material.dart';
import '../../widgets/jh_text_list.dart';

class FormDemoListsPage extends StatelessWidget {

  final List titleData = ["JhLoginTextField","JhTextField","JhFormInputCell","JhFormSelectCell","JhSetCell",'FormTestPage'];
  final List routeData = ["LoginTextFieldTestPage","InputTextFieldTestPage","FormInputCellTestPage","FormSelectCellTestPage","SetCellTestPage",'FormTestPage'];
  @override
  Widget build(BuildContext context) {
    return  JhTextList(
      title: "JhForm",dataArr: titleData,
      callBack: (index,str){
        print(index);
        Navigator.pushNamed(context, routeData[index]);

      },
    );

  }
}