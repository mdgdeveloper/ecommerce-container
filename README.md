# Ecommerce base Project

**Developed by:** Sergio Madrigal (sergiomadrigal@gmail.com)

This is a base project for creating a containerized Wordpress deployment with all the resources needed to launch an eCommerce:

- Wordpress Latest version
- WooCommerce Plugin
- Astra Plugin
- Elementor Plugin (If needed)

The solution deploys also a Traefik Loadbalancing deployment which includes:

- HTTP3 implementation
- Performance improvements for SQL/Wordpress/PHP

## Installation Process

Create a new `.env` file with the following information:

```bash
touch .env
```

```sh
# .env file
WORDPRESS_DB_HOST=db:3306
WORDPRESS_DB_NAME=wordpress
WORDPRESS_DB_USER=wordpress
WORDPRESS_DB_PASSWORD=wordpress

MYSQL_ROOT_PASSWORD=#Define a Secure Password
MYSQL_DATABASE=wordpress
MYSQL_USER=wordpress
MYSQL_PASSWORD=#Define a Secure Password

TRAEFIKVERSION=2.6
NGINXVERSION=mainline
REDISVERSION=6.2

```

To install the solution once all the data is deployed:

```bash
sudo docker-compose up --build
```

## References

## Fixes

### Astra Theme

Astra Theme has a bug that prevents the deployment of templates. To avoid it you must follow the following steps:

```bash
vi /var/lib/docker/volumes/cromospersonalizados_wordpress_data/_data/wp-content/plugins/astra-sites/inc/lib/starter-templates-importer/importer/wxr-importer/st-wxr-importer.php
```

Look for `Gutenberg`

```php
// Comment this line
$data['post_content'] = wp_slash( $data['post_content'] );
```