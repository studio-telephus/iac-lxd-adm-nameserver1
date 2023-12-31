cat <<EOF >/etc/bind/zones/db-10.0.10.conf
;
; BIND reverse data file for local loopback interface
;
\$TTL    604800
@       IN      SOA     nameserver1.adm.acme.corp. root.nameserver1.adm.acme.corp. (
                           1004         ; Serial
                             1D         ; Refresh
                             1H         ; Retry
                             1W         ; Expire
                             3H )       ; Negative Cache TTL
;

; name servers
 IN  NS  nameserver1.adm.acme.corp.

; PTR Records
101 IN PTR nameserver1.adm.acme.corp.
109 IN PTR minio.adm.acme.corp.
110 IN PTR vpnserver.adm.acme.corp.
120 IN PTR nexus.adm.acme.corp.
121 IN PTR gitlab.adm.acme.corp.
125 IN PTR sonarqube.adm.acme.corp.
127 IN PTR ofbiz.adm.acme.corp.
130 IN PTR glrunner-k1.adm.acme.corp.
131 IN PTR glrunner-k2.adm.acme.corp.
132 IN PTR glrunner-d2.adm.acme.corp.
133 IN PTR glrunner-b3.adm.acme.corp.
134 IN PTR glrunner-b2.adm.acme.corp.
135 IN PTR glrunner-b1.adm.acme.corp.
EOF
