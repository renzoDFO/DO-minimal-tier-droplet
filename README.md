## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |
| [digitalocean_record.www](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |
| [digitalocean_regions.available](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/regions) | data source |
| [digitalocean_ssh_key.terraform](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/ssh_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_DOMAIN"></a> [DOMAIN](#input\_DOMAIN) | n/a | `string` | `"mydomain.com"` | no |
| <a name="input_IMAGE"></a> [IMAGE](#input\_IMAGE) | n/a | `string` | `"docker-20-04"` | no |
| <a name="input_NAME"></a> [NAME](#input\_NAME) | n/a | `string` | `"droplet"` | no |
| <a name="input_digitalocean_ssh_key"></a> [digitalocean\_ssh\_key](#input\_digitalocean\_ssh\_key) | Variables | `string` | `"pc laburo"` | no |
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | Configure the DigitalOcean Provider | `any` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | n/a | `number` | `80` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_www"></a> [www](#output\_www) | Outputs |
