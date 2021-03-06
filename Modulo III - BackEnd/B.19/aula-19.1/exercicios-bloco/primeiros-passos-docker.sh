# Vamos juntar tudo o que aprendemos até aqui e exercitar mais ainda nosso aprendizado!
# 1. No Docker Hub , utilizando a caixa de busca ( "Search for great content" ) , busque pela imagem da Distribuição Linux Debian ;
# 2. Uma vez que encontrar a imagem oficial , acesse-a (clicando em seu card) e verifique na página de detalhes, se existe algum comando para baixarmos a imagem localmente sem ter que criar um container para isso ;

$docker pull debian;

# 3. Baixe a imagem utilizando a tag : stable-slim , que é uma versão reduzida da distribuição;

$docker pull debian:stable-slim;

# 4. Após baixar a imagem para seu computador local, crie e execute um container no modo interativo utilizando essa imagem como referência (não esqueça referenciar a tag ) ;

$docker container run -it debian:stable-slim;

# 5. No terminal, você deve conseguir rodar o comando cat /etc/*-release , que vai retornar os dados da distribuição Debian que está sendo rodada dentro do container ;

$docker container -it debian;
$cat etc/*-release;

# 6. Encerre o terminal ;

$exit;

# 7. Verifique na sua lista de containers , qual o container é referente ao exercício que acabou de praticar;

$docker container ls -la;

# 8. Inicie o mesmo container novamente , sem criar outro. Valide se ele está ativo na lista de containers;

$docker start 4848;

# 9. Retome o container que foi criado anteriormente nesse exercício ;

$docker attach 4848;

# 10. Rode o comando cat /etc/debian_version que deve retornar a versão atual do sistema do container ;

$docker container -it 4848;
$cat etc/*-release;

# 11. Encerre o terminal ;

$exit;

# 12. Remova somente o container criado para esse exercício ;

$docker container rm -f 4848;

# 13. (Bônus) Crie e rode de modo interativo em modo 'Cleanup' , a imagem andrius/ascii-patrol ;

$docker run -it --rm andrius/ascii-patrol;
$q;

# 14. (Bônus) Encerre o container utilizando os botões [ ctrl ] + [ c ].

$]^C;
$docker container ls -a;