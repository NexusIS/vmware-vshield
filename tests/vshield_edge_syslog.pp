# Copyright (C) 2013 VMware, Inc.
import 'data.pp'

transport { 'vshield':
  username => $vshield['username'],
  password => $vshield['password'],
  server   => $vshield['server'],
}

transport { 'vcenter':
  username => $vcenter['username'],
  password => $vcenter['password'],
  server   => $vcenter['server'],
  options  => $vcenter['options'],
}

vshield_edge_syslog { $edge['name']:
  server_addresses => [ '10.0.0.1', '10.0.0.2' ],
  protocol         => 'udp',
  enabled          => true,
  transport        => Transport['vshield'],
}
