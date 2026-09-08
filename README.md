# GSF Soluções — API Docs

Documentação técnica pública da API GSF Soluções (NFS-e · NF-e · SEFAZ), publicada com [Mintlify](https://mintlify.com).

## Estrutura

```text
.
├── docs.json              # Config Mintlify (nav, tema, playground)
├── index.mdx              # Introdução
├── autenticacao.mdx
├── nfse/                  # Guia NFS-e
├── nfe/                   # Guia NF-e
├── sefaz/                 # Guia SEFAZ
├── referencia/            # Try-it (OpenAPI)
├── openapi/public.json    # Contrato do playground
├── examples/              # Payloads de exemplo
├── images/                # Logo / assets
└── start-docs.sh          # Preview local
```

## Contrato público (paths)

| Operação | Path |
| --- | --- |
| Token | `POST /api/v1/auth/token/` |
| NFS-e envio | `POST /api/v1/nfse/` |
| NFS-e consulta | `POST /api/v1/nfse/consulta/` |
| NF-e envio | `POST /api/v1/nfe/` |
| NF-e consulta | `POST /api/v1/nfe/consulta/` |
| SEFAZ XML | `POST /api/v1/nfe/sefaz/` |

## Preview local

Requer Node.js 20.17+ (recomendado 22):

```bash
bash start-docs.sh
# → http://localhost:3000
```

Validar:

```bash
source ~/.nvm/nvm.sh && nvm use 22
npx mint validate
```

## Branding

- Logo: `images/logo.png`
- Primary: `#91BA2E` · Dark: `#546B19`

## Publicar no Mintlify

1. Crie o repositório no GitHub (ex.: `iurilimagsf/gsf-api-docs`).
2. Conecte o repo no dashboard Mintlify.
3. Cada push em `main` gera o deploy da documentação.
