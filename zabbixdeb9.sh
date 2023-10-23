# Lógica de instalação do Agente Zabbix no Debian 9
echo "Instalando o Agente Zabbix no Debian 9..."

# Adicionar o repositório do Zabbix e atualizar o sistema no Debian 9
echo "Adicionando o repositório do Zabbix e atualizando o sistema no Debian 9..."
wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian9_all.deb
dpkg -i zabbix-release_6.4-1+debian9_all.deb
apt update

# Instalar o Agente Zabbix 2 e seus plugins
echo "Instalando o Agente Zabbix 2 e seus plugins no Debian 9..."
apt install zabbix-agent2

# Iniciar o serviço do Agente Zabbix 2
echo "Iniciando o serviço do Agente Zabbix 2..."
systemctl start zabbix-agent2

# Habilitar o serviço para iniciar automaticamente na inicialização do sistema
echo "Habilitando o serviço para iniciar automaticamente na inicialização do sistema..."
systemctl enable zabbix-agent2