# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Text output utilities"
HOMEPAGE="https://github.com/janestreet/textutils"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/core:=
	dev-ml/ppx_jane:=
		dev-ml/ppx_expect:=
			dev-ml/re:=
	dev-ml/textutils_kernel:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppxlib:=
"
DEPEND="${RDEPEND}"
