provider "appviewx"{
	appviewx_client_id="<client id>"
	appviewx_client_secret="<client secret>"
	appviewx_environment_is_https=true
	appviewx_environment_ip="<hostname>"
	appviewx_environment_port="<port>"
}

resource "appviewx_download_certificate" "downloadCert"{
		resource_id="<resourceID of the certificate>"
		common_name="CN of certificate"
		serial_number="SN of the certificate"
     	certificate_download_path="<Path to download certs>"
     	certificate_download_format="CRT"
     	certificate_download_password="<Password>"
     	certificate_chain_required=true
     	
     	#Password field is only mandatory for the formats (PFX, P12, JKS)
     	#Private key download access in appviewx is required for PFX, P12, JKS formats
     	#isChainRequired field is only applicable for formats (CRT, CER, CERT, PEM, DER).

		key_download_path="<Directory/filename where private key to be downloaded>" #Key download related fields are optional
    	key_download_password="<Mandatory to download private key>"

    	#If download_password_protected_key is true then key will be downloaded as a password #protected key which can be used with the password specified in field key_download_password
    	download_password_protected_key=false
}
