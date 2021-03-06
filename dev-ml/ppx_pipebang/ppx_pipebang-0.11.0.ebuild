# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="A ppx rewriter that inlines reverse application operators |> and |!"
HOMEPAGE="https://github.com/janestreet/ppx_pipebang"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppxlib:=
"
RDEPEND="${DEPEND}"
