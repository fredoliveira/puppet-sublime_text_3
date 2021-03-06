# Public: Install a Sublime Text 3 package.
#
# namevar - The name of the package.
# source  - The location of the git repository containing the package.
#
# Examples
#
#   sublime_text_3::package { 'Emmet':
#     source => 'sergeche/emmet-sublime'
#   }
define sublime_text_3::package($source) {
  require sublime_text_3::config

  repository { "${sublime_text_3::config::packagedir}/${name}":
    source => $source
  }
}
