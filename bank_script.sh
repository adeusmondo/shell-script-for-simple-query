#!/usr/bin/env bash


welcome()
{
	echo "Banco Shell Script"
}

get_input_user()
{
	echo -n "Informe seu usuário: "
	read user
}

search_users()
{
	echo "Buscando informações..."
	wget -q https://raw.githubusercontent.com/leandersonandre/shell-script/master/lista_usuarios.txt
	result=$(cat lista_usuarios.txt | grep -w "$user")
}


welcome
get_input_user
search_users

if [ $result ]; then
    echo "Usuário encontrado.\nBaixando dados do usuário..."
    wget -qO- https://github.com/leandersonandre/shell-script/blob/master/$user.tar.gz?raw=true | tar -xz
    
    echo "Download completo"
    cd $user
    option=0
    
    while [ $option -ne 3 ]; do
        echo -n "\n\nSelecione uma opção:\n1. Ver Saldo\n2. Ver Extrato\n3. Sair\nDigite sua opção: "
        read option
        echo
        
        case $option in
            1)  cat saldo.txt 
                ;;
            2)  cat extrato.txt 
                ;;
            3)  echo "Excluindo arquivos..."
                cd ..
                rm -r lista_usuarios.txt $user
                echo "Obg, volte semppre\nBank Shell" 
                ;;
            *)  echo "Opção inválida" 
                ;;
        esac
    done
else
    echo "Usuário $user não encontrado"
    
    if [ lista_usuarios.txt ]; then
        rm lista_usuarios.txt
    fi
fi
