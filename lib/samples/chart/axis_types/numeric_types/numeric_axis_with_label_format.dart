/// Package import
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports
import '../../../../model/model.dart';
import '../../../../model/sample_view.dart';

/// Render the numeric with axis label format.
class NumericLabel extends SampleView {
  const NumericLabel(Key key) : super(key: key);

  @override
  _NumericLabelState createState() => _NumericLabelState();
}

/// State class of numeric axis label format.
class _NumericLabelState extends SampleViewState {
  _NumericLabelState();

  @override
  Widget build(BuildContext context){
    return getChart();
  }

  Widget getChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title:
          ChartTitle(text: isCardView ? '' : 'Farenheit - Celsius conversion'),
      primaryXAxis: NumericAxis(
          labelFormat: '{value}°C',
          majorGridLines: MajorGridLines(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.shift),
      primaryYAxis: NumericAxis(
          labelFormat: '{value}°F',
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(size: 0)),
      series: getNumericLabelSeries(),
      tooltipBehavior: TooltipBehavior(
          enable: true,
          header: '',
          canShowMarker: false,
          format: 'point.x / point.y'),
    );
  }

/// Return the line series with numeric axis label.
  List<LineSeries<ChartSampleData, num>> getNumericLabelSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(xValue: 0, yValue: 32),
      ChartSampleData(xValue: 5, yValue: 41),
      ChartSampleData(xValue: 10, yValue: 50),
      ChartSampleData(xValue: 15, yValue: 59),
      ChartSampleData(xValue: 20, yValue: 68),
      ChartSampleData(xValue: 25, yValue: 77),
      ChartSampleData(xValue: 30, yValue: 86),
      ChartSampleData(xValue: 35, yValue: 95),
      ChartSampleData(xValue: 40, yValue: 104),
      ChartSampleData(xValue: 45, yValue: 113),
      ChartSampleData(xValue: 50, yValue: 122)
    ];
    return <LineSeries<ChartSampleData, num>>[
      LineSeries<ChartSampleData, num>(
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.xValue,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue,
          width: 2,
          markerSettings:
              MarkerSettings(height: 10, width: 10, isVisible: true)),
    ];
  }
}
