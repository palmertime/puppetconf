class puppetconf::config(
  $puppetconf_dir     = $::puppetconf::dir,
  $puppetconf_file    = $::puppetconf::file,
  $puppetconf_env     = $::puppetconf::environment,
  $puppetconf_set_env = $::puppetconf::set_env,
)
{
  include puppetconf

  if $puppetconf_set_env {
    augeas { 'set env':
      context => "/files${puppetconf_dir}/${puppetconf_file}/agent",
      changes => "set environment '${puppetconf_env}'",
    }
  }
}
