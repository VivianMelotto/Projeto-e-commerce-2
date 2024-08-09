#5. Visualização dos Resultados
#Finalmente, vamos visualizar os resultados com um boxplot, comparando o total de compras entre clientes fiéis e não fiéis:

# Criar um boxplot para visualizar as compras de clientes fiéis e não fiéis
ggplot(compras_totais, aes(x = Fiel, y = TotalCompras, fill = Fiel)) +
  geom_boxplot() +
  labs(title = "Comparação de Compras entre Clientes Fiéis e Não Fiéis",
       x = "Fidelidade", y = "Total de Compras") +
  theme_minimal()
