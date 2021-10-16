# Atividade acadêmico - Problema

Desenvolva um script para consultar informações sobre a conta bancária de um cliente. 

O script deverá solicitar o usuário:

```
$ ./bank_script.sh
Banco Shell Script
$ Informe seu usuário: james
$ Buscando informações...
```

Os dados dos usuários deverá ser baixado da internet.
Primeiramente, deverá ser baixado o arquivo lista_usuarios.txt. 
Nesse arquivo contem os usuários cadastrados no sistema. 
Caso o nome do usuário não existe na lista, deve ser informado que usuário não foi encontrado.

```
$ Informe seu usuário: james
$ Buscando informações...
$ Usuário james não encontrado.
```

Caso seja encontrado na lista,  deve-se baixar o arquivo com os dados do usuário. O arquivo se chama <nomeusuario>.tar. O arquivo está compactado no formato tar.

```
$ Informe seu usuário: james
$ Buscando informações...
$ Usuário encontrado.
```

Uma vez baixado os dados, deve-se extrair os arquivos. Os arquivos são saldo.txt e extrato.txt.
```
$ Baixando dados do usuário...
$ Download completo
$ Selecione uma opção:
$ 1. Ver Saldo
$ 2. Ver Extrato
$ 3. Sair
$ Digite sua opção:
```

Ao selecionar as opções 1 ou 2, deve ser mostrado o conteúdo do Arquivo.
```
$ Digite sua opção: 1
$ Saldo R$ 1456.00
$ Digite sua opção: 2
$ + 1789.34
$ - 34.34
$ + 323.2
$ - 3434.3
```

Ao selecionar a opção 3, os arquivos baixados e extraídos devem ser excluídos.
```
$ Digite sua opção: 3
$ Excluindo arquivos…
$ Obg, volte sempre
$ Bank Shell
```

Link dos arquivos:
- https://raw.githubusercontent.com/leandersonandre/shell-script/master/lista_usuarios.txt
- https://github.com/leandersonandre/shell-script/blob/master/lisbon.tar.gz?raw=true
- https://github.com/leandersonandre/shell-script/blob/master/newyork.tar.gz?raw=true
- https://github.com/leandersonandre/shell-script/blob/master/london.tar.gz?raw=true
- https://github.com/leandersonandre/shell-script/blob/master/lisbon.tar.gz?raw=true
