# Amigo Oculto

Esse projeto está sendo desenvolvido durante um Curso de Ruby on Rails
ministrado na Infoway para uma turma formada por desenvolvedores e
administradores de rede.

Além do objetivo didático, que é ensinar os principais conceitos da linguagem 
e do  framework, temos a intenção de criar um serviço online e gratuito pelo 
qual as pessoas possam organizar sorteios de Amigo Oculto, ou Amigo Secreto, 
como também são chamados.

As vantagens dessa solução:

1. **O sorteio é online.** Os participantes não precisam estar no mesmo dia e local
para a realização do sorteio. Na maneira antiga era um problema conseguir 
reunir todo mundo para fazer o sorteio;                                  
2. **Você não precisa engulir papel!** Claro que isso é uma brincadeira e que
pouquíssimas pessoas fazem isso de fato, mas o sistema envia o resultado de cada 
participante por email, que já é protegido por senha.
3. **O ciclo é perfeito.** Não há riscos de alguém "se-tirar" ou de "eu te tirar e 
você me tirar". Esses casos foram resolvidos por um algorítimo extremamante simples 
e eficiente sugerido durante o curso pelo Paulo Warisson.

## Como funciona(rá)

1. Você cria um sorteio, por exemplo: "Natal da Família". 
2. Você cadastra os participantes, colocando "Nome e e-mail". Ou, você compartilha o 
   link em algum lugar, como Whatsapp, para que eles possam se inscrever.
3. Você clica em "Sortear" e cada participante receberá seu "papel" por email.

Observação: é importante lembrar que só deverá participar quem confirmar seu cadastro
clicando no email recebido após a inscrição. Isso é para garantir que o email é válido
e que quando o sorteio for realizado todos receberão seu "papel".

*(rá) porque nem tudo ainda foi feito :)

##  Como instalar

Primeiro é preciso clinar o projeto

`git clone git://github.com/lucasmncastro/amigo_oculto.git`

Entre no diretório do projeto e execute o bundle install, para garantir que todas as gems estão instaladas.

`cd amigo_oculto`
`bundle install`

Crie as tabelas no banco de dados:
`rake db:migrate`

Inicie a aplicação:

`rails s`

## Contribuidores

* João Paulo Barros
* Adriel Lucas da Silva Viana
* Pedro de Alcantara dos Santos Neto
* Olivan Teixeira Aires
* Paulo Warison Lopes dos Santos
* Djair Carvalho
* Antonio Emanuel
* Lucas Lopes
* Cleiton
* Álvaro Bacelar de Sousa
* Wan Souza
* Luan Pontes
* Tarciana
* Wislanildo
* Ana Catharina Mesquita
* Angela Pereira
* Gleydson Rocha
* Paulo Sérgio Queiroz
* Ewerton Leal
* Bruno Soares
* Livya Castro
* Rondinele Souza
