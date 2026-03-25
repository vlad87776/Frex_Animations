# Frex Animation's

Репозиторий подготовлен для двух направлений:
- **JE (Java Edition): Minecraft 1.20.1 + Forge**
- **PE/Bedrock: Minecraft 1.21.131.1+**

## Структура

```text
.
├── build.gradle
├── gradle.properties
├── settings.gradle
├── src/main/java/com/frexanimations/FrexAnimationsMod.java
├── src/main/resources/META-INF/mods.toml
├── src/main/resources/pack.mcmeta
├── pe/
│   ├── behavior_pack/
│   └── resource_pack/
└── scripts/bootstrap-termux.sh
```

## JE (Forge 1.20.1)

### Termux / Android 15 (JDK 21)
```bash
pkg update && pkg upgrade -y
pkg install -y openjdk-21 gradle git

export JAVA_HOME=$PREFIX/lib/jvm/openjdk-21
export PATH=$JAVA_HOME/bin:$PATH

./scripts/bootstrap-termux.sh
./gradlew build
```

## PE (Bedrock 1.21.131.1+)

- `pe/behavior_pack` — Behavior Pack
- `pe/resource_pack` — Resource Pack

Установка:
1. Скопировать `pe/behavior_pack` в `behavior_packs`.
2. Скопировать `pe/resource_pack` в `resource_packs`.
3. Включить оба пака в мире.

Проверка:
```mcfunction
/function frex_hello
```

## Идентификаторы
- Название проекта: **Frex Animation's**
- JE mod id: `frex_animations`
