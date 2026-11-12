-- FitStart - criação das tabelas (PostgreSQL). Pode ser executado mais de uma vez.

CREATE TABLE IF NOT EXISTS usuario (
  id          BIGSERIAL    PRIMARY KEY,
  nome        VARCHAR(100) NOT NULL,
  email       VARCHAR(150) NOT NULL UNIQUE,
  senha_hash  VARCHAR(100) NOT NULL,
  criado_em   TIMESTAMP    NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS exercicio (
  id              BIGSERIAL    PRIMARY KEY,
  nome            VARCHAR(100) NOT NULL UNIQUE,
  grupo_muscular  VARCHAR(50)  NOT NULL,
  descricao       TEXT
);

CREATE TABLE IF NOT EXISTS rotina (
  id          BIGSERIAL    PRIMARY KEY,
  usuario_id  BIGINT       NOT NULL REFERENCES usuario(id) ON DELETE CASCADE,
  nome        VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS item_rotina (
  id               BIGSERIAL     PRIMARY KEY,
  rotina_id        BIGINT        NOT NULL REFERENCES rotina(id) ON DELETE CASCADE,
  exercicio_id     BIGINT        NOT NULL REFERENCES exercicio(id),
  ordem            INT           NOT NULL,
  series           INT           NOT NULL CHECK (series > 0),
  repeticoes       INT           NOT NULL CHECK (repeticoes > 0),
  carga_planejada  NUMERIC(6,2)  NOT NULL DEFAULT 0 CHECK (carga_planejada >= 0)
);

CREATE TABLE IF NOT EXISTS treino (
  id             BIGSERIAL  PRIMARY KEY,
  usuario_id     BIGINT     NOT NULL REFERENCES usuario(id) ON DELETE CASCADE,
  rotina_id      BIGINT     REFERENCES rotina(id) ON DELETE SET NULL,
  iniciado_em    TIMESTAMP  NOT NULL DEFAULT NOW(),
  finalizado_em  TIMESTAMP
);

CREATE TABLE IF NOT EXISTS serie_registrada (
  id            BIGSERIAL     PRIMARY KEY,
  treino_id     BIGINT        NOT NULL REFERENCES treino(id) ON DELETE CASCADE,
  exercicio_id  BIGINT        NOT NULL REFERENCES exercicio(id),
  numero        INT           NOT NULL CHECK (numero > 0),
  repeticoes    INT           NOT NULL CHECK (repeticoes > 0),
  carga         NUMERIC(6,2)  NOT NULL DEFAULT 0 CHECK (carga >= 0),
  concluida     BOOLEAN       NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_rotina_usuario      ON rotina (usuario_id);
CREATE INDEX IF NOT EXISTS idx_treino_usuario_data ON treino (usuario_id, finalizado_em DESC);
CREATE INDEX IF NOT EXISTS idx_serie_treino        ON serie_registrada (treino_id);
