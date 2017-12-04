#!/bin/sh

cat > /root/.gitrobrc <<EOF
---
github_access_tokens:
- ${GITHUB_API_KEY}
sql_connection_uri: postgres://gitrob:gitrob@postgres:5432/gitrob
EOF

gitrob server --bind-address "0.0.0.0"