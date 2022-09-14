import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderdateWidget extends StatefulWidget {
  const OrderdateWidget({Key? key}) : super(key: key);

  @override
  _OrderdateWidgetState createState() => _OrderdateWidgetState();
}

class _OrderdateWidgetState extends State<OrderdateWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      FFLocalizations.of(context).getText(
        '88cyuz9z' /* Order date */,
      ),
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: 'SharpSans',
            color: Color(0xFF222F3A),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
          ),
    );
  }
}
