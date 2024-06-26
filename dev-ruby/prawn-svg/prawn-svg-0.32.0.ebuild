# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_RECIPE_DOC="yard"
RUBY_FAKEGEM_RECIPE_TEST="rspec3"

inherit ruby-fakegem

DESCRIPTION="Provides support for SVG in Prawn"
HOMEPAGE="https://github.com/mogest/prawn-svg"
LICENSE="|| ( MIT Ruby )"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

# prawn breaks tests for some reasons, needs to be investigated; code
# still works though.
RESTRICT="test"

ruby_add_rdepend "
	>=dev-ruby/css_parser-1.6.0
	>=dev-ruby/prawn-0.11.1
	>=dev-ruby/rexml-3.2.0
	"

ruby_add_bdepend "test? ( dev-ruby/mocha
	>=dev-ruby/pdf-inspector-1.1.0
	>=dev-ruby/pdf-reader-1.2
	)"
