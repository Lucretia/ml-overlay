# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Websocket library for OCaml"
HOMEPAGE="https://github.com/vbmithr/ocaml-websocket"
SRC_URI="https://github.com/vbmithr/ocaml-websocket/archive/${PV}.tar.gz -> ocaml-websocket-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/websocket:=
	dev-ml/ocaml-ipaddr:=
	dev-ml/lwt_ssl:=
	dev-ml/cohttp-lwt-unix:=
		dev-ml/cohttp:=
	dev-ml/uri:=

	!dev-ml/ocaml-websocket
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-websocket-${PV}"
