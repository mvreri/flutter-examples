import 'package:flutter_examples/model/sample_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

//ignore: must_be_immutable
class RadialBounceOutExample extends SampleView {
  const RadialBounceOutExample(Key key) : super(key: key);

  @override
  _RadialBounceOutExampleState createState() =>
      _RadialBounceOutExampleState();
}

class _RadialBounceOutExampleState extends SampleViewState {
  _RadialBounceOutExampleState();
  
  @override
  Widget build(BuildContext context) {
    return getRadialBounceOutExample();
  }


SfRadialGauge getRadialBounceOutExample() {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
          radiusFactor: kIsWeb ? 0.85 : 0.98,
          startAngle: 90,
          endAngle: 330,
          minimum: -8,
          maximum: 12,
          showAxisLine: false,
          majorTickStyle: MajorTickStyle(
              length: 0.15, lengthUnit: GaugeSizeUnit.factor, thickness: 2),
          labelOffset: 8,
          axisLabelStyle: GaugeTextStyle(
              fontFamily: 'Times',
              fontSize: isCardView ? 10 : 12,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic),
          minorTicksPerInterval: 9,
          interval: 2,
          pointers: <GaugePointer>[
            NeedlePointer(
                value: 0,
                needleStartWidth: 2,
                needleEndWidth: 2,
                needleColor: const Color(0xFFF67280),
                needleLength: 0.8,
                lengthUnit: GaugeSizeUnit.factor,
                enableAnimation: true,
                animationType: AnimationType.bounceOut,
                animationDuration: 1500,
                knobStyle: KnobStyle(
                    knobRadius: 8,
                    sizeUnit: GaugeSizeUnit.logicalPixel,
                    color: const Color(0xFFF67280)))
          ],
          minorTickStyle: MinorTickStyle(
              length: 0.08,
              thickness: 1,
              lengthUnit: GaugeSizeUnit.factor,
              color: const Color(0xFFC4C4C4)),
          axisLineStyle: AxisLineStyle(
              color: const Color(0xFFDADADA),
              thicknessUnit: GaugeSizeUnit.factor,
              thickness: 0.1)),
    ],
  );
}
}