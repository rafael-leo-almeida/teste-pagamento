![Badge](https://img.icons8.com/stickers/100/000000/cash-in-hand.png?style=for-the-badge&logo=ghost)
<h1 align="center">
    <a href="https://www.vancouvertec.com.br"> Teste - Sistema de pagamento</a>
</h1>
<p align="center">🚀 O objetivo do sistema é mostrar rotians de pagamentos.</p>

Tabela de conteúdos
=================
## Índice
* [Introdução](https://github.com/rafaelferreira2312/teste-pagamento#teste-pagamento-online---sistema-de-teste-de-pagamento)
* [1. Diagrama E-R - Modelo de banco de dados](https://github.com/rafaelferreira2312/teste-pagamento#1-diagrama-e-r---modelo-de-banco-de-dados)
* [2. Configurações de segurança do sistema](https://github.com/rafaelferreira2312/teste-pagamento#2-estas-s%C3%A3o-as-configura%C3%A7%C3%B5es-de-seguran%C3%A7a-do-sistema)
* [3. Tecnologias Utilizadas](https://github.com/rafaelferreira2312/teste-pagamento#3--tecnologias-utilizadas)
* [4. Interface do sistema](https://github.com/rafaelferreira2312/teste-pagamento#-interface-do-sistema)
  * [4.1. Login](https://github.com/rafaelferreira2312/teste-pagamento#41-login)
  * [4.2 Novo usuário](https://github.com/rafaelferreira2312/teste-pagamento#42-tela-de-novo-usu%C3%A1rio)
  * [4.3 Recuperar senha](https://github.com/rafaelferreira2312/teste-pagamento#43-tela-para-recuperar-a-senha)
  * [4.4 Tela principal do sistema](https://github.com/rafaelferreira2312/teste-pagamento#44-tela-principal-do-sistema)
  * [4.5 Tela de meus recebimentos](https://github.com/rafaelferreira2312/teste-pagamento/blob/main/README.md#45-tela-de-meus-recebimentos)
  
  # Teste pagamento online - Sistema de teste de pagamento

| Segurança | Descrição |
| --- | --- |
| Site | http://teste-pagamento.vancouvertec.com.br |
| Usuário | admin |
| Senha | admin |

### 1. Diagrama E-R - Modelo de banco de dados
A **figura 1** representa graficamente as entidades e seus relacionamentos com as de mais entidades do banco de dados.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/diagrama%20er%20do%20banco%20de%20dados.png" alt="Diagrama ER" title="Clique para ampliar">
  <p align="center">
    <b>Figura 1 - Diagrama ER</b>
  </p>
</img>

### 2. Estas são as configurações de segurança do sistema 
| Segurança | Descrição |
| --- | --- |
| Aplicação | A aplicação é baseada em segurança por nível de aplicação. Onde a aplicação é relacionada com o usuário. |
| Criptografia | Tecnologia MD5 |
| Cookies | Tempo de expiração é de 30 dias |

### 3. 🛠 Tecnologias Utilizadas 
- [Mysql](https://www.mysql.com/) - Banco de Dados
- [PHP](https://www.php.net/) -  Linguagem de Programação
- [ScriptCase](https://www.scriptcase.com.br/) -  Framework

 ### . Interface do sistema
&nbsp;&nbsp;&nbsp;&nbsp;Nesse tópico serão mostradas as telas do sistemas seguindo de suas funcionalidades.
 
 #### 4.1. Login
&nbsp;&nbsp;&nbsp;&nbsp;Inicialmente o sistema inicia na tela de “login” **figura 2** onde o funcionário irá entrar com seus dados de autenticação.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/tela_login_sistema.png"
alt="Tela de login" title="Clique para ampliar">
  <p align="center">
    <b>Figura 2 - Tela de login</b>
    <b>Usuário: admin</b>
    <b>Senha: admin</b>
  </p>
</img>

#### 4.2. Tela de novo usuário
&nbsp;&nbsp;&nbsp;&nbsp;Para criar um usuário novo de um click em novo usuário na tela de login **figura 3** onde o usuário irá entrar com seus dados.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/novo_usuario.png"
alt="Tela de login" title="Clique para ampliar">
  <p align="center">
    <b>Figura 3 - Novo usuário</b>    
  </p>
</img>

#### 4.3. Tela para recuperar a senha
&nbsp;&nbsp;&nbsp;&nbsp;Para o usuário recuperar a senha tem que acessar esta tela **figura 4** abaixo do da tela de login tem um link onde o usuário irar dar um click e será direcionado para colocar o login e será enviado para o e-mail de cadastro a senha.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/recupaera_senha.png"
alt="Tela principal do sistema" title="Clique para ampliar">
  <p align="center">
    <b>Figura 4 - Tela para recuperar senha</b>    
  </p>
</img>

#### 4.4. Tela principal do sistema
&nbsp;&nbsp;&nbsp;&nbsp;Para acessar a tela principal do sistema é preciso efeturar o login **figura 5** nesta tela você podera navegar em todas as abas do sistema.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/tela_painel_inicial.png"
alt="Tela principal do sistema" title="Clique para ampliar">
  <p align="center">
    <b>Figura 5 - Tela principal do sistema</b>    
  </p>
</img>

#### 4.5. Tela de transferência
&nbsp;&nbsp;&nbsp;&nbsp;Nesta tela o usuário poderá fazer transferências para um outro usuário ou lojista, porém, lojistas só recebem as transações. **figura 6** nesta tela, o sistema busca os clientes e lojistas cadastrados, verifica a senha de transferência, verifica si o usuário logado tem saldo para trasnferir, consulta uma api de status, consulta uma api de envio de e-mail e traz a resposta do payload.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/tela_incluir_transacao.png"
alt="Tela de transferência" title="Clique para ampliar">
  <p align="center">
    <b>Figura 6 - Tela de transferência</b>    
  </p>
</img>

#### 4.5. Tela de meus recebimentos
&nbsp;&nbsp;&nbsp;&nbsp;Nesta tela o usuário poderá conferir todas transferências feitas tanto o usuário como o lojista. **figura 7** nesta tela você gerar relatórios em pdf, word e excel.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/tela_meus_recebimentos.png"
alt="Tela de meus recebimentos" title="Clique para ampliar">
  <p align="center">
    <b>Figura 7 - Tela de meus recebimentos</b>    
  </p>
</img>
