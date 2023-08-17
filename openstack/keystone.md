# Keystone

---

## OpenStack's Identity Service

Keystone is the OpenStack project that provides Identity, Token, Catalog, and Policy services for use specifically by projects in the OpenStack family.

It is essential for security and integration in the OpenStack ecosystem.
---

## Keystone Architecture

- **Endpoints**: URLs to access the service.
- **Tokens**: Represents authenticated users and their access.
- **Services**: Represent the internal OpenStack services.
- **Tenants/Projects**: Organizational unit in OpenStack.

---

## Keystone Endpoints

In OpenStack, services are accessed through URLs called endpoints.

- **Public**: External or public-facing access.
- **Internal**: For internal service-to-service communication.
- **Admin**: Administrative tasks and functionalities.

---

## Keystone Policies

Policies define the authorization logic for Keystone.

- **JSON structure**: Defines who can do what.
- **Checked with each request**: Ensures security and adherence.

---

## Service Catalog in Keystone

Once authenticated, Keystone provides a list of all available services & their endpoints:

- **Dynamic**: Adjusts to the authenticated entity's permissions.
- **Helps clients discover services**: Without hardcoding endpoints.

---

## Keystone in Production

For a real-world cloud setup:

- **High Availability**: Keystone should be set up redundantly.
- **Secure Connections**: Use HTTPS for all Keystone communications.
- **Regular Backups**: Always backup your Keystone database.

---

## Federated Identity in Keystone

Keystone supports federated identity, allowing:

- **Integration with external identity providers**: Such as LDAP or SAML.
- **Single Sign-On (SSO)**: Seamless authentication across different platforms.

---

## Keystone Tokens: Fernet

Fernet tokens are a popular choice:

- **Stateless**: No need to store in a persistent backend.
- **Lightweight**: Reducing the operational burden.
- **Rotatable**: Keys can be rotated for security.

---

## Keystone Performance Tips

- **Use Memcached**: Speed up token validation and reduce database load.
- **Periodic Token Cleanup**: Remove expired tokens to free up space.
- **Optimize Database**: Regularly optimize and maintain the Keystone DB.

---

## Keystone Versioning & Compatibility

Keystone has evolved over time:

- **API versions**: Make sure to use compatible versions.
- **Deprecations**: Stay updated on features being phased out.

---

## Keystone Authentication

Authentication in Keystone is the process of proving the identity of a user or service. It usually involves a combination of:

- **Username/Password**: Common for users.
- **Tokens**: Issued once a user/service is authenticated.

---

## Keystone Authorization

Authorization is about what actions or resources an authenticated entity can access. In Keystone:

- **Roles**: Define what actions can be performed.
- **Role Assignments**: Connect users to roles for specific projects.

---

## Keystone Tokens

Tokens are a key concept in Keystone. Once issued after authentication:

- **Represent the user**: For the duration of the token's life.
- **Service Catalog**: Contains info about available services & their endpoints.
- **Limited Lifetime**: Typically short-lived, requiring re-authentication.

---

## Keystone domains

Domains are a way to organize users, projects, and roles in Keystone:

- **Default Domain**: Created by default, contains all users, projects, and roles.
- **Additional Domains**: Can be created to organize users, projects, and roles.

Use the following command to create a domain

```bash
openstack domain create --description "An Example Domain" example
```

---

## Managing Users and Projects

```bash
# Create a user
openstack user create --domain default --password-prompt <USERNAME>

# Create a project (tenant)
openstack project create --domain default <PROJECT_NAME>

# Assign a role to a user in a project
openstack role add --project <PROJECT_NAME> --user <USERNAME> <ROLE_NAME>
```

---

## Configuring Keystone Endpoints

Keystone acts as a directory of available services and their respective access points.

```bash
# Create an endpoint for a service
openstack endpoint create --region RegionOne identity public http://controller:5000/v3/
openstack endpoint create --region RegionOne identity internal http://controller:5000/v3/
openstack endpoint create --region RegionOne identity admin http://controller:35357/v3/
```

---

## Conclusion

Keystone is a fundamental component of OpenStack, ensuring secure and organized access. Proper understanding and maintenance:

- **Enhance security**.
- **Improve performance**.
- **Facilitate smoother operations** in your OpenStack environment.
