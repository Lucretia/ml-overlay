# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Async support for JavaScript platforms"
HOMEPAGE="https://github.com/janestreet/async_js"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/async_kernel:=
	dev-ml/async_rpc_kernel:=
	dev-ml/ppx_jane:=
	dev-ml/js_of_ocaml:=
	dev-ml/js_of_ocaml-ppx:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppxlib:=
	dev-ml/uri:=
"
DEPEND="${RDEPEND}"
