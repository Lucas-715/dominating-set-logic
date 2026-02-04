# 🧠 Logic Project: Dominating Set Problem ($k=3$)

🔗 **Universidade Federal do Ceará (UFC)** - Campus Russas  
🎓 **Disciplina:** Lógica para Computação (2025.2)  
👥 **Equipa:** Lucas Almeida e Ruan David  
👨‍🏫 **Professor:** Robertty Costa

Este repositório contém a modelagem lógica e a resolução do problema do **Conjunto Dominante** em grafos, utilizando **Lógica de Primeira Ordem (LPO)** e o provador automático de teoremas **Vampire 5.0**.

---

## 🛠️ Tecnologias e Ferramentas

![Vampire](https://img.shields.io/badge/Prover-Vampire%205.0-orange)
![LPO](https://img.shields.io/badge/Logic-First--Order-blue)
![TPTP](https://img.shields.io/badge/Syntax-TPTP-green)
![UFC](https://img.shields.io/badge/University-UFC-red)

---

## 📝 O Problema: Conjunto Dominante

Na teoria dos grafos, um subconjunto de vértices $D$ num grafo $G = (V, E)$ é um **conjunto dominante** se cada vértice em $V \setminus D$ for adjacente a pelo menos um membro de $D$. 

O objetivo deste projeto foi verificar a existência de um conjunto dominante de tamanho fixo ($k=3$) através de verificação formal automatizada.

### **Modelagem em Lógica de Primeira Ordem**
A propriedade foi modelada utilizando a seguinte fórmula de dominância para três centros ($c_1, c_2, c_3$):

$$\exists c_1, c_2, c_3 \forall x ((x=c_1 \lor x=c_2 \lor x=c_3) \lor (adj(x, c_1) \lor adj(x, c_2) \lor adj(x, c_3)))$$

---

## 🔬 Resultados e Cenários de Teste

A modelagem foi validada em cinco topologias distintas, utilizando a sintaxe **TPTP** para comunicação com o motor de inferência:

| Cenário | Descrição da Topologia | Resultado ($k=3$) | Status Vampire |
| :--- | :--- | :--- | :--- |
| **I. Grafo M** | Caminho linear de 5 vértices. | **Satisfeito** | `Theorem` |
| **II. Grafo Isolado** | 4 vértices sem arestas de conexão. | **Insatisfeito** | `Time limit` |
| **III. Grafo Triângulo** | Ciclo simples de 3 vértices ($K_3$). | **Satisfeito** | `Refutation` |
| **IV. Grafo Disperso** | Topologia desconexa com 5 vértices. | **Satisfeito** | `Refutation` |
| **V. Grafo Grande** | Instância complexa (15 vértices, 23 arestas). | **Insatisfeito** | `Refutation not found` |

---

## 🚀 Como Executar

1. Certifica-te de que tens o provador [Vampire](https://vampire.github.io/) instalado.
2. Os modelos de teste encontram-se na pasta `/models`.
3. Para executar o teste no grafo principal (instância de 15 vértices):
   ```bash
   ./vampire --time_limit 600 models/grande.p
   ```

## 📁 Estrutura do Repositório
**/models: Ficheiros .p com axiomas de simetria, fecho de domínio e a conjectura de dominância.**
**/docs: Relatório técnico completo (PDF) com a fundamentação teórica e análise de resultados.**
* [/docs](docs/): [Relatório técnico completo (PDF)](docs/Relatorio_Conjunto_Dominante.pdf)

---

##🎓 Autores
* [Lucas de Souza Almeida](https://github.com/Lucas-715)
* [Ruan David da Silva Barros](LINK_DO_PERFIL_GITHUB_FUTURAMENTE)
