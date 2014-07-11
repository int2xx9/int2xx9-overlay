# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="unittest framework for C and C++"
HOMEPAGE="http://cutter.sourceforge.net/"
SRC_URI="http://sourceforge.net/projects/${PN}/files/${PN}/${PV}/${PN}-${PV}.tar.gz"

LICENSE="LGPL3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-libs/glib-2.16"
RDEPEND="${DEPEND}"

