### Sistema de gestão de agendamentos para clínicas médicas

##

#### 1. Descrição do projeto
Este projeto propõe o desenvolvimento de um **sistema web de agendamento e gestão de notificações** para clínicas médicas de pequeno e médio porte. O objetivo é facilitar o controle de consultas, reduzir cancelamentos de última hora e melhorar a comunicação entre pacientes, médicos e equipe administrativa.

O sistema permitirá:
- Agendamento, reagendamento e cancelamento de consultas;
- Cadastro de pacientes, médicos e especialidades;
- Visualização consolidada das agendas;
- Geração de relatórios básicos de ocupação da clínica;
- Envio de notificações automáticas sobre agendamentos.

##

#### 2. Escopo do projeto
O escopo inicial é **limitado às funções essenciais** de agendamento e notificação, com foco em validar o modelo de negócio e a arquitetura proposta.   Recursos como **aplicativo móvel, integração com convênios e relatórios avançados** são considerados evoluções futuras.

##

#### 3. Artefatos do projeto
A estrutura de arquivos referente à análise de requisitos e modelagem está organizada da seguinte forma:
```plaintext
.
└── materiais-e-requisitos
    ├── 1. Definição dos problemas e requisitos.pdf
    ├── 2. Business model canva.pdf
    ├── 3. Project canva.txt
    ├── 4. Diagramas de caso de uso, histórias de usuário e modelos.zip
    └── 5. Quadro kanban.txt
```

Esses arquivos reúnem os principais artefatos do projeto, incluindo a definição dos requisitos mínimos, modelagem de negócio, planejamento inicial, histórias de usuário, e diagramas de caso de uso.

##

#### Requisitos funcionais (RF)

| Código | Descrição                                                                                                     |
|--------|---------------------------------------------------------------------------------------------------------------|
| RF01   | Cadastro de usuários (administradores, atendentes, médicos);                                                  |
| RF02   | Autenticação de usuários por credenciais únicas;                                                              |
| RF03   | Gestão de permissões conforme perfil de acesso;                                                               |
| RF04   | Cadastro de pacientes com dados pessoais, contato, convênio e histórico;                                      |
| RF05   | Pesquisa de pacientes por nome, CPF, telefone ou convênio;                                                    |
| RF06   | Criar agendamentos informando médico, paciente, horário e tipo de consulta;                                   |
| RF07   | Alterar agendamentos, incluindo horário, sala, médico ou tipo;                                                |
| RF08   | Cancelar agendamentos com registro de motivo;                                                                 |
| RF09   | Impedir conflitos de horário para médicos e salas;                                                            |
| RF10   | Exibir disponibilidade de agenda por médico, especialidade e data;                                            |
| RF11   | Enviar lembretes automáticos aos pacientes (SMS, WhatsApp, e-mail);                                           |
| RF12   | Enviar notificações internas para a clínica (cancelamentos, alterações, novas marcações);                     |
| RF13   | Integrar com convênios para validação de carteirinha;                                                         |
| RF14   | Gerar relatórios de ocupação da agenda por médico, especialidade e período;                                   |
| RF15   | Gerar relatórios financeiros e indicadores de rentabilidade;                                                  |
| RF16   | Disponibilizar acesso via plataforma web responsiva.                                                          |


##

#### Requisitos não funcionais (RNF)

| Código | Categoria     | Descrição                                                                                             |
|--------|---------------|-------------------------------------------------------------------------------------------------------|
| RNF01  | Desempenho    | Tempo de resposta ≤ 4 segundos para ações comuns;                                                     |
| RNF02  | Desempenho    | O sistema deve suportar aumento de usuários e clínicas sem perda significativa de desempenho;         |
| RNF03  | Confiabilidade| Disponibilidade mínima de 99,5%;                                                                      |
| RNF04  | Confiabilidade| Capacidade de recuperação após falhas (tolerância a falhas);                                          |
| RNF05  | Segurança     | Todos os dados devem trafegar utilizando HTTPS/TLS;                                                   |
| RNF06  | Segurança     | Conformidade com a LGPD para dados sensíveis;                                                         |
| RNF07  | Segurança     | Autenticação e autorização baseadas em JWT, OAuth2 ou equivalente;                                    |
| RNF08  | Usabilidade   | Interface intuitiva seguindo boas práticas de UX;                                                     |
| RNF09  | Usabilidade   | Compatibilidade com diretrizes básicas de acessibilidade (WCAG);                                      |
| RNF10  | Manutenibilidade | Código modular e de fácil expansão;                                                                |
| RNF11  | Manutenibilidade | Sistema deve possuir logs e monitoramento para auditoria e diagnóstico;                            |
| RNF12  | Portabilidade | Compatível com Chrome, Edge, Firefox e Safari.                                                        |


##

#### 4. Equipe
- Antonio Leoncio Vieira Neto;
- Lucas Anderson Ribeiro;
- Victor Furtado.

##

<br>

> Todos os artefatos estão versionados neste repositório e podem evoluir conforme o grupo avança na definição da arquitetura e no detalhamento do projeto.