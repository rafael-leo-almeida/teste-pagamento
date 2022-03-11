![Badge](https://img.icons8.com/stickers/100/000000/cash-in-hand.png?style=for-the-badge&logo=ghost)
<h1 align="center">
    <a href="https://www.vancouvertec.com.br"> Teste - Sistema de pagamento</a>
</h1>
<p align="center">🚀 O objetivo do sistema é mostrar rotians de pagamentos.</p>

Tabela de conteúdos
=================
## Índice
* [Introdução](https://github.com/rafaelferreira2312/teste-pagamento/README.md#Teste-pagamento ---sistema-de-teste-pagamento)
* [1. Diagrama E-R - Modelo de banco de dados](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#1-diagrama-e-r---modelo-de-banco-de-dados)
* [2. Diagrama de Classe](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#2-diagrama-de-classe)
* [3. Caso de uso](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#3-caso-de-uso)
* [4. Tecnologias Utilizadas](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#4-tecnologias-utilizadas)
* [5. Interface do sistema](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#5-interface-do-sistema)
  * [5.1. Login](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#51-login)
  * [5.2 Menu Principal](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#52-menu-principal)
  * [5.3 Menus](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#53-menus)
  * [5.4 Cadastros de Cliente](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#54-cadastros-de-cliente)
  * [5.5 Manutenção](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#55-manuten%C3%A7%C3%A3o)
  * [5.6 Consultas](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#56-consultas)
  * [5.7 Orçamento](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#57-or%C3%A7amento)
  * [5.8 Vendas](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#58-vendas)
  * [5.9  Fazer Pedidos](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#59--fazer-pedidos)
  * [5.10 Entrada de estoque](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#510-entrada-de-estoque)
  * [5.11 Contas a receber](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#511-contas-a-receber)
  * [5.12 Relatórios](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#512-relat%C3%B3rios)
  * [5.13 Gráficos](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#513-gr%C3%A1ficos)
  * [5.14 Controle de Acesso](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#514-controle-de-acesso)
* [6. Segurança do Sistema](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#6-seguran%C3%A7a-do-sistema)
  * [6.1. SQL Injection](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#61-sql-injection)
  * [6.2. Erros de preenchimentos de formulários](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#62-erros-de-preenchimentos-de-formul%C3%A1rios)
     * [6.2.1. Valor inválido](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#621-valor-inv%C3%A1lido)
     * [6.2.2. Preenchimento obrigatório](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#622-preenchimento-obrigat%C3%B3rio)
  * [6.3. MD5](https://github.com/LeonardoPSouzaPortfolio/AgroEmpresarial-SistemaDeGerenciamento#63-md5)

# Teste pagamento - Sistema de teste de pagamento

&nbsp;&nbsp;&nbsp;&nbsp;Este artigo descreve um sistema de gerenciamento para empresas de vendas de peças agrícolas onde é possível efetuar a venda de peças controlando seu estoque com entradas e saídas e uma ferramenta financeira responsável pelo gerenciamento de pagamentos. Abordando também o desenvolvimento do sistema em etapas contendo diagramas de caso de uso, diagrama de classes, modelagem de banco de dados, tecnologias utilizadas. principais telas do sistemas e as camada de segurança do sistema.

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
- [Winzip](https://www.winzip.com/br/download/winzip/), 
- [Xampp](https://www.apachefriends.org/pt_br/index.html).
- [Php](https://www.php.net/downloads.php).
Si instalar o xampp o pacote vai completo (php, mysql e apache).

### 🎲 Rodando o Back End (servidor)

```bash
# Clone este repositório
$ git clone <https://github.com/tgmarinho/nlw1>

# Acesse a pasta do projeto no terminal/cmd
$ cd nlw1

# Vá para a pasta server
$ cd server

# Instale as dependências
$ npm install

# Execute a aplicação em modo de desenvolvimento
$ npm run dev:server

# O servidor inciará na porta:3333 - acesse <http://localhost:3333>
```
### 🎲 Rodando no (servidor) web
```bash
# Acesse o link de demostração
$ www.teste-pagamento.vancouvertec.com.br
$ Usuário:
$ Senha:
```

#Tecnologias 🛠

As seguintes ferramentas foram usadas na construção do projeto:

- [Mysql](https://www.mysql.com/)
- [PHP](https://www.php.net/)
- [ScriptCase](https://www.scriptcase.com.br/)

