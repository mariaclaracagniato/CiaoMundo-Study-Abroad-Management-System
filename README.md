# 🌍 CiaoMundo - Plataforma de Intercâmbio

> Plataforma web para auxiliar estudantes brasileiros na busca por bolsas de estudo internacionais, reunindo filtros personalizados, simulação de custos e ferramentas de planejamento em um só lugar.

---

## 👩‍💻 Minha contribuição

Atuei principalmente no **frontend** do projeto, sendo responsável por:

- Construção e estruturação das interfaces com HTML, CSS e JavaScript
- Implementação da navegação e experiência do usuário
- Integração com o backend

---

## 🚀 Tecnologias utilizadas

| Camada | Tecnologias |
|---|---|
| Frontend | HTML5, CSS3, JavaScript |
| Backend | Node.js, Express |
| Banco de Dados | MySQL |

---

## ⚙️ Como rodar o projeto

### 1. Clonar o repositório
```bash
git clone https://github.com/mariaclaracagniato/CiaoMundo-Study-Abroad-Management-System.git
cd CiaoMundo-Study-Abroad-Management-System
```

### 2. Instalar dependências
```bash
npm install
```

### 3. Configurar o banco de dados
- Crie um banco chamado `sistema_bolsas`
- Importe o arquivo `.sql` disponível no repositório

### 4. Configurar variáveis de ambiente

Crie um arquivo `.env` com base no `.env.example`:
```env
DB_HOST=localhost
DB_USER=seu_usuario
DB_PASSWORD=sua_senha
DB_NAME=sistema_bolsas
PORT=3000
JWT_SECRET=sua_chave
```

### 5. Executar o projeto
```bash
npm start
```

### 6. Acessar no navegador
```
http://localhost:3000
```

---

## 🧠 Funcionalidades

- 🔍 Visualização e filtro de bolsas por país, curso e universidade
- 🔐 Sistema de login e cadastro
- 💰 Simulação de custos
- ⭐ Favoritar bolsas
- 🛠️ Área administrativa

---

## 📸 Preview

![Home](https://raw.githubusercontent.com/mariaclaracagniato/CiaoMundo-Study-Abroad-Management-System/main/images/home.png)
![Documentos](https://raw.githubusercontent.com/mariaclaracagniato/CiaoMundo-Study-Abroad-Management-System/main/images/docs.png)
![Notificações](https://raw.githubusercontent.com/mariaclaracagniato/CiaoMundo-Study-Abroad-Management-System/main/images/notificacoes.png)
![Bolsas](https://raw.githubusercontent.com/mariaclaracagniato/CiaoMundo-Study-Abroad-Management-System/main/images/bolsas.png)