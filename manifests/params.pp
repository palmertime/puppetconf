class puppetconf::params {
  $environment  = $::environment
  $dir          = '/etc/puppet'
  $file         = 'puppet.conf'
  $set_env      = false
}
