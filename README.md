# Computational Droid
*Maciej Bak*  
*Swiss Institute of Bioinformatics*

Description.

## Instructions

### 1. Install Termux

#   https://termux.com/
#   https://play.google.com/store/apps/details?id=com.termux:

### 2. Create an exchange directory

#   $ termux-setup-storage
#   https://android.stackexchange.com/questions/166538/where-is-the-folder-that-termux-defaults-to

#   $ mkdir storage/shared/Termux

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