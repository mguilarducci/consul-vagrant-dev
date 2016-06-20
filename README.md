consul-vagrant-dev
---

O objetivo desse projeto é simular um cluster do consul no vagrant de forma fácil.

# Uso

```bash
git clone
cd consul-vagrant-dev
vagrant up [node]
```

# Nodes

## consul_server_bootstrap

Servidor com a configuração de bootstrap.

## consul_server_one e consul_server_two

Servidores consul.

## consul_client_ui

Client com consul ui com url de acesso http://192.168.22.13:8500/ui

## service_node_one e service_node_two

Clients com serviço express rodando.

# TODO

- Automatizar o startup do consul nas máquinas.
- Automatizar o startup do express nas máquinas.
- Automatizar a instalação do node nas máquinas.
- Upstart.
