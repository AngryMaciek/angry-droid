# Computational Droid
*Maciej Bak*  
*Swiss Institute of Bioinformatics*

Short tutorial on how to turn your Android smartphone ( :iphone:) into a platform for scientific computing ( :robot:).  
 No root required.  
 
 The following commands have been assembled together from various sources over the internet. Most notably I should mention the repositories of [its-pointless](https://github.com/its-pointless) and a [blog post](https://conr.ca/post/installing-r-on-android-via-termux/) by Conor Anderson.

## Instructions

### 1. Install Termux

"[Termux][1] is an Android terminal emulator and Linux environment application that works directly with no rooting or setup required."  
 Start with installing the app on your smartphone, preferably from [Google Play][2].

### 2. Create an exchange directory

In order to exchange files between Termux and the external world you need to grant the app access to the storage of your device. Please open Termux and type:
```bash
termux-setup-storage
```

Upon execution Termux will create a symbolic link named *storage* under its `$HOME` directory. You may read more about the directory tree under the following [question][3].


It would be convenient to have a 'shared space' where one could place input and gather output from. Create a directory that will bridge the app and the users:
```bash
mkdir storage/shared/Termux
```

### 3. Clone this repository

For this and the next step we assume that the smartphone has internet access.  

Open Termux and install `git` with the following command:
```bash
pkg install -y git=2.25.1
```

After a successful installation please clone the repository:
```bash
git clone https://github.com/AngryMaciek/ComputationalDroid
```

### 4. Install the software

https://conr.ca/post/installing-r-on-android-via-termux/

cd ComputationalDroid


### 5. Run tests

#   5) Connect the android device to the computer and copy:
#     * (this script)
#     * "src" directory which contains all the source code
#   into the directory created at (3)
#
#   6) Run all the simualtions by executing this script from Termux:
#   $ bash storage/shared/Termux/android_simulations.sh
#
#   7) Whole directory with the binaries, source and results
#   will be copied back to the exchange directory:
#   storage/shared/Termux/simulations

## Testing

This repository has been tested on...

## License

GPL version 3

[1]: https://termux.com/
[2]: https://play.google.com/store/apps/details?id=com.termux
[3]: https://android.stackexchange.com/questions/166538/where-is-the-folder-that-termux-defaults-to