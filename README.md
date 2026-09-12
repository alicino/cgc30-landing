# cgc30.com — Site Oficial

Site oficial do Capítulo Grande Campinas nº 30 da Ordem DeMolay.

- **Domínio**: `cgc30.com` (arquivo `CNAME` na raiz), com Cloudflare como proxy/DNS.
- **Hospedagem**: GitHub Pages, servindo os arquivos estáticos diretamente da raiz deste repositório (branch `main`).
- **Origem do conteúdo**: este site é gerado a partir do repositório de desenvolvimento [`cgc30-site`](https://github.com/alicino/cgc30-site) (React + Vite). Os arquivos aqui na raiz (`index.html`, `assets/`, `docs/`, `images/`, etc.) são o **build de produção** desse repositório — não devem ser editados manualmente.
- **`404.html`**: cópia de `index.html`, usada como fallback de SPA (necessário para as rotas internas do React Router funcionarem em recarregamentos e links diretos no GitHub Pages).
- **`.nojekyll`**: desativa o processamento Jekyll do GitHub Pages, garantindo que todos os arquivos do build sejam servidos como estão.

## Como atualizar o site

1. Faça as alterações e gere o build no repositório `cgc30-site` (`npm run build`).
2. Substitua os arquivos na raiz deste repositório pelo novo conteúdo de `dist/client/` (mantendo `CNAME`, `.nojekyll` e a pasta `v1/`).
3. Copie `index.html` para `404.html`.
4. Commit e push para `main`.

## Pasta `v1/`

Contém o conteúdo integral do site anterior (landing page de pré-lançamento e contagem regressiva, usada até a migração para o site oficial completo), preservado como arquivo histórico. Não faz parte do site publicado atualmente.
