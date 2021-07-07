import 'package:currconv_app/currencyService.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currencytwo;
  final isWhite;

  DashboardPage(
      {this.convertedCurrency,
      this.currencyVal,
      this.currencyone,
      this.currencytwo,
      this.isWhite});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFEC5759)),
          Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      CurrencyService().getCurrenyString(widget.currencyone),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontFamily: 'Arial'),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      widget.currencyVal.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 120.0,
                      ),
                    ),
                  ),
                  Text(
                    widget.currencyone,
                    style: TextStyle(
                      color: Color(0xFFFFB6B6),
                      fontSize: 17.0,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.5),
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFEC5759),
                            style: BorderStyle.solid,
                            width: 7.0)),
                    child: Center(
                      child: widget.isWhite
                          ? Icon(Icons.arrow_upward,
                              size: 60.0, color: Color(0xFFEC5759))
                          : Icon(
                              Icons.arrow_downward,
                              size: 60.0,
                              color: Color(0xFFEC5759),
                            ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    widget.currencytwo,
                    style: TextStyle(
                      color: Color(0xFFFFB6B6),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      widget.convertedCurrency.toString(),
                      style: TextStyle(
                          color: Color(0xFFEC5759),
                          fontSize: 120.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    CurrencyService().getCurrenyString(widget.currencytwo),
                    style: TextStyle(
                        color: Color(0xFFEC5759),
                        fontSize: 22.0,
                        fontFamily: 'Quicksand'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
