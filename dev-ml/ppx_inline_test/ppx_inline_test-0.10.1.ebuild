# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Syntax extension for writing in-line tests in ocaml code"
HOMEPAGE="https://github.com/janestreet/ppx_inline_test"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
#KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/stdio:=
	dev-ml/ppx_core:=
	>=dev-ml/ppx_driver-0.10.3:=
	dev-ml/ppx_metaquot:=
	dev-ml/ppx_traverse_builtins:=
	dev-ml/ocaml-migrate-parsetree:=
"
RDEPEND="${DEPEND}"