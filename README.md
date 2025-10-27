# Analise-de-Predicao-Obito-Sifilis-Congenita

Este repositório contém um projeto de ciência de dados sobre predição de óbitos por sífilis congênita. Foram utilizadas técnicas de análise exploratória e aprendizado de máquina supervisionado (Catboost, Random Forest, SVM e XGBoost). O projeto faz parte de uma disciplina sobre Inteligência Artificial no programa de Pós-Graduação em Ciência de Dados na Saúde, USF.

O avanço das tecnologias de inteligência artificial e aprendizado de máquina tem possibilitado novas abordagens na análise de dados em saúde, permitindo identificar padrões, prever riscos e apoiar a tomada de decisões baseadas em evidências. No contexto materno-infantil, essas técnicas já são aplicadas para prever partos prematuros, mortalidade neonatal e complicações gestacionais. A utilização dessas ferramentas em bases nacionais, como o DATASUS, pode fortalecer a vigilância epidemiológica e a identificação de fatores associados à mortalidade por sífilis congênita.

Participantes: Natália Teixeira, Pollyana Cardoso Martins, Lais Padovan e Lucas Miguel de Carvalho 


# Objetivo

Analisar o perfil epidemiológico da sífilis congênita no Brasil entre 2013 e 2023, utilizando dados do DATASUS e aplicando métodos de aprendizado de máquina para identificar fatores preditores de óbitos, contribuindo para a formulação de estratégias de prevenção e redução de mortes evitáveis relacionadas à infecção.

# Materiais e Métodos

1 - Aquisição Dataset

Os dados utilizados neste estudo foram obtidos a partir do Sistema de Informação de Agravos de Notificação (SINAN), disponibilizado pelo Departamento de Informática do Sistema Único de Saúde (DATASUS), por meio do endereço eletrônico http://tabnet.datasus.gov.br/cgi/tabcgi.exe?sinannet/cnv/sifilisbr.def.

Foram baixados os arquivos no formato DBC referentes aos anos de 2013 a 2023, nomeados de SIFCBR13.dbc a SIFCBR23.dbc. A leitura e junção desses arquivos foram realizadas no ambiente R, utilizando o script script_ler_dbcs.R, resultando em um único arquivo consolidado denominado dados_limpos.csv, contendo 251659 observações e 64 variáveis.

O conjunto de dados reúne informações sobre casos notificados de sífilis congênita no Brasil, abrangendo variáveis clínicas e epidemiológicas. Entre elas, destacam-se:

4: ANT_IDADE: Idade da mãe, por ocasião da notificação do caso. 
5: ANT_RACA: 1 – branca 2 – preta 3 – amarela 4 – parda 5 – indígena 9 – ignorado
6: ESCOLMAE: Escolaridade da mãe no momento da notificação do caso.
7: ANT_PRE_NA: Informa se a mãe realizou pré-natal durante a gravidez do caso notificado.
8: ANTSIFIL_N: 1. durante o pré-natal 2. no momento do parto/curetagem 3. após o parto 4. não realizado    9. ignorado.
9: TRA_ESQUEM: 1. adequado 2. inadequado 3. não realizado 9. Ignorado
10: ANT_TRATAD: Informa sobre tratamento para sífilis do(s) parceiro(s) da mãe do caso notificado.
11: TRA_DIAG_T: Diagnóstico de alterações ósseas observáveis ao Rx, tais como osteocondrite, osteoartrite, periostite (diafisite produtiva), rarefação óssea, tíbia em “lâmina de sabre”.
12: TRA_ESQU_1: Esquema terapêutico utilizado para o tratamento da sífilis congênita do caso notificado, ao nível hospitalar ou ambulatorial. A Penicilina Cristalina é administrada por via intravenosa, e as Penicilinas Procaína e Benzatina administradas por via intramuscular.
13: CLI_ICTERI: Presença de icterícia ao exame físico da criança.
14: CLI_RINITE: Presença de rinite muco-sanguinolenta observada ao exame físico da criança.
15: CLI_ANEMIA: Presença de anemia ao exame físico da criança.
16: CLI_ESPLEN: Presença de baço aumentado de tamanho ao exame físico da criança.
17: HEPATO: Presença de fígado aumentado de tamanho ao exame físico da criança.
18: CLI_OSTEO: Presença de lesões osteoarticulares dolorosas à manipulação da criança.
19: LESOES: Presença de: lesões bolhosas e/ou descamativas; lesões papulares ou manchas generalizadas de pele, incluindo palma das mãos e planta dos pés; fissuras ao redor dos orifícios naturais da criança.
20: CLI_PSEUDO: Presença de “paralisia” antálgica, observada principalmente à manipulação da criança, como nas trocas de fraldas.

# Resultados e Discussão

1 - Análise Descritiva

Quantidade de casos e óbitos no Brasil

=== Tabela: Casos e Óbitos em mil por Sífilis Congênita ===

 NU_ANO  casos  obitos  taxa_obitos
   2013  14111     232        16.44
   2014  16428     290        17.65
   2015  19800     371        18.74
   2016  21421     303        14.14
   2017  25374     368        14.50
   2018  26874     362        13.47
   2019  25587     327        12.78
   2020  23056     252        10.93
   2021  27186     341        12.54
   2022  26512     345        13.01
   2023  25310     312        12.33

2 - Modelos de Machine Learning

2.1 - Limpeza dos dados

Para rodar os modelos de machine learning, temos as seguintes etapas de limpeza, que deixa somente as variáveis que se relacionam com o desfecho e fazem sentido para o estudo.

Etapa 1: Retirar todas as colunas que representam data
Identificar colunas que começam com 'DT'

Etapa 2: Retirar as colunas que representam dados laboratoriais porque com certeza estarão relacionados com o desfecho
Identificar colunas que começam com 'LAB'

Etapa 3: Remover as colunas que começam com 'ID'
Identificar Colunas que começam com "ID"

Etapa 4: Remover as colunas que não fazem sentido de serem consideradas

Etapa 5: Remover as variáveis de localização geográfica do pré-natal


2.2 Balanceamento de dados

Foi utilizada a técnica de Undersampling para seleção das amostras por conta de termos o óbito por sífilis congênita como um evento raro.


2.3 Divisão dos dados em Treino e teste

2.3.1 Geral - 70% treino e 30% teste

2.3.2 Longitudinal - 2013-2021 treino e 2022-2023 teste




2.4 Modelos de Machine Learning



2.3.1 Catboost

2.3.2 Random Forest

2.3.3 Support Vector Machine (SVM)

2.3.4 XGboost




2.5 Avaliação de métricas


