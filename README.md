# Ecommerce base Project 

## References

### Themes

- Kid-like Theme: [https://guywp.com/downloads/kidzoutfit-woocommerce-kids-fashion-shop-template-kit/](https://guywp.com/downloads/kidzoutfit-woocommerce-kids-fashion-shop-template-kit/)
- CuteeShop (No Elementor-Pro required): [https://guywp.com/downloads/cuteeshop-kids-baby-ecommerce-elementor-kit/](https://guywp.com/downloads/cuteeshop-kids-baby-ecommerce-elementor-kit/)
- Renova (No Elementor-Pro required): [https://guywp.com/downloads/renova-kitchen-bathroom-renovation-supplies-store-elementor-pro-template-kit/](https://guywp.com/downloads/renova-kitchen-bathroom-renovation-supplies-store-elementor-pro-template-kit/)

### Fixes

#### Astra Theme
```bash
vi /var/lib/docker/volumes/cromospersonalizados_wordpress_data/_data/wp-content/plugins/astra-sites/inc/lib/starter-templates-importer/importer/wxr-importer/st-wxr-importer.php
```

Look for `Gutenberg`

```php
// Comment this line
$data['post_content'] = wp_slash( $data['post_content'] );
```



