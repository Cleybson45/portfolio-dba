/*No Oracle Database, o conceito de "banco de dados" é um pouco diferente 
do que se vê em outros SGBDs (sistemas de gerenciamento de banco de dados), 
como MySQL ou SQL Server. Vamos explorar isso para esclarecer:
      
*** Diferença Conceitual no Oracle

    No MySQL/PostgreSQL/SQL Server:
        > Um banco de dados é uma unidade lógica independente.
        > Você pode criar vários bancos de dados em uma única instância.
        
    No Oracle Database:
        > Um banco de dados corresponde à instância (o conjunto de processos
         e memória em execução) e aos arquivos físicos associados (control files, 
         data files, etc.).
        > Você não cria um novo "banco de dados" dentro de uma instância já 
        existente. Em vez disso, você pode criar schemas dentro da instância, 
        pois toda a instância representa o banco de dados.*/

/* Eu escolhi criar um schema separado do schema principal na instância (banco de dados).
Trocando em muídos, o que fiz foi deixar o schema "orcl" intacto e criar um schema 
exclusivo para esse projeto, que dei o nome de "invdb", pois vou simular o banco de dados
de um sistema de inventário. */

CREATE USER "invdb" IDENTIFIED BY "senhaForte123";

GRANT CONNECT, RESOURCE TO "invdb";

CONNECT invdb/senhaForte123;