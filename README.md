# Infrastructure As Code ♾️

Мы запускаем инфраструктуру на тачке в Yandex.Cloud

### Локальный запуск через Vagrant
----

запускаемся из корня решения &mdash; из папки iac, потому что файл вагранта лежит именно там, а по другому не работает

```zsh
vagrant up
```

это поднимет тачку:

|host|external port| inner port|username|
|----|-------------|-----------|--------|
|localhost|   22 	 |	 2222    | vagrant|

проверить статус тачки:
```zsh
vagrant status // расскажет как дела
vagrant ssh-config // покажет конфиг тачки
```

| ⚠️ provisioning может занять какое то время

### Локальное подключение

----

Если установлен ssh client, то vagrant ssh упадет с ошибкой
`permission denied`, проверить установлен ли он можно имперически 🤑

В таком случае подключиться можно, прокинув аутпут
vagrant ssh-config в ssh вот так:

```zsh
ssh vagrant@127.0.0.1 -p 2222 -o Compression=yes -o DSAAuthentication=yes -o LogLevel=FATAL -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -i ~/.vagrant.d/insecure_private_keys/vagrant.key.rsa -o ForwardAgent=yes
```