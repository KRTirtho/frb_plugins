// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

#![allow(
    non_camel_case_types,
    unused,
    non_snake_case,
    clippy::needless_return,
    clippy::redundant_closure_call,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::unused_unit,
    clippy::double_parens,
    clippy::let_and_return,
    clippy::too_many_arguments,
    clippy::match_single_binding,
    clippy::clone_on_copy,
    clippy::let_unit_value,
    clippy::deref_addrof,
    clippy::explicit_auto_deref,
    clippy::borrow_deref_ref,
    clippy::needless_borrow
)]

// Section: imports

use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate!(
    default_stream_sink_codec = SseCodec,
    default_rust_opaque = RustOpaqueMoi,
    default_rust_auto_opaque = RustAutoOpaqueMoi,
);
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_VERSION: &str = "2.1.0";
pub(crate) const FLUTTER_RUST_BRIDGE_CODEGEN_CONTENT_HASH: i32 = 305365544;

// Section: executor

flutter_rust_bridge::frb_generated_default_handler!();

// Section: wire_funcs

fn wire__crate__api__api__init_app_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "init_app",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            deserializer.end();
            move |context| {
                transform_result_sse::<_, ()>((move || {
                    let output_ok = Result::<_, ()>::Ok({
                        crate::api::api::init_app();
                    })?;
                    Ok(output_ok)
                })())
            }
        },
    )
}
fn wire__crate__api__api__read_metadata_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "read_metadata",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_file = <String>::sse_decode(&mut deserializer);
            deserializer.end();
            move |context| {
                transform_result_sse::<_, flutter_rust_bridge::for_generated::anyhow::Error>(
                    (move || {
                        let output_ok = crate::api::api::read_metadata(api_file)?;
                        Ok(output_ok)
                    })(),
                )
            }
        },
    )
}
fn wire__crate__api__api__write_metadata_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::SseCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "write_metadata",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let message = unsafe {
                flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
                    ptr_,
                    rust_vec_len_,
                    data_len_,
                )
            };
            let mut deserializer =
                flutter_rust_bridge::for_generated::SseDeserializer::new(message);
            let api_file = <String>::sse_decode(&mut deserializer);
            let api_metadata = <crate::api::api::Metadata>::sse_decode(&mut deserializer);
            deserializer.end();
            move |context| {
                transform_result_sse::<_, flutter_rust_bridge::for_generated::anyhow::Error>(
                    (move || {
                        let output_ok = crate::api::api::write_metadata(api_file, api_metadata)?;
                        Ok(output_ok)
                    })(),
                )
            }
        },
    )
}

// Section: dart2rust

impl SseDecode for flutter_rust_bridge::for_generated::anyhow::Error {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <String>::sse_decode(deserializer);
        return flutter_rust_bridge::for_generated::anyhow::anyhow!("{}", inner);
    }
}

impl SseDecode for String {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <Vec<u8>>::sse_decode(deserializer);
        return String::from_utf8(inner).unwrap();
    }
}

impl SseDecode for f64 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_f64::<NativeEndian>().unwrap()
    }
}

impl SseDecode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_i32::<NativeEndian>().unwrap()
    }
}

impl SseDecode for Vec<u8> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut len_ = <i32>::sse_decode(deserializer);
        let mut ans_ = vec![];
        for idx_ in 0..len_ {
            ans_.push(<u8>::sse_decode(deserializer));
        }
        return ans_;
    }
}

impl SseDecode for crate::api::api::Metadata {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut var_title = <Option<String>>::sse_decode(deserializer);
        let mut var_durationMs = <Option<f64>>::sse_decode(deserializer);
        let mut var_artist = <Option<String>>::sse_decode(deserializer);
        let mut var_album = <Option<String>>::sse_decode(deserializer);
        let mut var_albumArtist = <Option<String>>::sse_decode(deserializer);
        let mut var_trackNumber = <Option<u16>>::sse_decode(deserializer);
        let mut var_trackTotal = <Option<u16>>::sse_decode(deserializer);
        let mut var_discNumber = <Option<u16>>::sse_decode(deserializer);
        let mut var_discTotal = <Option<u16>>::sse_decode(deserializer);
        let mut var_year = <Option<i32>>::sse_decode(deserializer);
        let mut var_genre = <Option<String>>::sse_decode(deserializer);
        let mut var_picture = <Option<crate::api::api::Picture>>::sse_decode(deserializer);
        let mut var_fileSize = <Option<u64>>::sse_decode(deserializer);
        return crate::api::api::Metadata {
            title: var_title,
            duration_ms: var_durationMs,
            artist: var_artist,
            album: var_album,
            album_artist: var_albumArtist,
            track_number: var_trackNumber,
            track_total: var_trackTotal,
            disc_number: var_discNumber,
            disc_total: var_discTotal,
            year: var_year,
            genre: var_genre,
            picture: var_picture,
            file_size: var_fileSize,
        };
    }
}

impl SseDecode for Option<String> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<String>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for Option<f64> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<f64>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for Option<i32> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<i32>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for Option<crate::api::api::Picture> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<crate::api::api::Picture>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for Option<u16> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<u16>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for Option<u64> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        if (<bool>::sse_decode(deserializer)) {
            return Some(<u64>::sse_decode(deserializer));
        } else {
            return None;
        }
    }
}

impl SseDecode for crate::api::api::Picture {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut var_mimeType = <String>::sse_decode(deserializer);
        let mut var_data = <Vec<u8>>::sse_decode(deserializer);
        return crate::api::api::Picture {
            mime_type: var_mimeType,
            data: var_data,
        };
    }
}

impl SseDecode for u16 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u16::<NativeEndian>().unwrap()
    }
}

impl SseDecode for u64 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u64::<NativeEndian>().unwrap()
    }
}

impl SseDecode for u8 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap()
    }
}

impl SseDecode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {}
}

impl SseDecode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap() != 0
    }
}

fn pde_ffi_dispatcher_primary_impl(
    func_id: i32,
    port: flutter_rust_bridge::for_generated::MessagePort,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        1 => wire__crate__api__api__init_app_impl(port, ptr, rust_vec_len, data_len),
        2 => wire__crate__api__api__read_metadata_impl(port, ptr, rust_vec_len, data_len),
        3 => wire__crate__api__api__write_metadata_impl(port, ptr, rust_vec_len, data_len),
        _ => unreachable!(),
    }
}

fn pde_ffi_dispatcher_sync_impl(
    func_id: i32,
    ptr: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len: i32,
    data_len: i32,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartSse {
    // Codec=Pde (Serialization + dispatch), see doc to use other codecs
    match func_id {
        _ => unreachable!(),
    }
}

// Section: rust2dart

// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for crate::api::api::Metadata {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        [
            self.title.into_into_dart().into_dart(),
            self.duration_ms.into_into_dart().into_dart(),
            self.artist.into_into_dart().into_dart(),
            self.album.into_into_dart().into_dart(),
            self.album_artist.into_into_dart().into_dart(),
            self.track_number.into_into_dart().into_dart(),
            self.track_total.into_into_dart().into_dart(),
            self.disc_number.into_into_dart().into_dart(),
            self.disc_total.into_into_dart().into_dart(),
            self.year.into_into_dart().into_dart(),
            self.genre.into_into_dart().into_dart(),
            self.picture.into_into_dart().into_dart(),
            self.file_size.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for crate::api::api::Metadata {}
impl flutter_rust_bridge::IntoIntoDart<crate::api::api::Metadata> for crate::api::api::Metadata {
    fn into_into_dart(self) -> crate::api::api::Metadata {
        self
    }
}
// Codec=Dco (DartCObject based), see doc to use other codecs
impl flutter_rust_bridge::IntoDart for crate::api::api::Picture {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        [
            self.mime_type.into_into_dart().into_dart(),
            self.data.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for crate::api::api::Picture {}
impl flutter_rust_bridge::IntoIntoDart<crate::api::api::Picture> for crate::api::api::Picture {
    fn into_into_dart(self) -> crate::api::api::Picture {
        self
    }
}

impl SseEncode for flutter_rust_bridge::for_generated::anyhow::Error {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <String>::sse_encode(format!("{:?}", self), serializer);
    }
}

impl SseEncode for String {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <Vec<u8>>::sse_encode(self.into_bytes(), serializer);
    }
}

impl SseEncode for f64 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_f64::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for i32 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_i32::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for Vec<u8> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <i32>::sse_encode(self.len() as _, serializer);
        for item in self {
            <u8>::sse_encode(item, serializer);
        }
    }
}

impl SseEncode for crate::api::api::Metadata {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <Option<String>>::sse_encode(self.title, serializer);
        <Option<f64>>::sse_encode(self.duration_ms, serializer);
        <Option<String>>::sse_encode(self.artist, serializer);
        <Option<String>>::sse_encode(self.album, serializer);
        <Option<String>>::sse_encode(self.album_artist, serializer);
        <Option<u16>>::sse_encode(self.track_number, serializer);
        <Option<u16>>::sse_encode(self.track_total, serializer);
        <Option<u16>>::sse_encode(self.disc_number, serializer);
        <Option<u16>>::sse_encode(self.disc_total, serializer);
        <Option<i32>>::sse_encode(self.year, serializer);
        <Option<String>>::sse_encode(self.genre, serializer);
        <Option<crate::api::api::Picture>>::sse_encode(self.picture, serializer);
        <Option<u64>>::sse_encode(self.file_size, serializer);
    }
}

impl SseEncode for Option<String> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <String>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for Option<f64> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <f64>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for Option<i32> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <i32>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for Option<crate::api::api::Picture> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <crate::api::api::Picture>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for Option<u16> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <u16>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for Option<u64> {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <bool>::sse_encode(self.is_some(), serializer);
        if let Some(value) = self {
            <u64>::sse_encode(value, serializer);
        }
    }
}

impl SseEncode for crate::api::api::Picture {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <String>::sse_encode(self.mime_type, serializer);
        <Vec<u8>>::sse_encode(self.data, serializer);
    }
}

impl SseEncode for u16 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u16::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for u64 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u64::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for u8 {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self).unwrap();
    }
}

impl SseEncode for () {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {}
}

impl SseEncode for bool {
    // Codec=Sse (Serialization based), see doc to use other codecs
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self as _).unwrap();
    }
}

#[cfg(not(target_family = "wasm"))]
mod io {
    // This file is automatically generated, so please do not edit it.
    // Generated by `flutter_rust_bridge`@ 2.1.0.

    // Section: imports

    use super::*;
    use flutter_rust_bridge::for_generated::byteorder::{
        NativeEndian, ReadBytesExt, WriteBytesExt,
    };
    use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
    use flutter_rust_bridge::{Handler, IntoIntoDart};

    // Section: boilerplate

    flutter_rust_bridge::frb_generated_boilerplate_io!();
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
mod web {
    // This file is automatically generated, so please do not edit it.
    // Generated by `flutter_rust_bridge`@ 2.1.0.

    // Section: imports

    use super::*;
    use flutter_rust_bridge::for_generated::byteorder::{
        NativeEndian, ReadBytesExt, WriteBytesExt,
    };
    use flutter_rust_bridge::for_generated::wasm_bindgen;
    use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
    use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
    use flutter_rust_bridge::{Handler, IntoIntoDart};

    // Section: boilerplate

    flutter_rust_bridge::frb_generated_boilerplate_web!();
}
#[cfg(target_family = "wasm")]
pub use web::*;