import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Mathematics extends StatefulWidget {
  const Mathematics({Key? key}) : super(key: key);

  @override
  State<Mathematics> createState() => _MathematicsState();
}

class _MathematicsState extends State<Mathematics> {
  List<String> pdfFilePaths = [
    '/lib/files/Mathematics/Indeterminate forms.pdf',
    '/lib/files/Mathematics/mean value theorem.pdf',
    '/lib/files/Mathematics/rolle theorem.pdf',
  ];

  int selectedPdfIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF213555),
      appBar: AppBar(
        backgroundColor: Color(0xFF213555),
        title: Text('FILES'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: pdfFilePaths.length,
              itemBuilder: (context, index) {
                String fileName = pdfFilePaths[index].split('/').last; // Extract filename from path
                return ListTile(
                  leading: Icon(Icons.picture_as_pdf, color: Colors.redAccent),
                  title: Text(
                      fileName,
                  style: TextStyle(
                    color: Color(0xFFF5EFE7),
                  ),), // Display only the filename
                  trailing: ElevatedButton(
                    onPressed: () async {
                      String pdfUrl = pdfFilePaths[index];
                      String pdfFileName = pdfUrl.split('/').last;

                      // Create a directory to store downloaded files
                      Directory appDocDir = await getApplicationDocumentsDirectory();
                      String filePath = '${appDocDir.path}/$pdfFileName';

                      // Download the PDF file
                      http.Response response = await http.get(Uri.parse(pdfUrl));
                      File pdfFile = File(filePath);
                      await pdfFile.writeAsBytes(response.bodyBytes);

                      // Set selected PDF index and show the PDF
                      setState(() {
                        selectedPdfIndex = index;
                      });
                    },
                    child: Icon(Icons.download),
                  ),
                  onTap: () {
                    setState(() {
                      selectedPdfIndex = index;
                    });
                  },
                );
              },
            ),
          ),
          if (selectedPdfIndex != -1)
            Expanded(
              flex: 3,
              child: PDFView(
                filePath: pdfFilePaths[selectedPdfIndex],
              ),
            ),
        ],
      ),
    );
  }
}


