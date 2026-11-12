-- FitStart - carga inicial da biblioteca de exercícios (RF03).
-- Pode ser executado mais de uma vez. Revise as descrições com fonte confiável.

INSERT INTO exercicio (nome, grupo_muscular, descricao) VALUES
  ('Agachamento livre', 'Pernas', 'Com os pés na largura dos ombros, flexione joelhos e quadris mantendo a coluna reta e depois retorne à posição inicial.'),
  ('Leg press 45', 'Pernas', 'Sentado na máquina, empurre a plataforma com os pés e retorne de forma controlada, sem tirar a lombar do apoio.'),
  ('Cadeira extensora', 'Pernas', 'Sentado na máquina, estenda os joelhos elevando a barra com as pernas e retorne devagar.'),
  ('Mesa flexora', 'Pernas', 'Deitado de bruços na máquina, flexione os joelhos trazendo o apoio em direção aos glúteos.'),
  ('Elevação pélvica', 'Glúteos', 'Deitado com as costas apoiadas, eleve o quadril contraindo os glúteos e retorne com controle.'),
  ('Panturrilha em pé', 'Pernas', 'Em pé, eleve os calcanhares o máximo possível e desça devagar.'),
  ('Supino reto', 'Peito', 'Deitado no banco, desça a barra até a altura do peito e empurre de volta para cima.'),
  ('Supino inclinado com halteres', 'Peito', 'No banco inclinado, empurre os halteres para cima e retorne de forma controlada.'),
  ('Crucifixo', 'Peito', 'Deitado no banco, abra os braços com leve flexão dos cotovelos e una os halteres acima do peito.'),
  ('Flexão de braços', 'Peito', 'Com as mãos apoiadas no chão, flexione os cotovelos descendo o corpo em linha reta e empurre de volta.'),
  ('Puxada na frente', 'Costas', 'Sentado na máquina, puxe a barra em direção ao peito e retorne devagar.'),
  ('Remada curvada', 'Costas', 'Com o tronco inclinado e a coluna reta, puxe a barra em direção ao abdômen e retorne.'),
  ('Remada baixa', 'Costas', 'Sentado na polia baixa, puxe a barra em direção ao abdômen mantendo o tronco estável.'),
  ('Desenvolvimento com halteres', 'Ombros', 'Sentado ou em pé, empurre os halteres acima da cabeça e retorne à altura dos ombros.'),
  ('Elevação lateral', 'Ombros', 'Em pé, eleve os halteres para os lados até a altura dos ombros e desça devagar.'),
  ('Rosca direta', 'Bíceps', 'Em pé, flexione os cotovelos elevando a barra ou os halteres sem balançar o tronco.'),
  ('Tríceps na polia', 'Tríceps', 'Em pé, com os cotovelos junto ao corpo, estenda os braços para baixo e retorne devagar.'),
  ('Tríceps testa', 'Tríceps', 'Deitado no banco, flexione os cotovelos levando a barra em direção à testa e estenda de volta.'),
  ('Abdominal', 'Abdômen', 'Deitado com os joelhos flexionados, eleve o tronco contraindo o abdômen e retorne com controle.'),
  ('Elevação de pernas', 'Abdômen', 'Deitado ou suspenso, eleve as pernas contraindo o abdômen e desça devagar.')
ON CONFLICT (nome) DO NOTHING;
