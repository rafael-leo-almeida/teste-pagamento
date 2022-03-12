![Badge](https://img.icons8.com/stickers/100/000000/cash-in-hand.png?style=for-the-badge&logo=ghost)
<h1 align="center">
    <a href="https://www.vancouvertec.com.br"> Teste - Sistema de pagamento</a>
</h1>
<p align="center">🚀 O objetivo do sistema é mostrar rotians de pagamentos.</p>

Tabela de conteúdos
=================
## Índice
* [Introdução](https://github.com/rafaelferreira2312/teste-pagamento#teste-pagamento---sistema-de-teste-de-pagamento)
* [1. Diagrama E-R - Modelo de banco de dados]()
* [2. Diagrama de Classe]()
* [3. Caso de uso]()
* [4. Tecnologias Utilizadas](https://github.com/rafaelferreira2312/teste-pagamento#4--tecnologias-utilizadas)
* [5. Interface do sistema](https://github.com/rafaelferreira2312/teste-pagamento#5-interface-do-sistema)
  * [5.1. Login](https://github.com/rafaelferreira2312/teste-pagamento#51-login)
  * [5.2 Menu Principal]()
  * [5.3 Menus]()
  * [5.4 Cadastros de Cliente]()
  * [5.5 Manutenção]()
  * [5.6 Consultas]()
  * [5.12 Relatórios]()
  * [5.13 Gráficos]()
  * [5.14 Controle de Acesso]()
* [6. Segurança do Sistema]()
  * [6.1. SQL Injection]()
  * [6.2. Erros de preenchimentos de formulários]()
     * [6.2.1. Valor inválido]()
     * [6.2.2. Preenchimento obrigatório]()
  * [6.3. MD5]()

# Teste pagamento - Sistema de teste de pagamento

&nbsp;&nbsp;&nbsp;&nbsp;Este é um sistema de pagamento online entre lojistas e usuários.

### 1. Diagrama E-R - Modelo de banco de dados
A **figura 1** representa graficamente as entidades e seus relacionamentos com as de mais entidades do banco de dados.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/diagrama%20er%20do%20banco%20de%20dados.png" alt="Diagrama ER" title="Clique para ampliar">
  <p align="center">
    <b>Figura 1 - Diagrama ER</b>
  </p>
</img>

### 3. Estas são as configurações de segurança do sistema 
| Segurança | Descrição |
| --- | --- |
| Aplicação | A aplicação é baseada em segurança por nível de aplicação. Onde a aplicação é relacionada com o usuário. |
| Criptografia | Tecnologia MD5 |
| Cookies | Tempo de expiração é de 30 dias |

### 4. 🛠 Tecnologias Utilizadas 
- [Mysql](https://www.mysql.com/) - Banco de Dados
- [PHP](https://www.php.net/) -  Linguagem de Programação
- [ScriptCase](https://www.scriptcase.com.br/) -  Framework

 ### 5. Interface do sistema
&nbsp;&nbsp;&nbsp;&nbsp;Nesse tópico serão mostradas as telas do sistemas seguindo de suas funcionalidades.
 
 #### 5.1. Login
&nbsp;&nbsp;&nbsp;&nbsp;Inicialmente o sistema inicia na tela de “login” **figura 4** onde o funcionário irá entrar com seus dados de autenticação.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/tela_login_sistema.png"
alt="Tela de login" title="Clique para ampliar">
  <p align="center">
    <b>Figura 4 - Tela de login</b>
    <b>Usuário: admin</b>
    <b>Senha: admin</b>
  </p>
</img>

#### 5.1. Tela de novo usuário
&nbsp;&nbsp;&nbsp;&nbsp;Para criar um usuário novo de um click em em novo usuário na tela de login **figura 5** onde o usuário irá entrar com seus dados.

<img src="https://github.com/rafaelferreira2312/teste-pagamento/blob/main/imagens/novo_usuario.png"
alt="Tela de login" title="Clique para ampliar">
  <p align="center">
    <b>Figura 5 - Novo usuário</b>    
  </p>
</img>