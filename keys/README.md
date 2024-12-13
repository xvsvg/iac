# Это че такое

ну короче с ключами может возникнуть головная боль, эти ключи надо положить в папку `~/.ssh`

перед запуском `vagrant up` нужно поменять в `Vagranfile` вот эту строчку:

```
ssh_key = File.read(File.expand_path("C:\\Users\\xvsvg\\ssh\\ansible_key.pub")).strip 
```

здесь надо `xvsvg` заменить на аутпут команды в WSL:
```
echo $whoami
```