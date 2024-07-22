
### frontends
frontend https
    bind *:443
    mode tcp
    option tcplog
    tcp-request content accept if { req_ssl_hello_type 1 }
    tcp-request inspect-delay 5s
    use_backend ocp_https_router_backend if { req.ssl_sni -m end apps.ocp.proxy.${var_instruqt_participant_id}.instruqt.io }

frontend http
    bind *:80
    mode http
    use_backend ocp_http_router_backend if { hdr_dom(host) -i apps.ocp.proxy.${var_instruqt_participant_id}.instruqt.io }

### ocp https router backends
backend ocp_https_router_backend
   mode tcp
   server ${var_public_router_ip} ${var_public_router_ip}:443 check

### ocp http router backends
backend ocp_http_router_backend
   mode http
   server ${var_public_router_ip} ${var_public_router_ip}:80 check
   