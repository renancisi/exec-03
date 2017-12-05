#!/bin/bash

##########################################################################################
# Autor: Renan Cisi
# Modificado: 04/12/2017
##########################################################################################

# Para a senha não ficar exposta recomendo usar o shc para gerar executavel binario deste script.
# Artigo em http://www.vivaolinux.com.br/dica/SHC-Compilando-seu-shell-script

RETORNO_WGET=`wget -qO- localhost:8083/lab.json | grep -i down | cut -d: -f1`

EMAIL_FROM="labnexxera@gmail.com"  # usuario de email que se autentica no servidor SMTP
EMAIL_TO="labnexxera@gmail.com" # usuario que receberá os emails

#Servidor SMTP e porta utilizada
SERVIDOR_SMTP="smtp.gmail.com:587" #endereço no servidor SMTP, observar no exemplo o yahoo utiliza a porta 587
SENHA='labnexxera@2017!'    #informe aqui a senha de autenticação no servidor SMTP (do e-mail)

ASSUNTO="Serviços com status Down"
MENSAGEM="Os serviços: $RETORNO_WGET estão com status: Down"

if [ "$ASSUNTO" == "" ] ;then
	ASSUNTO="SEM ASSUNTO"
fi
if [ "$MENSAGEM" == "" ] ;then
	MENSAGEM="SEM MENSAGEM"
fi

sendEmail -f $EMAIL_FROM -t $EMAIL_TO -u "$ASSUNTO" -m "$MENSAGEM"  -s $SERVIDOR_SMTP -xu $EMAIL_FROM -xp $SENHA

# Fim do Script
