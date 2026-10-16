# AudiBox — komponen pihak ketiga

Source aplikasi disertakan di folder proyek dan dapat dibangun ulang lewat `build.ps1`.

- **yt-dlp / yt-dlp-ejs**: [source dan lisensi yt-dlp](https://github.com/yt-dlp/yt-dlp), [source EJS](https://github.com/yt-dlp/ejs).
- **FFmpeg / FFprobe**: binary disalin dari instalasi FFmpeg lokal saat build. Build Gyan yang dipakai dalam lingkungan ini melaporkan GPL version 3 or later. [Source FFmpeg](https://ffmpeg.org/download.html), [source dan build Gyan](https://github.com/GyanD/codexffmpeg), [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).
- **Deno**: [source dan lisensi MIT](https://github.com/denoland/deno).
- **PySide6 / Qt**: [lisensi Qt for Python](https://doc.qt.io/qtforpython-6/licenses.html), [source PySide](https://code.qt.io/cgit/pyside/pyside-setup.git/). Qt DLL tetap merupakan library terpisah yang diekstrak saat executable portable dijalankan.
- **NumPy**: [source dan lisensi BSD](https://github.com/numpy/numpy/blob/main/LICENSE.txt).
- **Python / PyInstaller**: [lisensi Python](https://docs.python.org/3/license.html), [lisensi dan exception PyInstaller](https://pyinstaller.org/en/stable/license.html).

Distribusi ulang binary harus memenuhi lisensi komponen yang dipakai, termasuk kewajiban penyediaan source yang berlaku untuk build FFmpeg dan library terkait.
