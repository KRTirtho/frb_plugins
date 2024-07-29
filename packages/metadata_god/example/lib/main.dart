import 'dart:io';

import 'package:flutter/material.dart';

import 'package:metadata_god/metadata_god.dart';
import 'package:file_picker/file_picker.dart';
import 'package:metadata_god_example/reader_data_view.dart';
import 'package:metadata_god_example/writer_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MetadataGod.initialize();
  runApp(const MyActualApp());
}

class MyActualApp extends StatelessWidget {
  const MyActualApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Metadata God',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Metadata? metadata;
  PlatformFile? selectedFile;

  @override
  void initState() {
    super.initState();
    debugPrint("Calling: initState");
    selectedFile = PlatformFile(
      name: "test.m4a",
      path: "assets/test.m4a",
      size: 3700,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final metadata = await MetadataGod.readMetadata(
        file: "assets/test.m4a",
      );
      setState(() {
        this.metadata = metadata;
      });
      debugPrint("metadata.album: ${metadata.album}");
      debugPrint("metadata.albumArtist: ${metadata.albumArtist}");
      debugPrint("metadata.artist: ${metadata.artist}");
      debugPrint("metadata.discNumber: ${metadata.discNumber}");
      debugPrint("metadata.discTotal: ${metadata.discTotal}");
      debugPrint("metadata.durationMs: ${metadata.durationMs}");
      debugPrint("metadata.fileSize: ${metadata.fileSize}");
      debugPrint("metadata.genre: ${metadata.genre}");
      debugPrint("metadata.picture: ${metadata.picture?.mimeType}");
      debugPrint("metadata.title: ${metadata.title}");
      debugPrint("metadata.trackNumber: ${metadata.trackNumber}");
      debugPrint("metadata.trackTotal: ${metadata.trackTotal}");
      debugPrint("metadata.year: ${metadata.year}");
    });
    debugPrint("End: initState");

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final entities = await Directory("/Users/krtirtho/Music/Spotube")
          .list(recursive: true)
          .toList();

      for (final entity in entities) {
        if (entity is! File || !entity.path.endsWith(".m4a")) continue;
        final metadata = await MetadataGod.readMetadata(file: entity.path);

        debugPrint("[${entity.path}] metadata.title: ${metadata.title}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native Packages'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text("Select a audio file: ${selectedFile?.name ?? ""}"),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            final result = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowCompression: false,
                              allowMultiple: false,
                              withData: false,
                              withReadStream: false,
                              allowedExtensions: [
                                "mp3",
                                "m4a",
                                "flac",
                                "wav",
                                "ogg",
                                "aac",
                                "wma",
                              ],
                            );

                            if (result == null) return;
                            final fileMetadata = await MetadataGod.readMetadata(
                                file: result.files.first.path!);

                            setState(() {
                              metadata = fileMetadata;
                              selectedFile = result.files.first;
                            });
                          },
                          child: const Text("Select"),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton.icon(
                          onPressed: selectedFile == null
                              ? null
                              : () async {
                                  final writable = await showDialog<Metadata?>(
                                    context: context,
                                    builder: (context) =>
                                        WriterView(metadata: metadata),
                                  );

                                  if (writable == null) return;
                                  await MetadataGod.writeMetadata(
                                    file: selectedFile!.path!,
                                    metadata: writable,
                                  );
                                  final fileMetadata =
                                      await MetadataGod.readMetadata(
                                    file: selectedFile!.path!,
                                  );
                                  setState(() {
                                    metadata = fileMetadata;
                                  });
                                },
                          label: const Text("Edit"),
                          icon: const Icon(Icons.edit_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (metadata != null)
                ReaderDataView(
                  metadata: metadata!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
