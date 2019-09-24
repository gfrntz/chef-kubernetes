default['kubernetes']['crio']['version']                     = '1.15.0'
default['kubernetes']['crio']['endpoint']                    = '/var/run/crio/crio.sock'
default['kubernetes']['crio']['endpoint_proto']              = ''
default['kubernetes']['buildah']['version']                  = '1.11.2'
default['kubernetes']['libpod']['version']                   = '1.5.1'
default['kubernetes']['skopeo']['version']                   = '0.1.39'

default['kubernetes']['checksums']['skopeo']['bionic']       = '79c473d5c522578da6a168063489e843b4180eaec2904b908c5784314cc3b55a'
default['kubernetes']['checksums']['podman']['bionic']       = '95e0cb0f74f1e01c56d3222703d09cfaa7f9b87cb1a041067162058d4f3fe5ea'
default['kubernetes']['checksums']['conmon']['bionic']       = '66caa33cb1e0d28dd55c3bf49a207ce489c59bd4f94aebab68f7376b46443d09'
default['kubernetes']['checksums']['crio']['bionic']         = '6f2335470e1e5357e3d2df305de98ba2b0c1f00710549da68a0957d010ae23e1'
default['kubernetes']['checksums']['buildah']['bionic']      = '472ad43832eb90dddb3b2fe9838c2d8a7fa4d90ce9746c29f2432400ed949e0e'

default['kubernetes']['checksums']['skopeo']['xenial']       = '009082a890fceaa1badba7da254acc56e8d35466bcc62852481017eb03abbe68'
default['kubernetes']['checksums']['podman']['xenial']       = '39affbb341ebe497582c69b3805fd228217967dafa15f317ec2d848214541fbd'
default['kubernetes']['checksums']['conmon']['xenial']       = '05e4618cd5bab745b2aa6a201e201ad3c6cfd05af279119101deaf5879dbc903'
default['kubernetes']['checksums']['crio']['xenial']         = '06d0e6b485b7f361bd89c91be59665f0ba25837d820de572f9295dbe37f10f36'
default['kubernetes']['checksums']['buildah']['xenial']      = 'bc676387adfeaf6fccc23c06cdf654d01849cede8bec11e74a38deec3d22a892'

default['kubernetes']['crio']['config']['conmon']            = '/usr/local/bin/conmon'
default['kubernetes']['crio']['config']['storage_driver']    = 'overlay'
default['kubernetes']['crio']['config']['stream_port']       = 10010
default['kubernetes']['crio']['config']['runroot']           = '/var/run/containers/storage'
default['kubernetes']['crio']['config']['root']              = '/var/lib/containers/storage'
default['kubernetes']['crio']['config']['log_level']         = 'info'
default['kubernetes']['crio']['config']['file_locking']      = false
default['kubernetes']['crio']['config']['file_locking_path'] = '/run/crio.lock'
default['kubernetes']['crio']['config']['cgroup_manager']    = 'cgroupfs'
default['kubernetes']['crio']['config']['apparmor_profile']  = 'crio-default'
default['kubernetes']['crio']['config']['seccomp_profile']   = '/etc/crio/seccomp.json'
default['kubernetes']['crio']['config']['pids_limit']        = 1024

default['kubernetes']['crio']['config']['runtimes'] = {
  'trusted'   => '/usr/local/bin/runc',
  'untrusted' => '/usr/local/bin/runsc'
}

default['kubernetes']['crio']['config']['runtimes']['untrusted']       = '/usr/local/bin/runsc'
default['kubernetes']['crio']['config']['container_exits_dir']         = '/var/run/crio/exits'
default['kubernetes']['crio']['config']['container_attach_socket_dir'] = '/var/run/crio'

default['kubernetes']['crio']['daemon_flags']['log_format']     = 'text'
default['kubernetes']['crio']['daemon_flags']['profile']        = false
default['kubernetes']['crio']['daemon_flags']['enable_metrics'] = true
default['kubernetes']['crio']['daemon_flags']['metrics_port']   = 9090

default['kubernetes']['crio']['policies']['default'] = [{"type"=>"insecureAcceptAnything"}]
default['kubernetes']['crio']['policies']['transports']['docker-daemon'][''] = [{"type"=>"insecureAcceptAnything"}]

default['kubernetes']['crio']['crictl']['version'] = '1.12.0'
default['kubernetes']['crio']['crictl']['timeout'] = 10
default['kubernetes']['crio']['crictl']['debug']   = false

default['kubernetes']['limits']['nofile']['crio'] = 1048576
default['kubernetes']['limits']['nproc']['crio']  = 1048576
default['kubernetes']['limits']['core']['crio']   = 'infinity'
