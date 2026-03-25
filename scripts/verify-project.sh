#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

required_files=(
  ".gitignore"
  "LICENSE"
  "README.md"
  "build.gradle"
  "gradle.properties"
  "settings.gradle"
  "scripts/bootstrap-termux.sh"
  "src/main/java/com/frexanimations/FrexAnimationsMod.java"
  "src/main/resources/META-INF/mods.toml"
  "src/main/resources/pack.mcmeta"
  "src/main/resources/assets/frex_animations/lang/en_us.json"
  "pe/behavior_pack/manifest.json"
  "pe/behavior_pack/functions/frex_hello.mcfunction"
  "pe/resource_pack/manifest.json"
  "pe/resource_pack/texts/en_US.lang"
)

missing=0
for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "MISSING: $file"
    missing=1
  fi
done

if [[ $missing -ne 0 ]]; then
  echo "Проверь репозиторий: есть отсутствующие файлы."
  exit 1
fi

if rg -n "^<<<<<<<|^=======|^>>>>>>>" -g'*' >/dev/null 2>&1; then
  echo "Найдены merge conflict маркеры!"
  exit 1
fi

python -m json.tool pe/behavior_pack/manifest.json >/dev/null
python -m json.tool pe/resource_pack/manifest.json >/dev/null
python -m json.tool src/main/resources/pack.mcmeta >/dev/null

echo "OK: все обязательные файлы на месте, JSON валиден, merge conflict маркеров нет."
