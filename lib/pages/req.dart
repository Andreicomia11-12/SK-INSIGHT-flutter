import 'package:flutter/material.dart';
import 'package:file_selector/file_selector.dart';

class RequirementSection extends StatefulWidget {
  const RequirementSection({super.key});

  @override
  State<RequirementSection> createState() => _RequirementSectionState();
}

class _RequirementSectionState extends State<RequirementSection> {
  final List<String> documents = [
    'Sedula',
    'Certificate of Enrollment',
    'School ID',
  ];

  final Map<String, XFile?> selectedFiles = {};

  Future<void> pickFile(String docName) async {
    final XFile? file = await openFile();
    if (file != null) {
      setState(() {
        selectedFiles[docName] = file;
      });
    }
  }

  void deleteFile(String docName) {
    setState(() {
      selectedFiles.remove(docName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Requirements Upload:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...documents.map((doc) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Center(
              child: SizedBox(
                width: 330,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(doc),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 3,
                      child: Text(
                        selectedFiles[doc]?.name ?? 'No file selected',
                        style: const TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.upload_file, color: Colors.blue),
                      onPressed: () => pickFile(doc),
                      tooltip: 'Upload',
                    ),
                    IconButton(
                      icon: const Icon(Icons.visibility, color: Colors.green),
                      onPressed: selectedFiles[doc] != null
                          ? () {
                        final path = selectedFiles[doc]!.path;
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('File path: $path')),
                        );
                      }
                          : null,
                      tooltip: 'View',
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: selectedFiles[doc] != null
                          ? () => deleteFile(doc)
                          : null,
                      tooltip: 'Delete',
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
