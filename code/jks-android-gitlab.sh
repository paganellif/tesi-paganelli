# Generazione chiave jks
keytool -genkey -v -keystore release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias

# Codifica chiave in esadecimale
xxd -p release-key.jks > hex-encoded-release-key

# Decodifica chiave
cat hex-encoded-release-key | xxd -r -p - > decoded-release-key.jks