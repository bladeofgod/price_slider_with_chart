/*
* Author : LiJiqqi
* Date : 2020/3/12
*/


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_demo/combine_demo/own_demo/curve_chart_line.dart';
import 'package:flutter_slider_demo/combine_demo/view/chart_bean.dart';

class AirbnbPricePicker extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return AirbnbPricePickerState();
  }

}

class AirbnbPricePickerState extends State<AirbnbPricePicker> {
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildCurveChart(),
        ],
      ),
    );
  }

  Widget buildCurveChart(){

    var curveChartLine = CurveChartLine(
      //金额500-2000
      //房屋数量10-50
      chartBeans: [
        ChartBean(x: "\$2000", y: 32),
        ChartBean(x: "\$1100", y: 48),
        ChartBean(x: "\$1400", y: 32),
        ChartBean(x: "\$500", y: 24),
        ChartBean(x: "\$800", y: 50),
        ChartBean(x: "\$1800", y: 25),
        ChartBean(x: "\$1200", y: 18),
        ChartBean(x: "\$2000", y: 32),
        ChartBean(x: "\$1100", y: 48),
        ChartBean(x: "\$1400", y: 32),

      ],
      //整个图表的宽高。
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height / 5 * 1.6),
      isCurve: true,
      yNum: 11,//y轴刻度尺值 暂时无用
      lineWidth: 4,
      lineColor: Colors.blueAccent,
      shaderColors: [
        Colors.orange.withOpacity(0.8),
        Colors.orangeAccent.withOpacity(0.5)
      ],
      leftValue: 0.35,
      rightValue: 0.55,
    );

    return Container(
      color: Colors.green[500],
      child: curveChartLine,
    );

  }


}





























