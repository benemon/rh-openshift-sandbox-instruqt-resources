### frontends

frontend api
    bind *:6443
    mode tcp
    option tcplog
    tcp-request content accept if { req_ssl_hello_type 1 }
    tcp-request inspect-delay 5s
    use_backend ocp_api_backend if { req_ssl_sni -i api.ocp.proxy.${var_instruqt_participant_id}.instruqt.io }

### ocp api backends
backend ocp_api_backend
   mode tcp
   server ${var_public_api_ip} ${var_public_api_ip}:6443 check