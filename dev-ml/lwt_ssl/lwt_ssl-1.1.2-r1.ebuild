# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="OpenSSL binding with concurrent I/O"
SRC_URI="https://github.com/aantron/lwt_ssl/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/aantron/lwt_ssl"

IUSE=""

RDEPEND="
	>=dev-ml/lwt-3.1:=
	dev-ml/result:=
	>=dev-ml/ocaml-ssl-0.4.0:=
"
DEPEND="${RDEPEND}"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm ~ppc ~x86-fbsd"
