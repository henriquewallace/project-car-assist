#!/bin/bash
echo "Executando app.sh"
echo "Substituindo variaveis em application.properties"
echo $APP_AWS_SECRETKEY | sed -r 's/\//\\\//g' | sed -r 's/\+/\\\+/g' > AUX
export APP_AWS_SECRETKEY=`cat AUX`
rm -f AUX
sed -i "s/AWS_ACCESS_KEY_ID/${AWS_ACCESS_KEY_ID}/g" application.properties
sed -i "s/AWS_SECRET_ACCESS_KEY/${AWS_SECRET_ACCESS_KEY}/g" application.properties
echo "application.properties modificado com sucesso!"
java -jar app.jar