class puppetconf (
  $environment  = $puppetconf::params::environment,
  $dir          = $puppetconf::params::dir,
  $file         = $puppetconf::params::file,
  $set_env      = $puppetconf::params::set_env,
) inherits puppetconf::params {
  include puppetconf::config
}
