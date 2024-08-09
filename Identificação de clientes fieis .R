#3. Identificação de Clientes Fiéis
#Agora vamos identificar quais clientes são "fiéis" a uma loja, ou seja, aqueles que compram frequentemente a mesma marca:

# Calcular o número de compras por cliente e por marca
compras_por_cliente_marca <- data %>%
  group_by(Cliente, Marca) %>%
  summarise(NumCompras = n(), .groups = 'drop')

# Calcular a proporção de compras por marca para cada cliente
proporcao_compras <- compras_por_cliente_marca %>%
  group_by(Cliente) %>%
  mutate(Proporcao = NumCompras / sum(NumCompras))

# Determinar a marca mais comprada por cada cliente
fidelidade_cliente <- proporcao_compras %>%
  summarise(MarcaFrequente = Marca[which.max(Proporcao)],
            ProporcaoFrequente = max(Proporcao))

# Adicionar ao conjunto de dados a informação se o cliente é "fiel" ou não
data <- data %>%
  left_join(fidelidade_cliente, by = "Cliente") %>%
  mutate(Fiel = ifelse(ProporcaoFrequente > 0.5, "Sim", "Não"))

# Exibir as primeiras linhas do novo conjunto de dados
head(data)
