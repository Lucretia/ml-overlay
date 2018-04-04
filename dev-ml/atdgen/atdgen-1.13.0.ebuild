# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Generates boilerplate OCaml code for JSON and Biniou IO from type definitions"
HOMEPAGE="https://github.com/mjambon/atd"
SRC_URI="https://github.com/mjambon/atd/archive/${PV}.tar.gz -> atd-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ocamlopt"

DEPEND="
	dev-lang/ocaml:=[ocamlopt?]
	dev-ml/atd:=
	dev-ml/atdgen-runtime:=
	dev-ml/biniou:=
	dev-ml/yojson:=
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/atd-${PV}"
