# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2025-08-18

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_discord_rpc` - `v1.1.0`](#flutter_discord_rpc---v110)
 - [`metadata_god` - `v1.1.0`](#metadata_god---v110)
 - [`smtc_windows` - `v1.1.0`](#smtc_windows---v110)

---

#### `flutter_discord_rpc` - `v1.1.0`

 - **FEAT**(flutter_discord_rpc): update flutter_rust_bridge and cargokit.
 - **FEAT**(metadata_god): upgrade flutter_rust_bridge and other dependencies.

#### `metadata_god` - `v1.1.0`

 - **FEAT**(metadata_god): upgrade cargokit.
 - **FEAT**(metadata_god): upgrade flutter_rust_bridge and other dependencies.

#### `smtc_windows` - `v1.1.0`

 - **FEAT**(smtc_windows): update flutter_rust_bridge and cargokit.
 - **FEAT**(metadata_god): upgrade flutter_rust_bridge and other dependencies.


## 2024-10-17

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`smtc_windows` - `v1.0.0`](#smtc_windows---v100)

---

#### `smtc_windows` - `v1.0.0`

 - **REFACTOR**(smtc_windows): migrate to frb 2.1.0 and cargokit base.
 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.
 - **DOCS**: add support url.
 - **DOCS**: update readme with rustup requirement.

**BREAKING CHANGE!** 
 - Upgraded to flutter_rust_bridge v2 which requires `rustup` to be installed.

## 2024-10-17

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_discord_rpc` - `v1.0.0`](#flutter_discord_rpc---v100)

---

#### `flutter_discord_rpc` - `v1.0.0`

 - **REFACTOR**(flutter_discord_rpc): migrate to cargokit base and frb 2.1.0.
 - **FEAT**(flutter_discord_rpc): add support for activity_type in discord rich presence (#1).
 - **DOCS**: add support url.
 - **DOCS**: update readme with rustup requirement.

**BREAKING CHANGE!** 
 - Upgraded to flutter_rust_bridge v2 which requires `rustup` to be installed.

## 2024-10-17

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`metadata_god` - `v1.0.0`](#metadata_god---v100)

---

#### `metadata_god` - `v1.0.0`

 - **REFACTOR**(metadata_god): migrate to frb 2.1.0 and cargokit based non-binary distribution.
 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.
 - **DOCS**: add support url.
 - **DOCS**: update readme with rustup requirement.

**BREAKING CHANGE!** 
 - Upgraded to flutter_rust_bridge v2 which requires `rustup` to be installed.


## 2024-07-14

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_discord_rpc` - `v0.1.0+1`](#flutter_discord_rpc---v0101)
 - [`metadata_god` - `v0.5.5`](#metadata_god---v055)
 - [`smtc_windows` - `v0.1.5`](#smtc_windows---v015)

---

#### `flutter_discord_rpc` - `v0.1.0+1`

 - **DOCS**: add flutter_discord_rpc readme.

#### `metadata_god` - `v0.5.5`

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.

#### `smtc_windows` - `v0.1.5`

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.


## 2024-07-14

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_discord_rpc` - `v0.1.0`](#flutter_discord_rpc---v010)
 - [`metadata_god` - `v0.5.4`](#metadata_god---v054)
 - [`smtc_windows` - `v0.1.4`](#smtc_windows---v014)

---

#### `flutter_discord_rpc` - `v0.1.0`

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FIX**(flutter_discord_rpc): use box to rpc connect alive and remove sandbox to allow connecting to discord ipc.
 - **FEAT**(flutter_discord_rpc): retry on broken pipe.
 - **FEAT**(flutter_discord_rpc): add auto retry connect.
 - **FEAT**(flutter_discord_rpc): add complete support.

#### `metadata_god` - `v0.5.4`

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.

#### `smtc_windows` - `v0.1.4`

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.


## 2024-04-22

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`metadata_god` - `v0.5.3`](#metadata_god---v053)
 - [`smtc_windows` - `v0.1.3`](#smtc_windows---v013)

---

#### `metadata_god` - `v0.5.3`

 - **FEAT**(metadata_god): upgrade lofty and uuid packages.

#### `smtc_windows` - `v0.1.3`

 - **FIX**: prefix the tag name with project name while declaring tag var in build files.
 - **FIX**: asset download.
 - **FEAT**(metadata_god): upgrade lofty and uuid packages.
 - **FEAT**: add smtc_windows library.

