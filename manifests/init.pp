# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include helix_core_management
class helix_core_management {

  file { '/etc/helix-core-test':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
 
  file { '/etc/helix-core-test/helix-core.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "Helix Core config\n",
  }

  file { '/opt/puppetlabs/facter/facts.d/p4_version.sh':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0744',
    content => file('helix_core_management/p4_version.sh'),
  }
}
