# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Jane Street's profiling library"
HOMEPAGE="https://github.com/janestreet/core_profiler"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-lang/ocaml:=
	dev-ml/core:=
	dev-ml/core_extended:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_jane:=
	dev-ml/re2:=
	dev-ml/textutils:=
	dev-ml/ocaml-migrate-parsetree:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
	"
DEPEND="${RDEPEND}"