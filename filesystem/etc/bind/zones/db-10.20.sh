cat <<EOF >/etc/bind/zones/db-10.20.conf
;
; BIND reverse data file for local loopback interface
;
\$TTL    604800
@       IN      SOA     nameserver1.adm.acme.corp. root.nameserver1.adm.acme.corp. (
                           2008         ; Serial
                             1D         ; Refresh
                             1H         ; Retry
                             1W         ; Expire
                             3H )       ; Negative Cache TTL
;

; name servers
 IN  NS  nameserver1.adm.acme.corp.

; PTR Records
31.0 IN PTR slb.k3s.dev.acme.corp.
32.0 IN PTR alb.k3s.dev.acme.corp.
32.0 IN PTR i18n.iam.dev.acme.corp.
32.0 IN PTR hub.iam.dev.acme.corp.
32.0 IN PTR access.iam.dev.acme.corp.
32.0 IN PTR dashboard.k3s.dev.acme.corp.
32.0 IN PTR grafana.k3s.dev.acme.corp.
EOF
