### What is Microsoft Entra ID?
Microsoft Entra ID is Microsoft's cloud-based identity and access management service. With Microsoft Entra ID, you control the identity accounts, but Microsoft ensures that the service is available globally.

### Authentication
This process involves verifying the identity of a user, ensuring they are who they claim to be. With Microsoft Enterprise ID, authentication typically involves providing a username (often an email address) and a password or Multi-factor Authentication.

### Authorization
After a user's identity is authenticated, authorization comes into play. Authorization determines what actions and resources the authenticated user is allowed to access. This is often managed through roles, permissions, and access control lists (ACLs).

### Roles and Groups for User Access
Azure provides a role-based access control (RBAC) system where permissions are assigned to users, groups, or applications at a certain scope. Roles define a set of permissions, while groups allow you to manage access for multiple users collectively. By assigning appropriate roles to users or groups, you can control their access to Azure resources and services. 
<br><br>For example, you might have roles like Owner, Contributor, Reader, or custom roles tailored to specific needs. By adding users to these roles or groups, you grant them permissions to perform actions on resources.

### Managed Identities
Azure creates and manages the identity for the resource (either system-assigned or user-assigned), and you can grant this identity access to other Azure resources. For example, if you have an Azure virtual machine (VM) that needs to access an Azure SQL Database, you can assign a managed identity to the VM and grant it appropriate permissions on the database. This eliminates the need to manage credentials manually.
