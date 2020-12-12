import 'package:flutter/material.dart';
import '../../widgets/jh_bottom_sheet.dart';
import '../../widgets/jh_nine_picture.dart';

List<String> dataArr;

List<String> dataArr2;

List getData(){
  dataArr = new List();
  for(int i = 0; i < 9; i++){
    var img;
    if(i%2==0){
      img = "https://gitee.com/iotjh/Picture/raw/master/lufei2.png";
    }else{
      img= "https://gitee.com/iotjh/Picture/raw/master/lufei.png";
    }
    dataArr.add(img);
  }
  return dataArr;
}

List getData2(){
  dataArr2 = new List();
  for(int i = 0; i < 4; i++){
    var img;
    if(i%2==0){
      img = "https://gitee.com/iotjh/Picture/raw/master/lufei2.png";
    }else{
      img= "https://gitee.com/iotjh/Picture/raw/master/lufei.png";
    }
    dataArr2.add(img);
  }
  return dataArr2;
}


class GridViewTest3 extends StatefulWidget {
  @override
  _GridViewTest3State createState() => _GridViewTest3State();
}

class _GridViewTest3State extends State<GridViewTest3> {

  @override
  void initState() {
    super.initState();
    getData();
    getData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text('GridView实现朋友圈效果（九宫格）')
        ),
        body:
        Container(
            height: 1600,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("九宫格"),
                Container(
                    padding: EdgeInsets.fromLTRB(80, 10, 30, 10),
                    color: Colors.blue,
                    child:
                    JhNinePicture(
                      imgData: dataArr,
                      lRSpace: 110,
                      onLongPress: (){
                        JhBottomSheet.showText(context, dataArr: ["保存图片"]);
                      },
                    )
                ),
                Text("九宫格，4图处理"),
                Container(
                    padding: EdgeInsets.fromLTRB(80, 10, 30, 10),
                    color: Colors.blue,
                    child:
                    JhNinePicture(
                      imgData: dataArr2,
                      lRSpace: 110,
                      onLongPress: (){
                        JhBottomSheet.showText(context, dataArr: ["保存图片"]);
                      },
                    )
                ),
              ],
            )
        )
    );
  }
}

