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

In order to exchange files between Termux and the

```bash
termux-setup-storage
```

https://android.stackexchange.com/questions/166538/where-is-the-folder-that-termux-defaults-to

mkdir storage/shared/Termux

### 3. Clone this repository

pkg install git
git clone https://github.com/AngryMaciek/ComputationalDroid

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

## License

GPL version 3

[1]: https://termux.com/
[2]: https://play.google.com/store/apps/details?id=com.termux