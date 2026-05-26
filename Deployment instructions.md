  Deployment Steps

1. Install Terraform

Download and install Terraform from the official HashiCorp website:

https://developer.hashicorp.com/terraform/downloads

After installation, verify Terraform installation using:

```bash
terraform -version
```

---

### 2. Install Azure CLI

Download and install Azure CLI from:

https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

Verify installation using:

```bash
az version
```

---

### 3. Login to Azure Account

Authenticate Terraform with Microsoft Azure using Azure CLI:

```bash
az login
```

---

### 4. Clone or Open the Project

Open the Terraform project folder in Visual Studio Code.

Project structure includes:

```plaintext
modules/
├── compute/
├── database/
├── network/
└── storage/
```

---

### 5. Initialize Terraform

Initialize Terraform and download required provider plugins:

```bash
terraform init
```

This step installs Azure provider dependencies and initializes modules.

---

### 6. Validate Terraform Configuration

Validate Terraform files for syntax and configuration errors:

```bash
terraform validate
```

---

### 7. Review Execution Plan

Generate execution plan before deployment:

```bash
terraform plan
```

This displays all Azure resources that Terraform will create.

---

### 8. Deploy Infrastructure

Deploy the infrastructure to Microsoft Azure:

```bash
terraform apply
```

Type:

```plaintext
yes
```

to confirm deployment.

Terraform then creates:

- Resource Group
- Virtual Network (VNet)
- Subnet
- Route Table
- Network Interface
- Linux Virtual Machine
- Storage Account
- Azure SQL Database

---

### 10. Verify Resources in Azure Portal

Open Azure Portal:

https://portal.azure.com

Navigate to the created Resource Group and verify deployed resources.

---

### 11. Install Open Policy Agent (OPA)

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

### 12. Validate Rego Policies Using OPA

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

---

### 10. Destroy Infrastructure (Optional)

To avoid Azure credit usage, destroy resources after testing:

```bash
terraform destroy
```

Type:

```plaintext
yes
```

to confirm resource deletion.

