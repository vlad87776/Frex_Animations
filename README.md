# Frex Animation's

Стартовый репозиторий для разработки Minecraft-мода **Frex Animation's** под **Termux (Android 15)** с **JDK 21**.

## Что внутри
- Шаблон Fabric-мода (Java 21)
- Базовый класс инициализации мода
- Конфиги Gradle/Fabric Loom
- `.gitignore` для Android/Termux и Java/Gradle

## Быстрый старт в Termux
```bash
pkg update && pkg upgrade -y
pkg install -y openjdk-21 git

# при необходимости
export JAVA_HOME=$PREFIX/lib/jvm/openjdk-21
export PATH=$JAVA_HOME/bin:$PATH

# клонировать и перейти
cd ~
git clone <your-repo-url> Frex-Animations
cd Frex-Animations

# собрать
./gradlew build
```

## Важно
- Имя мода в игре: **Frex Animation's**
- Идентификатор мода (mod id): `frex_animations`
