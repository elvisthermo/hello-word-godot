# 🎮 Hello Word Godot

Projeto desenvolvido com **Godot Engine** como estudo prático de desenvolvimento de jogos 2D, explorando movimentação de personagem, níveis, plataformas, objetos coletáveis e inimigos.

> 🚧 **Projeto em desenvolvimento**
> Este projeto tem caráter experimental e educacional, sendo utilizado para aprender e praticar conceitos de desenvolvimento de jogos com Godot.

## 📌 Sobre o projeto

O **Hello Word Godot** é um projeto de aprendizado criado para experimentar diferentes recursos da Godot Engine e construir a base de um jogo de plataforma 2D.

Entre os elementos presentes no projeto estão:

* 🧑‍🎮 Personagem controlável
* 🗺️ Sistema de níveis
* 🧱 Plataformas
* ↔️ Plataformas móveis
* 🍎 Objetos coletáveis
* 🐌 Inimigos
* 🎯 Sistema básico de movimentação
* 🏠 Cena inicial / menu
* 🌎 Estrutura para expansão de novos níveis

## 🛠️ Tecnologias

* **Godot Engine 4.7**
* **GDScript**
* **Godot Forward+**
* Física **Jolt Physics**

O projeto está configurado para utilizar uma viewport de **1280×720**, com suporte ao redimensionamento da janela.

## 🎮 Controles

| Ação                   | Tecla           |
| ---------------------- | --------------- |
| ⬅️ Mover para esquerda | `A` ou `←`      |
| ➡️ Mover para direita  | `D` ou `→`      |
| ⬆️ Pular               | `W` ou `Espaço` |

Os controles estão configurados diretamente no sistema de Input Map da Godot.

## 📂 Estrutura do projeto

```text
hello-word-godot/
│
├── assets/
│   └── Recursos gráficos e demais assets
│
├── scenes/
│   ├── main.tscn
│   ├── home.tscn
│   ├── player.tscn
│   ├── level1.tscn
│   ├── level2.tscn
│   ├── level3.tscn
│   ├── MovingPlataform.tscn
│   ├── colletables.tscn
│   ├── apple.tscn
│   └── snail.tscn
│
├── scripts/
│   └── Scripts utilizados pelo projeto
│
├── index.gd
├── project.godot
├── icon.svg
└── README.md
```

A organização atual do repositório separa principalmente **assets**, **cenas** e **scripts**, enquanto a pasta `scenes` contém os elementos principais do jogo, incluindo jogador, níveis, plataformas, coletáveis e inimigo.

## 🚀 Como executar

### 1. Clone o repositório

```bash
git clone https://github.com/elvisthermo/hello-word-godot.git
```

### 2. Entre na pasta

```bash
cd hello-word-godot
```

### 3. Abra o projeto

Abra o arquivo:

```text
project.godot
```

utilizando o **Godot Engine 4.7**.

### 4. Execute

Pressione:

```text
F6
```

para executar a cena atual ou:

```text
F5
```

para executar o projeto a partir da cena principal.

## 🧩 Cenas principais

### Player

Cena responsável pelo personagem controlável.

```text
scenes/player.tscn
```

### Levels

O projeto possui atualmente três níveis:

```text
level1.tscn
level2.tscn
level3.tscn
```

### Moving Platform

Plataforma com movimentação própria:

```text
MovingPlataform.tscn
```

### Collectables

Elementos coletáveis presentes no jogo:

```text
colletables.tscn
apple.tscn
```

### Enemy

Inimigo utilizado no projeto:

```text
snail.tscn
```

## 🎯 Objetivos de aprendizado

Este projeto está sendo utilizado para praticar conceitos importantes do desenvolvimento de jogos:

* Estruturação de projetos na Godot
* Criação e organização de cenas
* Programação utilizando GDScript
* Sistema de movimentação 2D
* Sistema de colisões
* Física de personagens
* Criação de níveis
* Objetos coletáveis
* Inimigos
* Plataformas móveis
* Organização de assets
* Gerenciamento de cenas

## 🔮 Próximos passos

Algumas funcionalidades que podem ser adicionadas futuramente:

* [ ] Sistema de vida do jogador
* [ ] Sistema de pontuação
* [ ] Mais tipos de inimigos
* [ ] Mais níveis
* [ ] Animações do personagem
* [ ] Sistema de checkpoints
* [ ] Tela de Game Over
* [ ] Sistema de menu
* [ ] Efeitos sonoros
* [ ] Música
* [ ] Melhorias nas fases
* [ ] Sistema de salvamento de progresso

## 📚 Objetivo

O principal objetivo deste projeto é servir como um laboratório para aprender **Godot + GDScript**, permitindo testar novas mecânicas e evoluir gradualmente a estrutura do jogo.

## 👨‍💻 Autor

**Elvis Thermo**

GitHub:
https://github.com/elvisthermo

## 📄 Licença

Este projeto ainda não possui uma licença de código aberto definida.

---

⭐ Se este projeto for útil para seus estudos, considere acompanhar sua evolução no GitHub.
