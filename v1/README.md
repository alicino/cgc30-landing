# cgc30-landing (Cloudflare Pages)

Site estático do **cgc30.com** publicado via **Cloudflare Pages** integrado ao GitHub (sem Wrangler).

## Repo Structure
```
cgc30-landing/
├─ index.html
├─ assets/
│  ├─ brasao_demolay.png
│  ├─ styles.css
│  └─ script.js
├─ .gitignore
├─ Makefile
└─ README.md
```

## 1) Passos iniciais
1. Crie um repositório no GitHub e suba estes arquivos.
2. No painel da Cloudflare > **Pages** > **Create project** > **Connect to Git** > selecione o repo.
3. Build command: _deixe em branco_ (site estático). Output directory: `/`.
4. Finalize e aguarde o 1º deploy (URL `https://<projeto>.pages.dev`).

## 2) Domínio e DNS
- Adicione **Custom domain**: `cgc30.com` dentro do projeto Pages (Production custom domain).
- Na zona DNS da Cloudflare: crie `cgc30.com` como **CNAME** para `<projeto>.pages.dev` (Proxy: ON).
- Redirecione `www.cgc30.com` → `https://cgc30.com` usando **Redirect Rule** (ou Bulk Redirects).
- SSL/TLS: **Full (strict)**, **Always use HTTPS: ON**.

## 3) Publicação
- Qualquer `git push` na branch `main` dispara um deploy de **Production**.
- Branches/PRs criam **Preview Deployments** (com URL própria `.pages.dev`).

## 4) Testes e validações
- Teste local: `make preview` (abre um servidor local em `http://localhost:8080`).
- Faça um commit de teste: `make go-live MSG="feat: primeiro deploy"`.
- Verifique o status e logs no painel do Pages. Valide HTTPS no domínio `cgc30.com`.

## 5) Cache/Performance (opcional)
- **Cache Rules**: curto para HTML (5–10 min), longo para assets (`/assets/*`).
- Desativar Rocket Loader para evitar interferência em JS simples.

## 6) Próximos passos
- Substituir `assets/brasao_demolay.png` por uma versão final, se necessário.
- Editar `index.html` com o conteúdo definitivo.
