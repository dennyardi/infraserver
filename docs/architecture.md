# Architecture

```text
                GitHub
                   │
                   ▼
        Infraserver Repository
                   │
                   ▼
            bootstrap.sh
                   │
        ┌──────────┴──────────┐
        ▼                     ▼
  Security Setup      Runtime Installation
        │                     │
        └──────────┬──────────┘
                   ▼
              Golden VPS
                   │
                   ▼
                 vpsctl
                   │
                   ▼
          Deploy Application
```

## Deployment Flow

GitHub → Bootstrap → VPS → Deploy Application