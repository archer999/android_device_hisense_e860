android_device_hisense_e860
===========================

Device tree for Hisense E860 aka Andromax to build CM11

this is initial build tree

Device configuration for the Hisense E860 (aka Andromax)

Copyright (C) 2011 The CyanogenMod Project
Copyright (C) 2013 Pebri86
Copyright (C) 2014 archer999

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

------------------------------------------------------------------


* Description

  This repository is for CM11 on HS-E860.
  Didn't tested, don't know if this work


* How To Build CM11 for HS-E860

  Make a workspace

  $ cd ~
  $ mkdir android
  $ cd android
  $ mkdir system
  $ cd system


  Do repo init & sync

  $ repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
  $ repo sync 

  Setup vendor

  $ cd vendor/cm/
  $ ./get-prebuilts

  Setup environment

  $ source build/envsetup.sh
  $ lunch 6


  Build CM11

  $ make otapackage -j4


* Thanks

  Cyanogen
  attn1
  CyanogenMod team

----
EOF

