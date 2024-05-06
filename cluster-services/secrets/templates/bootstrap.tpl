---
apiVersion: v1
kind: Namespace
metadata:
  name: op
  labels:
    name: op
    app.kubernetes.io/component: connect

---
apiVersion: v1
kind: Secret
metadata:
  name: op-credentials
  namespace: op
  labels:
    app.kubernetes.io/component: connect
type: Opaque
stringData:
  your_credentials_key: |
    op://homelab/op-connect/notesPlain
---
apiVersion: v1
kind: Secret
metadata:
  name: onepassword-token
  namespace: op
  labels:
    app.kubernetes.io/component: operator
    app.kubernetes.io/instance: connect
    app.kubernetes.io/name: connect
type: Opaque
stringData:
  token: "op://homelab/op-connect/onepassword-token"
