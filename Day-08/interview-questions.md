# Azure Networking Interview Q&A

### What is the difference between NSG and ASG ?
NSGs define rules for controlling traffic within a virtual network and between subnets based on IP addresses and port numbers. ASGs are associated with application groups and simplify security management by grouping VMs based on their application roles. In real-world scenarios, NSGs and ASGs are combined to enhance network security.<br><br>
For example, you can use NSGs to control traffic between subnets and then use ASGs to apply specific security rules to groups of VMs within those subnets based on their application roles. ASGs are applied to VMs and used alongside NSGs. By associating an ASG tag with a network security rule, you can define rules that apply to a group of VMs sharing the same tag. This simplifies security policy management for multi-tier applications.


### How can you block the access to a your vm from a subnet ?
The traffic between subnets within the same Virtual Network (VNet) is allowed by default due to a default NSG rule i.e., "AllowVnetInBound." This rule has a priority of 65000. To block traffic between specific subnets, we need to create a custom Deny rule with a priority number lower than 65000. 
<br><br>
By doing so, this rule will be processed before the default "AllowVnetInBound" rule, effectively blocking traffic between the specified subnets. 

### Are Azure NSGs stateful or stateless ?
Stateful security refers to the ability of a firewall or security system to track the state of active connections and make decisions based on the context of those connections, while in stateless security, no information about the state of connections is maintained. Each packet is evaluated independently based solely on the rules defined in the security policy.
<br><br>
NSGs in Azure operate in a stateful manner. When you define an NSG rule to allow traffic from a specific source to a destination, the NSG automatically tracks the state of connections and permits return traffic related to established connections without the need for explicit rules.
<br><br>
Example: If you host a host an application on port 80 in azure vm and allow inbound traffic for customers to access it. You don’t need to open port 80 in outbound traffic to send response back to the customer.

### What is the difference between Azure Firewall and NSG ?
Firewall:
Designed for controlling both outbound and inbound traffic to and from resources within a Virtual Network (VNet).

NSG:
Typically associated with subnets or individual network interfaces to control traffic within a VNet and between VNets.

### What are the advantages of resource groups in azure ?
- **Logical Organization:** Resource groups provide a way to logically organize and group related Azure resources together that are associated with a particular application, project, or environment.
- **Lifecycle Management:** You can manage the lifecycle of all resources within a resource group together, including deployment, updating, and deletion.
- **Resource Group Tagging:** Tags provide additional context and organization for resources, making it easier to categorize, track, and manage them based on specific attributes or criteria.
- **Role-Based Access Control (RBAC):** It allows you to control access to all resources within a group based on roles and permissions.
- **Cost Management:** You can view and track the costs associated with resources within a resource group, making it easier to monitor and optimize your Azure spending.
- **Resource Group Templates (Azure Resource Manager Templates):** Azure Resource Manager (ARM) templates allow you to define and deploy resource groups and their associated resources in a declarative manner.
- **Resource Locks:** By applying locks at the resource group level, you can protect critical resources from unintended changes, ensuring their availability and integrity.

### What is the difference between Azure User Data and Custom Data ?
User data is a new version of custom data and it offers added benefits. User data persists and lives in the cloud, accessible and updatable anytime. Custom data vanishes after first boot, accessible only during VM creation.

### What is the difference between Azure App Gateway and Azure LB ?

#### Azure Application Gateway:
Operates at Layer 7 (Application layer) of the OSI model.
Provides advanced application-level routing, SSL termination, and web application firewall (WAF) capabilities.
Suited for distributing traffic based on application awareness.

#### Azure Load Balancer:
Operates at Layer 4 (Transport layer) of the OSI model.
Distributes network traffic based on IP address and port.
Suitable for generic TCP/UDP load balancing without application-specific features.

### Assume your company is using all the ideal Azure Networking setup and your application is deployed in the web subnet , Explain the traffic flow to your app ?

#### User Access:
- External users access the application over the internet.
- DNS resolves the application's domain name to the associated public IP address.

#### Internet Traffic to Azure:
-Incoming internet traffic reaches Azure through Azure Front Door, Azure Application Gateway, or Azure Load Balancer, depending on the specific requirements of the application.
- These services provide load balancing, SSL termination, and other application-level features.

#### Traffic Routing Within Azure:
- Traffic is directed to the public IP address associated with the Azure Application Gateway or Load Balancer.
- The gateway or load balancer routes traffic to the backend pool of the web servers in the web subnet.

#### Network Security Group (NSG) Enforcement:
- Network Security Groups associated with the web subnet control inbound and outbound traffic.
- NSG rules ensure that only required traffic is allowed, providing security at the network layer.
- Azure Virtual Network (VNet) Components:
- The web subnet is part of an Azure Virtual Network, which acts as an isolated network environment.
- Subnets within the VNet communicate with each other through the VNet's internal routing.

#### Application Servers:
- Web servers within the web subnet process incoming requests

### Describe the purpose of Azure Bastion and when it is used for secure remote access to virtual machines.

Azure Bastion provides secure RDP and SSH access to Azure VMs directly from the Azure Portal, eliminating the need for public IP addresses or VPNs. It enhances security and simplifies remote access.
<br>
Key Advantages are: 
- Secure Remote Access:
- Elimination of Public Internet Exposure:
- Reduced Attack Surface:
- Azure Bastion Integration:
- Simplified Connectivity:
- Azure Portal-Based Access:
- Role-Based Access Control (RBAC):
- Multi-Factor Authentication (MFA):
- Audit and Monitoring:
