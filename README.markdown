# ALYX'S AUR :penguin: :gear:

![GitHub CI](https://github.com/alyxshang/alyxs-aur/actions/workflows/main.yml/badge.svg)

***My Arch User Repository. :penguin: :gear:***

## ABOUT :books:

This repository contains the source code for a package repository for a set of packages of my own for Arch Linux. The packages featured in this repository are tools I have developed. The packages in this package repository are purely source-based. No binaries are shipped to users of Arch Linux.

## INSTALLATION :inbox_tray:

To install this package repository on your Arch Linux system, add the following lines to your system's Pacman configuration, located in the file `/etc/pacman.conf`:

```conf
[alyxs-aur]
SigLevel = Optional DatabaseOptional
Server = https://alyxshang.boo/$repo/$arch
```

The action of adding these lines to your Pacman configuration must be followed by running the command `sudo pacman -Syyu` from a terminal session to inform Pacman of the new package repository added.

To uninstall this package repository, remove the lines you added and run the command `sudo pacman -Syyu` again.

## USAGE :hammer:

This user repository contains the following packages:

- [`sharkey`](https://github.com/alyxshang/sharkey.rs): A tiny library and CLI tool to perform actions on Sharkey using Rust.
- [`mandy`](https://github.com/alyxshang/mandy): A light and fast static-site generator. 
- [`luhny`](https://github.com/alyxshang/luhny.rs): A library and tool to validate unique device identifiers. 

To install any of these packages on your device, run the following command from a terminal session:

```bash
sudo pacman -S package
```

To uninstall any of these packages, run the following command from a terminal session:

```bash
sudo pacman -Rns package
```

`package` is representative of any of the package names listed above.

## NOTE :scroll:

- *Alyx's AUR :penguin: :gear:* by *Alyx Shang :black_heart:*.
- Licensed under the [FSL v1](https://github.com/alyxshang/fair-software-license).
