default['kubernetes']['container_runtime']                  = 'docker'
default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd' # other possible values are: static_pods
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.17.2'
default['kubernetes']['keep_versions']                      = 3
default['kubernetes']['image']                              = 'gcr.io/google_containers/hyperkube'
default['kubernetes']['interface']                          = 'eth1'
default['kubernetes']['enable_firewall']                    = true
default['kubernetes']['register_as']                        = 'ip'
default['kubernetes']['proxy_mode']                         = 'iptables' # other possible values are: ipvs
default['kubernetes']['use_sdn']                            = true
default['kubernetes']['sdn']                                = 'weave'
default['kubernetes']['master']                             = '127.0.0.1'
default['kubernetes']['cluster_name']                       = 'kubernetes'
default['kubernetes']['cluster_dns']                        = ['10.222.222.222']
default['kubernetes']['cluster_domain']                     = 'kubernetes.local'
default['kubernetes']['cluster_cidr']                       = '192.168.0.0/16'
default['kubernetes']['node_cidr_mask_size']                = 24
default['kubernetes']['use_cluster_dns_systemwide']         = false
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['ssl']['keypairs']                    = %w(apiserver ca-cluster_signing ca-service_account ca-requestheader front_proxy_client kubelet_client ca-etcd_server etcd_client scheduler controller_manager)
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca-cluster_signing.pem'
default['kubernetes']['requestheader_client_ca_file']       = '/etc/kubernetes/ssl/ca-requestheader.pem'
default['kubernetes']['requestheader_client_ca_key']        = '/etc/kubernetes/ssl/ca-requestheader-key.pem'
default['kubernetes']['service_account_cert_file']          = '/etc/kubernetes/ssl/ca-service_account.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/ca-service_account-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca-cluster_signing.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-cluster_signing-key.pem'
default['kubernetes']['proxy_client_cert_file']             = '/etc/kubernetes/ssl/front_proxy_client.pem'
default['kubernetes']['proxy_client_key_file']              = '/etc/kubernetes/ssl/front_proxy_client-key.pem'
default['kubernetes']['kubelet_client_cert_file']           = '/etc/kubernetes/ssl/kubelet_client.pem'
default['kubernetes']['kubelet_client_key_file']            = '/etc/kubernetes/ssl/kubelet_client-key.pem'
default['kubernetes']['etcd_server_cafile']                 = '/etc/kubernetes/ssl/ca-etcd_server.pem'
default['kubernetes']['etcd_peer_cafile']                   = '/etc/kubernetes/ssl/ca-etcd_peer.pem'
default['kubernetes']['etcd_server_cert_file']              = '/etc/kubernetes/ssl/etcd_server.pem'
default['kubernetes']['etcd_peer_cert_file']                = '/etc/kubernetes/ssl/etcd_peer.pem'
default['kubernetes']['etcd_server_key_file']               = '/etc/kubernetes/ssl/etcd_server-key.pem'
default['kubernetes']['etcd_peer_key_file']                 = '/etc/kubernetes/ssl/etcd_peer-key.pem'
default['kubernetes']['etcd_client_cert_file']              = '/etc/kubernetes/ssl/etcd_client.pem'
default['kubernetes']['etcd_client_key_file']               = '/etc/kubernetes/ssl/etcd_client-key.pem'
default['kubernetes']['scheduler_cert_file']                = '/etc/kubernetes/ssl/scheduler.pem'
default['kubernetes']['scheduler_key_file']                 = '/etc/kubernetes/ssl/scheduler-key.pem'
default['kubernetes']['controller_manager_cert_file']       = '/etc/kubernetes/ssl/controller_manager.pem'
default['kubernetes']['controller_manager_key_file']        = '/etc/kubernetes/ssl/controller_manager-key.pem'
default['kubernetes']['token_auth']                         = false
default['kubernetes']['token_auth_file']                    = '/etc/kubernetes/known_tokens.csv'
default['kubernetes']['docker']['endpoint']                 = 'unix:///var/run/docker.sock'
default['kubernetes']['cgroupdriver']                       = 'cgroupfs'
default['kubernetes']['audit']['enabled']                   = true
default['kubernetes']['audit']['log_path']                  = '/var/log/kubernetes/audit.log'
default['kubernetes']['audit']['log_format']                = 'json' # Known formats are legacy,json.
default['kubernetes']['audit']['log_mode']                  = 'blocking' # Known modes are batch,blocking.
default['kubernetes']['audit']['log_maxbackup']             = 3
default['kubernetes']['audit']['log_maxsize']               = 10
default['kubernetes']['audit']['policy_file']               = '/etc/kubernetes/audit-policy.yaml'
default['kubernetes']['audit_webhook']['enabled']           = false
default['kubernetes']['audit_webhook']['config_file']       = '/etc/kubernetes/audit-webhook.yaml'
default['kubernetes']['audit_webhook']['initial_backoff']   = '10s'
default['kubernetes']['audit_webhook']['version']           = 'audit.k8s.io/v1'
default['kubernetes']['audit_webhook']['mode']              = 'batch' # Known modes are batch,blocking,blocking-strict.
default['kubernetes']['audit_webhook_config']['server']     = ''
default['kubernetes']['feature_gates']                      = {
  'TTLAfterFinished'          => true,
  'ServiceTopology'           => true,
}
default['kubernetes']['packages']['storage_url']            = "https://storage.googleapis.com/kubernetes-release/release/#{node['kubernetes']['version']}/bin/linux/amd64/"
default['kubernetes']['checksums']['apiserver']             = 'c2f234d96075fbbacded0bdbd55194e4444795a2303b876dcab62f707489923c'
default['kubernetes']['checksums']['controller-manager']    = 'f46cc4043a63b5850dbb89c23ceecb2e0a23b6e86188dd65b32529b1cca0f7ef'
default['kubernetes']['checksums']['proxy']                 = '12d7dcbaf35cc2fcac161cf89625fb85a3ba6aa146c10bb67e5b746ad7f3ae19'
default['kubernetes']['checksums']['scheduler']             = '70200bcd62dde942162c0a4e73ef7393477dd1759a88d299d0a81f0ac0ed100a'
default['kubernetes']['checksums']['kubectl']               = '7732548b9c353114b0dfa173bc7bcdedd58a607a5b4ca49d867bdb4c05dc25a1'
default['kubernetes']['checksums']['kubelet']               = '33c6befab43ace4c4e89eab9c45d0cea5432f3cea4beaa956c786fe521f844bb'
default['kubernetes']['addon_manager']['version']           = 'v9.0.2'
default['kubernetes']['multimaster']['access_via']          = 'haproxy' # other possible values are: direct, dns
default['kubernetes']['multimaster']['haproxy_url']         = '127.0.0.1'
default['kubernetes']['multimaster']['haproxy_port']        = 6443
default['kubernetes']['multimaster']['dns_name']            = ''
default['kubernetes']['encryption']                         = 'aescbc'
default['kubernetes']['cni']['plugins_version']             = '0.8.5'
default['kubernetes']['cni']['plugins'] = {
  'bridge'	=> true,
  'dhcp'	=> true,
  'flannel'	=> true,
  'host-device'	=> true,
  'host-local'	=> true,
  'ipvlan'	=> true,
  'loopback'	=> true,
  'macvlan'	=> true,
  'portmap'	=> true,
  'ptp'	        => true,
  'sample'	=> true,
  'tuning'	=> true,
  'vlan'	=> true,
  'bandwidth'   => true,
  'firewall'    => true,
  'sbr'         => true,
  'static'      => true,
}
default['kubernetes']['node']['packages'] = {
  'iptables'            => true,
  'ebtables'            => true,
  'socat'               => true,
  'ethtool'             => true,
  'kmod'                => true,
  'tcpd'                => true,
  'dbus'                => true,
  'apt-transport-https' => true,
  'conntrack'           => true,
}
