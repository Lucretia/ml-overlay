# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis eutils

DESCRIPTION="A libary to build xml trees typechecked by OCaml"
HOMEPAGE="http://ocsigen.org/tyxml/"
SRC_URI="https://github.com/ocsigen/tyxml/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ppx +camlp4"

DEPEND="
	>=dev-ml/uutf-1.0:=
	dev-ml/uchar:=
	dev-ml/re:=
	ppx? ( dev-ml/ppx_tools_versioned:= dev-ml/markup:= )
	camlp4? ( dev-ml/camlp4:= )"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/alcotest )"

DOCS=( CHANGES README.md )

src_configure() {
	oasis_configure_opts="
		$(use_enable camlp4 syntax)
		$(use_enable ppx)
	" oasis_src_configure
}
