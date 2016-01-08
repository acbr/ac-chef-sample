# Cookbook Sample

### Cookbook para demostração na Vivo

*rake
*kitchen
*foodcritic
*chefspec
*poise


##Requisitos

*Ruby
*Chef SDK
*gem install bundler
*bundle install no folder root do projeto

##Rake

*A execuçãodo do comando rake no root do projeto irá executar o lint do chef, testes unitários e a task de test do Kitchen(destroy, convergence e destroy)

##Kitchen

*Para execução do Kitchen é necessário o vagrant e virtual box instalado
*kitchen test - destroy, convergence, test
*kitchen convergence - faz o convergence da máquina
*kitchen verify - faz a verificação dos testes na máquina

##Chefspec e Guard

*Guard - bundle exec guard/ou utilizando o plugin Sublime guard


