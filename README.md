# FitStart

Aplicativo web de controle de treinos para iniciantes. Permite montar rotinas, registrar cada treino (séries, repetições e cargas) e consultar o histórico.

Projeto acadêmico de Análise e Desenvolvimento de Sistemas (disciplina Programar em Linguagem Interpretada).

- **Equipe:** João Erick Moura da Silva
- **Professor:** Jeremias Serafim Araujo

## Escopo do MVP

Cadastro e login, biblioteca de exercícios, criação e edição de rotinas, registro de treino e histórico de treinos. Os requisitos completos estão na pasta `docs/`.

## Tecnologias

| Camada | Tecnologia |
|---|---|
| Front-end | React, Vite, React Router, Tailwind CSS, axios |
| Back-end | Java 21, Spring Boot 3, Spring Security, Spring Data JPA, JWT |
| Banco de dados | PostgreSQL |
| Testes | JUnit e Mockito |

## Estrutura

```
fitstart/
|-- docs/                 # artefatos das macro entregas (PDF)
|-- backend/              # API Spring Boot
|-- frontend/             # aplicação React + Vite
|-- docker-compose.yml    # PostgreSQL para desenvolvimento
`-- .env.example          # variáveis de ambiente de exemplo
```

## Como executar

Pré-requisitos: Java 21, Maven, Node.js 20 ou superior e Docker (para o banco).

**1. Banco de dados**

```
docker compose up -d
```

**2. Back-end** (pasta `backend`)

```
mvn spring-boot:run
```

A API sobe em `http://localhost:8080`. Teste em `http://localhost:8080/health`.
As tabelas e a biblioteca de exercícios são criadas na inicialização a partir de `src/main/resources/db/`.

**3. Front-end** (pasta `frontend`)

```
npm install
npm run dev
```

O front-end sobe em `http://localhost:5173`.

## Variáveis de ambiente

| Variável | Descrição | Valor padrão (desenvolvimento) |
|---|---|---|
| DB_URL | URL JDBC do PostgreSQL | jdbc:postgresql://localhost:5432/fitstart |
| DB_USER | Usuário do banco | fitstart |
| DB_PASSWORD | Senha do banco | fitstart |
| JWT_SECRET | Chave para assinar os tokens JWT | (definir antes de usar em produção) |
| CORS_ORIGIN | Endereço do front-end autorizado | http://localhost:5173 |

No front-end, a variável `VITE_API_URL` define o endereço da API (padrão `http://localhost:8080`).

## Padrões de desenvolvimento

- **Git:** branch `main` protegida; trabalho em branches `feature/nome-da-funcionalidade` e integração por Pull Request com revisão.
- **Commits:** mensagens claras no padrão `feat:`, `fix:` e `docs:`.
- **Camadas (back-end):** Controller chama Service, e Service chama Repository, sem pular níveis; DTOs na borda da API.
- **Nomes:** classes em PascalCase, métodos e atributos em camelCase, tabelas e colunas em snake_case.
- **Segredos:** sempre em variáveis de ambiente, nunca no repositório.

## Aviso

O FitStart não substitui o acompanhamento de um profissional de educação física. A biblioteca de exercícios inicial deve ser revisada com fonte confiável.
