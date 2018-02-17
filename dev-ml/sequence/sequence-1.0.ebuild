# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Simple sequence (iterator) datatype and combinators"
HOMEPAGE="https://github.com/c-cube/sequence"
SRC_URI="https://github.com/c-cube/sequence/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="dev-ml/result:="
DEPEND="${RDEPEND}
	test? ( dev-ml/qtest )"
