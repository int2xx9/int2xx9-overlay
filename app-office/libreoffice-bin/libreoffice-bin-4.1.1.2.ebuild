# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Libreoffice"
HOMEPAGE="http://Libreoffice.org/"
SRC_URI="http://download.documentfoundation.org/libreoffice/stable/4.1.1/deb/x86_64/LibreOffice_4.1.1_Linux_x86-64_deb.tar.gz http://download.documentfoundation.org/libreoffice/stable/4.1.1/deb/x86_64/LibreOffice_4.1.1_Linux_x86-64_deb_langpack_ja.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir ${S}; cd ${S}
	mkdir prefix
	unpack ${A}

	cd LibreOffice_${PV}_Linux_x86-64_deb/DEBS
	for deb in *.deb; do
		ar x $deb
		tar xf data.tar.gz -C ${S}/prefix
	done

	cd ../../LibreOffice_${PV}_Linux_x86-64_deb_langpack_ja/DEBS/
	for deb in *.deb; do
		ar x $deb
		tar xf data.tar.gz -C ${S}/prefix
	done
}

src_install() {
	cp -a ${S}/prefix/* ${D}
}

