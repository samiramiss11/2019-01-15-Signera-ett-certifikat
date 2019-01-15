

#Add the self-signed certificate to "trusted root CA store"#
Export-Certificate -Cert $cert -FilePath C:\temp\Mitt-rootCA.crt
Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root -FilePath C:\temp\Mitt-rootCA.crt

#create a file for my certification#
'this is my certification' | out-file C:\cert\cert1.ps1

#Sign the script with the certificate you created#
Set-AuthenticodeSignature -FilePath C:\cert\cert1.ps1 -Certificate $cert

#change certification policies#
 Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Restricted -Force
 
 
 
 
 
 - Kör skriptet. Vad blev resultatet?

OBS! Alla steg är inte med, vilket/vilka saknas?

Lämna in resultatet i en fil med ändelse ".txt" och skriptfilen med ändelse ".ps1"
