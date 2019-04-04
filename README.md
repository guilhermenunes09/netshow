Para acessar o Site:
https://netshow1736.herokuapp.com/

# Principais Etapas

## 1. Ambiente de Desenvolvimento
* Criação de framework Rails com Postgres
* Criação de repositórios (Github e Heroku)
* Configuração de Banco de Dados local e externo

## 2. Estrutura e Gems
* Instalação e configuração do Devise
* Modelagem do banco de dados
* Vídeo (name: string url:string) - has_one :video_stat
* VideoStat (views:integer) - belongs_to :video
* Criação de página pública para todos os usuário (public_index)

## 3. Frontend e Backend
* Aplicação de materialize (alternativa ao Bootstrap)
* Importação do framework videojs
* Conta views através do Play (Apenas o primeiro play)
* Otimização para visualização em Mobile

# Desafios
Como estava utilizando o subsistema do Linux no Windows, tive certa dificuldade de configurar o PostgreSQL.
Na verdade este foi um dos aspectos que mais consumiu o tempo em geral, a parte do desenvolvimento em si.
Depois de vários dias sem obter resultados, descobri que realmente havia um problema relatado na comunidade
em relação a utilizar o PostgreSQL com Rails no subsistema do Linux, muito embora tenha sido a primeira vez
que me deparei com tal problema. Ao utilizar o Ubuntu toda essa dificuldade desapareceu. Outro desafio
foi ao criar um formulário de upload para o arquivo de vídeo, mas ao que parece este arquivo é um link
para streaming se não me engano, vou pesquisar melhor.

## Partes que domino, e outras que preciso melhorar
A modelagem de banco de dados, e trabalhar com Controllers e estruturas orientados a objetos é algo
que me dou bem em geral. A parte que eu sei que ainda estou meio por fora, é a questão de testes.
Eu sei mais ou menos como funciona, mas é algo que nunca tive contato por assim dizer (que seria o TDD).
Em geral é bem difícil obter um conhecimento aprofundado de todos os assuntos, mas o que me motiva
também é esta oportunidade de aprender.

# Conclusão
Este foi um desafio interessante, e divertido. Aprendi bastante sobre este framework videojs.
E muito obrigado pela oportunidade e atenção. Abraços!

