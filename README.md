# Frex Animation's


Проект для двух версий Minecraft:
- JE: Minecraft 1.20.1 + Forge
- PE/Bedrock: Minecraft 1.21.131.1+

## Файлы JE (Forge)
- build.gradle
- gradle.properties
- settings.gradle
- src/main/java/com/frexanimations/FrexAnimationsMod.java
- src/main/resources/META-INF/mods.toml
- src/main/resources/pack.mcmeta

## Файлы PE (Bedrock)
- pe/behavior_pack/
- pe/resource_pack/

## Запуск в Termux (Android 15)
```bash
pkg update && pkg upgrade -y
pkg install -y openjdk-21 gradle git
export JAVA_HOME=$PREFIX/lib/jvm/openjdk-21
export PATH=$JAVA_HOME/bin:$PATH
./scripts/bootstrap-termux.sh
./gradlew build
```

## Установка PE-паков
1. Скопировать `pe/behavior_pack` в `behavior_packs`.
2. Скопировать `pe/resource_pack` в `resource_packs`.
3. Включить оба пака в мире.
4. Проверка: `/function frex_hello`

## Важно
Перед публикацией проверь, что в файлах нет merge conflict маркеров:
- `<<<<<<<`
- `=======`
- `>>>>>>>`

Проверка командой:
```bash
rg -n "^<<<<<<<|^=======|^>>>>>>>" -g'*'
```

Стартовый репозиторий для разработки Minecraft-мода **Frex Animation's** под **Termux (Android 15)** с **JDK 21**.

## Что внутри
- Шаблон Fabric-мода (Java 21)
- Базовый класс инициализации мода
- Конфиги Gradle/Fabric Loom
- `.gitignore` для Android/Termux и Java/Gradle

## Важно
- Имя мода в игре: **Frex Animation's**
- Идентификатор мода (mod id): `frex_animations`

