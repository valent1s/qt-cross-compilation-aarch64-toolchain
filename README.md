# qt-cross-compilation-aarch64-toolchain

After the host and target is connected,

```console
~$ ./sync-target-sysroot.sh <user> <target_address> <targer_sysroot_path_on_host>
wget https://raw.githubusercontent.com/riscv/riscv-poky/master/scripts/sysroot-relativelinks.py
~$ chmod +x sysroot-relativelinks.py 
~$ python3 sysroot-relativelinks.py <targer_sysroot_path_on_host>
```
To configure Qt,

```console
~/qtpi-build$ ../qt6/configure -opengl es2 \
-qt-host-path $HOME/qt-host \
-extprefix $HOME/qt-raspi \
-prefix /usr/local/qt6 -- \
-DCMAKE_TOOLCHAIN_FILE=$HOME/toolchain.cmake
```
