# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="convert a filesystem into a static OCaml module"
HOMEPAGE="https://github.com/mirage/ocaml-crunch"
SRC_URI="https://github.com/mirage/ocaml-crunch/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="test"

RDEPEND="
	dev-ml/cmdliner:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/cstruct dev-ml/lwt )"
S="${WORKDIR}/ocaml-${P}"
