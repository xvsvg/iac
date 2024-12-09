# Infrastructure As Code ♾️

Мы запускаем инфраструктуру на тачке в Yandex.Cloud

Локальный запуск через Vagrant
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