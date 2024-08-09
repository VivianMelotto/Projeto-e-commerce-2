#4. Teste de Hipótese
#Vamos testar a hipótese de que clientes fiéis compram mais da mesma marca do que os clientes não fiéis. Para isso, realizaremos um teste t:

# Calcular o total de compras por cliente
compras_totais <- data %>%
  group_by(Cliente, Fiel) %>%
  summarise(TotalCompras = sum(ValorCompra), .groups = 'drop')

# Realizar o teste t para comparar as médias
teste_t <- t.test(TotalCompras ~ Fiel, data = compras_totais)

# Exibir os resultados do teste t
print(teste_t)
