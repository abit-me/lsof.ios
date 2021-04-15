#!/bin/bash

ROOT=$(cd "$(dirname "$0")";pwd)/..

function get_deb_name() {

    version=$(cat ${ROOT}/deb/DEBIAN/control | sed -n 's/Version: //p')
    package=$(cat ${ROOT}/deb/DEBIAN/control | sed -n 's/Package: //p')

    echo ${package}_${version}.deb
}

deb_name=$(get_deb_name)
deb_path=${ROOT}/doc/$deb_name

find ${ROOT}/deb -name ".DS_Store" -depth -exec rm {} \;
dpkg-deb -Zgzip -b ${ROOT}/deb ${ROOT}/doc/${deb_name}
