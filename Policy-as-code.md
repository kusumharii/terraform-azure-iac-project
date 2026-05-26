## Policy-as-Code (OPA Integration)

This project also demonstrates Policy-as-Code using Open Policy Agent (OPA) with Rego policies for infrastructure governance and security validation.

Implemented Policies:

- Deny public access to Azure Storage Accounts
- Restrict oversized Azure Virtual Machine deployments

Policy files are stored inside:

```plaintext
policies/
├── storage-policy.rego
└── vm-size-policy.rego
```

---

### 1. Install Open Policy Agent (OPA)

Download OPA from the official website:

https://www.openpolicyagent.org/docs/latest/#1-download-opa

After downloading:

1. Rename the executable to:

```plaintext
opa.exe
```

2. Place it inside a folder such as:

```plaintext
C:\Tools\OPA
```

3. Add the folder path to Windows Environment Variables.

Verify installation using:

```bash
opa version
```

---

### 2. Validate Rego Policies Using OPA

Navigate to the Terraform project folder and run:

```bash
opa eval -d policies "data"
```

This command evaluates all Rego policy files inside the `policies/` directory.

Successful execution confirms:

- OPA integration is working
- Rego policies are valid
- Infrastructure governance rules are successfully evaluated

Example successful output:

```json
"deny": []
```

which indicates that no policy violations were detected.

