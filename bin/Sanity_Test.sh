#!/bin/bash

fingerprint=`getprop ro.build.fingerprint`
build_id=`echo $temp | cut -f 5 -d / | cut -f 1 -d :`
model_name=`getprop ro.product.model`
brand=`getprop ro.product.brand`
product_device=`getprop ro.product.device`


cat > sanity.txt <<EOF
[Sanity information]
Parent SKU (ro.product.device): $product_device
Brand: $brand
Model Name(ro.product.model):$model_name
Build ID:$build_id
Fingerprint:$fingerprint
EOF


