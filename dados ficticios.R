#2. Geração dos Dados Fictícios
#Agora, vamos gerar um conjunto de dados fictício com 100 clientes, 5 marcas e 500 compras. Cada compra será registrada com o cliente que a fez, a marca comprada e o valor da compra.

# Definir um seed para reprodutibilidade
set.seed(123)

# Número de clientes, marcas e compras
n_clients <- 100
n_brands <- 5
n_purchases <- 500

# Gerar os nomes dos clientes e marcas
clientes <- paste("Cliente", 1:n_clients)
marcas <- paste("Marca", 1:n_brands)

# Gerar dados de compras com cliente, marca e valor da compra
data <- data.frame(
  Cliente = sample(clientes, n_purchases, replace = TRUE),  # Cliente que fez a compra
  Marca = sample(marcas, n_purchases, replace = TRUE),      # Marca comprada
  ValorCompra = runif(n_purchases, min = 100, max = 1000)   # Valor da compra (entre 100 e 1000)
)

# Exibir as primeiras linhas dos dados para verificar
head(data)
