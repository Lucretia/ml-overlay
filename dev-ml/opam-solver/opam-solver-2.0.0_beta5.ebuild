# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="opam solver"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_beta/-beta}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/opam-format:=
	dev-ml/mccs:=
	dev-ml/dose3:=
	dev-ml/cudf:=
	!dev-ml/opam
"
DEPEND="${RDEPEND}
	test? ( dev-ml/opam-client )"

S="${WORKDIR}/opam-${PV/_beta/-beta}"