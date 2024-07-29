// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class MusicMetadata {
  final String? title;
  final String? artist;
  final String? album;
  final String? albumArtist;
  final String? thumbnail;

  const MusicMetadata({
    this.title,
    this.artist,
    this.album,
    this.albumArtist,
    this.thumbnail,
  });

  @override
  int get hashCode =>
      title.hashCode ^
      artist.hashCode ^
      album.hashCode ^
      albumArtist.hashCode ^
      thumbnail.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MusicMetadata &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          artist == other.artist &&
          album == other.album &&
          albumArtist == other.albumArtist &&
          thumbnail == other.thumbnail;
}