# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Jane Street's alternative to the standard library"
HOMEPAGE="https://github.com/janestreet/core_extended"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/bin_prot:=
	dev-ml/core:=
	dev-ml/core_kernel:=
	dev-ml/fieldslib:=
	dev-ml/ppx_jane:=
	dev-ml/re2:=
	dev-ml/sexplib:=
	dev-ml/textutils:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppxlib:=
	dev-ml/re:=
	"
DEPEND="${RDEPEND}"
