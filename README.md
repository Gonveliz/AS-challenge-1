## IaC Challenge 1 - Guía y Uso

Está guía tiene como objetivo poder utilizar el codigo de [Terraform](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) para desplegar la infraestructura desarrollada en el repositorio.

<p align="center">
<img src="/assets/terraform.png" width="40%">

## Tabla de contenido
- [IaC Challenge 1 - Guía y Uso](#iac-challenge-1---guía-y-uso)
- [Tabla de contenido](#tabla-de-contenido)
- [Pre-requisitos](#pre-requisitos)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Modulos y recursos utilizados](#modulos-y-recursos-utilizados)
- [Guia de Uso](#guia-de-uso)
- [Mantenimiento](#mantenimiento)

## Pre-requisitos
* [Terraform Instalado](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
* [AWS CLI Configurado y logueado](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html)

## Estructura del proyecto

```
├── assets
├── .gitignore
├── eks.tf
├── LICENCE
├── provider.tf
├── README.md
├── s3.tf
├── vpc.tf
└── k8s

```


## Modulos y recursos utilizados

Actualmente se estan utilizando los siguientes recursos/modulos:
- [EKS](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)
- [VPC](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
- S3
  - [Bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
  - [Versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning)

## Guia de Uso

Para desplegar y/o actualizar la infraestructura deberemos realizar los siguientes pasos:
1. Ejecutar terraform plan:
    `terraform plan`
2. Comprobar cambios en la infreastructura 
3. Ejecutar terraform apply:
   `terraform plan`
4. Inspeccionar los cambios y aceptarlos una vez verificados
5. Validar Apply complete!
![Apply complete!](/assets/apply_completed.png)

## Mantenimiento

Se recomienda:

- Actualizar regularmente los módulos de Terraform
- Monitorear los recursos desplegados en AWS
- Realizar pruebas después de cada actualización
