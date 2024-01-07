import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  String? filePath;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filePath = result.files.single.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicione seu pdf!'),
      ),
      body: Center(
        child: Text(
          filePath != null
              ? 'Caminho do Arquivo: $filePath'
              : 'Nenhum arquivo selecionado',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_rounded, size: 50.0),
            label: 'Adicionar',
            
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'ta bugado',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            _pickFile();
          }
        },
      ),
    );
  }
}
