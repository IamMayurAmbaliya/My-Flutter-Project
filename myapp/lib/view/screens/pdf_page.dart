import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:quickmart/utills/modal.dart';
import 'package:quickmart/utills/product.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  Future<Uint8List> getPdf() async {
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Container(
            width: double.infinity,
            color: PdfColors.white,
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(10),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(
                    height: 15,
                  ),
                  pw.Align(
                    alignment: pw.Alignment.center,
                    child: pw.Text(
                      "QUICK MART",
                      style: pw.TextStyle(
                        fontSize: 25,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Align(
                    alignment: pw.Alignment.center,
                    child: pw.Text(
                      "Near Cozway River,VedRoad\n Katargam,Surat,Gujarat.",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                  ),
                  // pw.SizedBox(
                  //   height: 10,
                  // ),
                  // pw.Container(
                  //   height: 1,
                  //   width: double.infinity,
                  //   color: PdfColors.black,
                  // ),
                  // pw.SizedBox(
                  //   height: 10,
                  // ),
                  pw.Divider(),
                  pw.Text(
                    "Name: MAYUR AMBALIYA",
                    style: const pw.TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  pw.Divider(),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        "Date: ${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      pw.Text(
                        "Time: ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Text(
                    "Bill no: 123456789",
                    style: const pw.TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    children: [
                      pw.Spacer(),
                      pw.Expanded(
                        flex: 5,
                        child: pw.Text(
                          'Item',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 2,
                        child: pw.Text(
                          'Qty',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 2,
                        child: pw.Text(
                          'Price',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 2,
                        child: pw.Text(
                          'Amount',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                  ),
                  pw.Container(
                    child: pw.ListView.builder(
                      itemCount: addToCart.length,
                      itemBuilder: (context, index) {
                        return pw.Row(
                          children: [
                            pw.Expanded(
                              flex: 5,
                              child: pw.Text(
                                "${addToCart[index]['title']}",
                                style: const pw.TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            pw.Spacer(),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Text(
                                "${addToCart[index]['qty']}",
                                style: const pw.TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Text(
                                "${addToCart[index]['price']}",
                                style: const pw.TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Text(
                                "${addToCart[index]['price']}",
                                style: const pw.TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        );
                        // return pw.Row(
                        //   children: [
                        //     pw.Text(
                        //       "${addToCart[index]['title']}",
                        //       style: const pw.TextStyle(
                        //         fontSize: 16,
                        //       ),
                        //     ),
                        //     pw.Expanded(
                        //       child: pw.SizedBox(),
                        //     ),
                        //     pw.Container(
                        //       color: PdfColors.red500,
                        //       width: 130,
                        //       child: pw.Row(
                        //         mainAxisAlignment:
                        //             pw.MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           pw.Text(
                        //             "${addToCart[index]['qty']}",
                        //             style: const pw.TextStyle(
                        //               fontSize: 16,
                        //             ),
                        //           ),
                        //           pw.Text(
                        //             "${addToCart[index]['price']}",
                        //             style: const pw.TextStyle(
                        //               fontSize: 16,
                        //             ),
                        //           ),
                        //           pw.Text(
                        //             "${addToCart[index]['qty']}",
                        //             style: const pw.TextStyle(
                        //               fontSize: 16,
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // );
                      },
                    ),
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                  ),
                  // pw.SizedBox(
                  //   height: 10,
                  // ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        "Sub Total",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      pw.Text(
                        "",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                  ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        "You Saved",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      pw.Text(
                        "HELLO WORLD",
                        style: const pw.TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        "Grand Total",
                        style: pw.TextStyle(
                          fontSize: 16,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        "Rs. HELLO WORLD",
                        style: pw.TextStyle(
                          fontSize: 16,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                  ),
                  pw.Align(
                    alignment: pw.Alignment.center,
                    child: pw.Text(
                      "Thanks, Visit Again...",
                      style: const pw.TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

    return await pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF PAGE"),
      ),
      body: PdfPreview(
        build: (format) => getPdf(),
      ),
    );
  }
}
