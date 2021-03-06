# Configura le r10k
class { 'r10k':
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/moutons/howilearned-control.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    },
    'hiera' => {
      'remote'  => 'https://github.com/moutons/howilearned-hiera.git',
      'basedir' => "${::settings::confdir}/hieradata",
      'prefix'  => true,
    }
  },
# purgedirs         => ["${::settings::confdir}/environments"],
# manage_modulepath => false,
}
