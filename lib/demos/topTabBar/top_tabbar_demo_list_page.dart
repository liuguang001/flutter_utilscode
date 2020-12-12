import 'package:flutter/material.dart';
import '../../widgets/jh_text_list.dart';
import '../../routes/navigator_utils.dart';

class TopTabBarDemoListPage extends StatelessWidget {

  final List titleData = ["TopTabBar1",'TopTabBar2','TopTabBar3'];
  final List routeData = ["TopTabBarTest1Page",'TopTabBarTest2Page','TopTabBarTest3Page'];
  @override
  Widget build(BuildContext context) {
    return  JhTextList(
      title: "顶部分页(新闻标题效果)",
      dataArr: titleData,
      callBack: (index,str){
        Navigator.pushNamed(context, routeData[index]);

      },
    );

  }
}