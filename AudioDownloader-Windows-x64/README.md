# Audio Downloader for Windows

This package contains the portable Audio Downloader application and a user-level installer.

## Install

1. Extract this ZIP file.
2. Open PowerShell in the extracted folder.
3. Run `powershell -ExecutionPolicy Bypass -File .\Install.ps1`.
4. Launch **Audio Downloader** from the Start menu.

The installer copies the app to `%LOCALAPPDATA%\Programs\AudioDownloader` and creates a Start menu shortcut. It does not require administrator access. To remove the app, run `Uninstall.ps1` from this folder.

## Use

Paste one or more public YouTube or SoundCloud track links, choose the download folder, and start the MP3 download. Availability and format selection depend on the source platform.

This is a portable Windows x64 application. The package does not include the Python source code. Third-party component and redistribution information is in `THIRD_PARTY_NOTICES.md`.
