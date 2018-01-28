# AndreyErmilov_infra

## Homework 10

### Запуск приложения
Для работы используется `Ansible`

- установите `ansible` глобально `sudo pip install -r requirements.txt`
- переименуйте `inventory.yml.example` в `inventory.yml` и добавьте свои ip адрес
- протестируйте доступ к серверам по ssh с помощью `ansible all -m ping `

## Homework 9

### Запуск приложения

- создайте новые образы `reddit-base-app` и `reddit-base-db` запустив `packer`
- файлы настроек инфраструктуры разделены на две папки – `stage` и `prod`
- перейдите в одну из папок и инициализируйте проект `terraform init`
- примените изменения `terraform apply`

Перед применением изменений рекомендуется использовать команду `terraform plan` для просмотра измнений, который `terraform` планирует совершить с проектом.

### Удаление проекта
- для удаления проекта используйте `terraform destroy`

## Homework 8

### Запуск приложения

- переименуйте `terraform.tfvars.example` в `terraform.tfvars` и поменяйте название проекта и пути к публичному и приватному ключам на свои
- при первом запуске инициализируйте проект `terraform init`
- примените изменения описанные в `main.tf` с помощью команды `terraform apply`

Перед применением изменений рекомендуется использовать команду `terraform plan` для просмотра измнений, которые `terraform` планирует совершить с проектом.

### Удаление проекта
- для удаления проекта используйте `terraform destroy`

## Homework 7

Credentials вашего пользователя

```
gcloud auth application-default login
```

Переименуйте `variables.json.example` в `variables.json` и поменяйте данные.

Запуск packer:
```packer build -var-file=variables.json ubuntu16.json```

## Homework 6

Cоздание инстанса с запуском стартап скрипта

```
gcloud compute instances create reddit-app \
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=startup.sh
```

## Homework 5

### Основное задание

Конфигурация

```
Хост bastion, IP: 35.189.245.203, внутр. IP: 10.132.0.2
Хост: someinternalhost, внутр. IP: 10.132.0.3
```

Подключение к internalhost через ssh
``ssh -o ProxyCommand='ssh -W %h:%p appuser@35.189.245.203' appuser@10.132.0.3``

### Дополнительное задание

Нужно добавить в `~/.ssh/config` строки:
```
HOST bastion
    IdentityFile ~/.ssh/appuser
    User appuser
    HostName 35.189.245.203

HOST internalhost
    IdentityFile ~/.ssh/appuser
    User appuser
    HostName 10.132.0.3
    ProxyCommand ssh bastion -W %h:%p
```

Подключение
``ssh internalhost`` или ``ssh bastion``