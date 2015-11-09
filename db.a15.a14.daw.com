; BIND reverse data file for empty rfc1918 zone
; DO NOT EDIT THIS FILE - it is used for multiple zones.
; Instead, copy it, edit named.conf, and use that copy.
;
$TTL	86400
@	IN	SOA	ns.a15.a14.daw.com. root.localhost. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
@			IN	NS	ns.a15.a14.daw.com.
ns.a15.a14.daw.com.	IN	A	192.168.3.215
real			IN	A	192.168.3.15
debian8			IN	A	192.168.3.215
www			IN	CNAME	debian8.daw15
