# Scrcpy OTG Seamless Border Trigger

Windows Batch Script for generating a seamless, invisible border trigger for **scrcpy** when using `--otg` parameter. With it you will be able to control your android tablet or phone with the help of mouse and keyboard of your PC by just throwing the pointer to the edge of your screen (Left, Right or Top).

This script launches an entirely invisible console window and sets up a 1-pixel wide trigger on the selected edge of your screen, giving you a seamless KVM-like experience.

## Features

- **Invisible 1-Pixel Trigger:** No visual clutter, fully borderless and always stays on top of all other windows.
- **Console-less execution:** Uses `scrcpy-noconsole.vbs` script to launch without the ugly background terminal instantly.
- **Multi-resolution support:** Easily resizes depending on your specific resolution, starting from 720p up to 4K.

## How To Use

### Prerequisites

1. Get the latest version of [scrcpy](https://github.com/Genymobile/scrcpy).
2. USB debugging is enabled on your Android device.

### Installation

1. Copy the code below or download `scrcpy_otg`.
2. Change the script and set `YOUR_SCRCPY_FOLDER` to your absolute path of `scrcpy` folder:
   ```batch
   set "scrcpy_dir=C:\Users\YourUsername\Desktop\scrcpy-win64-v4.0"
