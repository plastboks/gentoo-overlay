# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

DESCRIPTION="Small pet project lisp language interpretation"
HOMEPAGE="https://github.com/plastboks/lispy"
EGIT_REPO_URI="https://github.com/plastboks/lispy.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

src_compile() {
    if [ -f Makefile ] || [ -f GNUmakefile ] || [ -f makefile ]; then
        emake || die "emake failed"
    fi
}

src_install() {
    emake DESTDIR="${D}" install
}
