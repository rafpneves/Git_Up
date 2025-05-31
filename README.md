Git Manager Script v1.3 🚀
Git Manager Banner
Version
License

<!-- **About** -->
✨ Sobre o Projeto
Um script interativo em Bash para gerenciar projetos Git com interface colorida e operações essenciais. Ideal para desenvolvedores que querem agilizar seu fluxo de trabalho com Git.

<!-- **Features** -->
🔥 Funcionalidades
🎨 Interface colorida interativa

📦 Inicialização rápida de repositórios Git

🗑️ Remoção segura da configuração .git

🔄 Atualização simplificada de projetos

⚙️ Configuração global de usuário e email

🔧 Suporte a branches main/master

✔️ Feedback visual claro para todas as operações

<!-- **Installation** -->
📦 Instalação
Baixe o script:

bash
wget https://raw.githubusercontent.com/seu-usuario/git-manager/main/git_manager.sh
Dê permissão de execução:

bash
chmod +x git_manager.sh
Execute:

bash
./git_manager.sh
<!-- **Usage** -->
🖥 Como Usar
Execute o script

Selecione uma opção do menu:

           [01] Permissão a pasta                      
           [02] Apagar a linha de tempo .git           
           [03] Iniciar uma linha de tempo             
           [04] Atualizar projeto add .                
           [05] Atualizar email de acesso
Siga as instruções interativas

<!-- **Options** -->
📋 Opções Detalhadas
Opção	Comando	Descrição
01	1_Permissao	Ajusta permissões da pasta
02	2_apaga_git	Remove completamente o diretório .git
03	3_inicio_git	Inicia novo repositório Git
04	4_atualiza_git	Atualiza projeto existente
05	5_emailG	Configura email e usuário Git global
<!-- **Requirements** -->
⚙️ Requisitos
Bash 4.0+

Git instalado

Permissões de sudo (para algumas operações)

Terminal que suporte cores ANSI

<!-- **Troubleshooting** -->
🐛 Solução de Problemas
Erro: "Permission denied"
bash
sudo chmod +x git_manager.sh
Erro: "command not found"
Certifique-se que o Git está instalado:

bash
sudo apt install git  # Para Debian/Ubuntu
Cores não aparecem
Verifique se seu terminal suporte cores ANSI

<!-- **Roadmap** -->
🗺 Roadmap
Adicionar verificação de dependências

Implementar sistema de logs

Adicionar suporte a Windows

Criar sistema de backup automático

<!-- **Contributing** -->
🤝 Como Contribuir
Faça um Fork do projeto

Crie sua Branch (git checkout -b feature/NovaFeature)

Commit suas mudanças (git commit -m 'Add NovaFeature')

Push para a Branch (git push origin feature/NovaFeature)

Abra um Pull Request

<!-- **License** -->
📄 Licença
Distribuído sob a licença MIT. Veja LICENSE para mais informações.
