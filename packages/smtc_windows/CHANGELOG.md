## 1.0.0

 - **REFACTOR**(smtc_windows): migrate to frb 2.1.0 and cargokit base.
 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.
 - **DOCS**: add support url.
 - **DOCS**: update readme with rustup requirement.

**BREAKING CHANGE!** 
 - Upgraded to flutter_rust_bridge v2 which requires `rustup` to be installed.

## 0.1.5

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.

## 0.1.4

 - **FIX**(flutter_discord_rpc): not working for snap/flatpak discord in linux.
 - **FEAT**(flutter_discord_rpc): add complete support.

## 0.1.3

 - **FIX**: asset download.

# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2023-11-22

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`smtc_windows` - `v0.1.2`](#smtc_windows---v012)

---

#### `smtc_windows` - `v0.1.2`

 - **FIX**: enabled not true by default.
 - **DOCS**: fix wrong lib.

# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2023-10-07

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`smtc_windows` - `v0.1.1`](#smtc_windows---v011)

---

#### `smtc_windows` - `v0.1.1`

 - **REFACTOR**: use internal wrapper to allow using for both binding and native Rust.
 - **FIX**: upgrade flutter_rust_bridge.
 - **FIX**: update config not updated in initialization causing smtc to not show up.
 - **FEAT**: store smtc enable/disable state.
 - **FEAT**: enable/disable smtc support, clear metadata support and all optional music properties.
 - **FEAT**: hide internal bridge api and add exception for usage on non-windows environment.
 - **FEAT**: added conventional struct (incomplete).
 - **FEAT**(events): button pressed, shuffle and repeat mode events.

