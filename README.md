# Classificador de Triângulos em Assembly MIPS

Projeto acadêmico para praticar programação em Assembly MIPS,
utilizando registradores, operações aritméticas e desvios condicionais.

## Funcionalidades

- Leitura de três lados inteiros.
- Rejeição de lados menores ou iguais a zero.
- Verificação das condições de existência de um triângulo.
- Classificação em equilátero, isósceles ou escaleno.
- Opção de verificar outro conjunto de lados.

## Exemplos

| Lado A | Lado B | Lado C | Resultado esperado |
|---|---|---|---|
| 5 | 5 | 5 | Equilátero |
| 5 | 5 | 3 | Isósceles |
| 3 | 4 | 5 | Escaleno |
| 1 | 2 | 3 | Não forma triângulo |
| 0 | 4 | 5 | Não forma triângulo |

## Conceitos praticados

- Segmentos .data e .text.
- Registradores para armazenamento e processamento.
- Entrada e saída com syscall.
- Comparações e desvios condicionais.
- Controle de fluxo com rótulos e saltos.

## Arquivo

- mips1.asm: código-fonte do programa.

## Limitações da versão atual

- Recebe apenas valores inteiros.
- Valores positivos muito grandes podem gerar resultados incorretos
  devido ao limite de 32 bits nas somas e às comparações com sinal.
- Na pergunta de repetição, 1 continua e qualquer outro inteiro encerra.

## Autor

João Lucas Mota — estudante de Ciência da Computação na UNIFOR.
