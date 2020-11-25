# Keytool
Converts a Java Key Store certificate and private key into a Windows PKCS12 certificate and private key.

## Usage
Run the Docker container using Docker run and pass in the filename of the Java Keystore file to convert. The container will convert they key and output the converted key named converted_key.p12. Use Docker's volume mounts to allow the file you wish to convert to be accessed from within the container, the volume should be mounted to /home/keys.

## Example
```
❯ docker run -it -v ${PWD}:/home/keys keytool key_to_convert.jks
Converting key_to_convert.jks to PKCS12
Importing keystore key_to_convert.jks to converted_key.p12...
Enter destination keystore password: <password_for_converted_key>
Re-enter new password: <password_for_converted_key>
Enter source keystore password: <password_for_original_key>
Entry for alias key_to_convert successfully imported.
Import command completed:  1 entries successfully imported, 0 entries failed or cancelled
```