# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

MY_P=ocaml-dns-${PV}

DESCRIPTION="Async support of OCaml DNS"
HOMEPAGE="https://github.com/mirage/ocaml-dns https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-dns/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="LGPL-2 LGPL-2.1-with-linking-exception ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/async:=
	dev-ml/dns:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
DEPEND="
	test? (
		dev-ml/dns-lwt-unix
	)
	${RDEPEND}
"
# Do not work
RESTRICT="test"

S="${WORKDIR}/${MY_P}"
