# Frex Animation's

Репозиторий теперь подготовлен сразу для **двух версий Minecraft**:
- **Java Edition (JE)** — мод на Fabric (JDK 21)
- **Pocket/Bedrock Edition (PE/BE)** — аддон (Behavior Pack + Resource Pack)

## Структура проекта

```text
.
├── build.gradle                  # JE (Fabric)
├── gradle.properties             # JE версии и параметры
├── settings.gradle               # JE имя проекта
├── src/                          # JE исходники
├── pe/
│   ├── behavior_pack/            # PE behavior pack
│   └── resource_pack/            # PE resource pack
└── scripts/bootstrap-termux.sh   # подготовка Termux окружения
```

---

## 1) Java Edition (JE) — Fabric мод

### Быстрый старт в Termux (Android 15)
```bash
pkg update && pkg upgrade -y
pkg install -y openjdk-21 gradle git

export JAVA_HOME=$PREFIX/lib/jvm/openjdk-21
export PATH=$JAVA_HOME/bin:$PATH

# внутри репозитория
./scripts/bootstrap-termux.sh
./gradlew build
```

Собранный `.jar` появится в `build/libs/`.

---

## 2) Pocket/Bedrock Edition (PE/BE) — аддон

В каталоге `pe/` уже лежит стартовый шаблон:
- `pe/behavior_pack/manifest.json`
- `pe/behavior_pack/functions/frex_hello.mcfunction`
- `pe/resource_pack/manifest.json`
- `pe/resource_pack/texts/en_US.lang`

### Установка PE-аддона
1. Скопируй `pe/behavior_pack` в папку **behavior_packs**.
2. Скопируй `pe/resource_pack` в папку **resource_packs**.
3. Включи оба пака в настройках мира.

### Проверка
В мире с включённым Behavior Pack выполни:
```mcfunction
/function frex_hello
```

---

## Идентификаторы проекта
- Название: **Frex Animation's**
- JE mod id: `frex_animations`
- PE BP header name: `Frex Animation's BP`
- PE RP header name: `Frex Animation's RP`
