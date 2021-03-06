# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder findlib

DESCRIPTION="A compiler from OCaml bytecode to javascript"
HOMEPAGE="http://ocsigen.org/js_of_ocaml/"

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/js_of_ocaml"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/js_of_ocaml/archive/${PV}.tar.gz -> js_of_ocaml-${PV}.tar.gz"
	KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
	S="${WORKDIR}/js_of_ocaml-${PV}"
fi

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
IUSE=""

RDEPEND="
	dev-ml/cmdliner:=
	dev-ml/yojson:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )

	!<dev-ml/js_of_ocaml-3.0.1
"
DEPEND="${RDEPEND}
	dev-ml/cppo:=
"
RESTRICT="test"
