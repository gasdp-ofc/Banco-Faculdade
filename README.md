echo "# Banco de Dados Acadêmico" > README.md
echo "### 📌 Projeto para Faculdade" >> README.md
echo "Este repositório contém a estrutura do banco de dados para a organização acadêmica, incluindo alunos, professores, disciplinas e notas." >> README.md
echo "## 📁 Estrutura do Projeto" >> README.md
echo "- 📜 queries.sql → Arquivo SQL com a modelagem física do banco de dados." >> README.md
echo "## 🚀 Como Usar" >> README.md
echo "1. Clone o repositório: \`git clone https://github.com/gasdp-ofc/Banco-Faculdade.git\`" >> README.md
echo "2. Importe o arquivo \`queries.sql\` para o seu banco de dados MySQL." >> README.md
echo "3. Execute as consultas para criar as tabelas e relacionamentos." >> README.md
echo "## 📧 Contato" >> README.md
echo "Dúvidas? Entre em contato através do GitHub ou pelo e-mail institucional." >> README.md

# Adicionar o README ao repositório
git add README.md
git commit -m "Adicionando README com descrição do projeto"
git push origin main

