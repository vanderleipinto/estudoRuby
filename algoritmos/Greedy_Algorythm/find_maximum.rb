def max_sum(pilha1, pilha2, pilha3, n1, n2, n3)
  sum1 = pilha1.sum
  sum2 = pilha2.sum
  sum3 = pilha3.sum

  top1 = 0
  top2 = 0
  top3 = 0
  ans = 0

  loop do
    # Se alguma pilha estiver vazia
    return 0 if top1 == n1 || top2 == n2 || top3 == n3

    # Se a soma de todas as três pilhas for igual
    return sum1 if sum1 == sum2 && sum2 == sum3

    # Encontrar a pilha com a soma máxima e remover seu elemento superior
    if sum1 >= sum2 && sum1 >= sum3
      sum1 -= pilha1[top1]
      top1 += 1
    elsif sum2 >= sum1 && sum2 >= sum3
      sum2 -= pilha2[top2]
      top2 += 1
    elsif sum3 >= sum2 && sum3 >= sum1
      sum3 -= pilha3[top3]
      top3 += 1
    end
  end
end

# Código de teste
pilha1 = [3, 2, 1, 1, 1]
pilha2 = [4, 3, 2]
pilha3 = [1, 1, 4, 1]

n1 = pilha1.length
n2 = pilha2.length
n3 = pilha3.length

puts max_sum(pilha1, pilha2, pilha3, n1, n2, n3)
