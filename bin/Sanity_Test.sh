#!/bin/bash

fingerprint=`adb shell getprop ro.build.fingerprint`
build_id=`echo $fingerprint | cut -f 5 -d / | cut -f 1 -d :`
model_name=`adb shell getprop ro.product.model`
brand=`adb shell getprop ro.product.brand`
product_device=`adb shell getprop ro.product.device`


cat > sanity.txt <<EOF
[Sanity information]
Parent SKU (ro.product.device): $product_device
Brand: $brand
Model Name(ro.product.model):$model_name
Build ID:$build_id
Fingerprint:$fingerprint
EOF


