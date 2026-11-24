# Tailscale Toggle para XFCE (Linux Mint / Ubuntu)

Aplicativo leve e indicador de painel para ativar e desativar a VPN **Tailscale** com um clique no ambiente **XFCE** (testado no Linux Mint 22.3 XFCE).

## Funcionalidades

- **Ícone dinâmico no painel (`genmon`):** Muda de cor automaticamente entre verde (conectado) e cinza (desconectado).
- **Alternância instantânea:** Liga ou desliga o Tailscale sem pedir senha a cada clique.
- **Janela gráfica (Zenity):** Ao abrir pelo Menu Iniciar, exibe o status atual, o IPv4 do Tailscale e botões rápidos de ação.
- **Configuração automática:** O instalador `.deb` configura `/etc/sudoers.d/tailscale-toggle` com segurança durante a instalação e remove tudo na desinstalação.

## Instalação Rápida (via pacote `.deb`)

1. Baixe o arquivo `tailscale-toggle_1.1_all.deb` na seção **[Releases](../../releases)** deste repositório.
2. Instale pelo terminal (ou com duplo clique usando o GDebi):
   ```bash
   sudo apt install ./tailscale-toggle_1.1_all.deb
   ```

## Configuração no Painel do XFCE

1. Clique com o botão direito no painel → **Painel** → **Adicionar novos itens**.
2. Procure por **Monitor Genérico** (*Generic Monitor*) e clique em **Adicionar**.
3. Clique com o botão direito no novo item no painel → **Propriedades**:
   - **Comando:** `tailscale-toggle`
   - **Rótulo:** Desmarque a caixa de seleção
   - **Período (s):** `2,00`
4. Reinicie o painel para aplicar imediatamente:
   ```bash
   xfce4-panel -r
   ```

## Como compilar o `.deb` a partir do código-fonte

```bash
git clone https://github.com
cd tailscale-toggle-xfce
./build.sh
```
