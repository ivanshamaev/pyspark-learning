#!/bin/bash

# Остановить выполнение при ошибке
set -e

# Название виртуального окружения
VENV_DIR="venv"

# Проверка, существует ли уже venv
if [ ! -d "$VENV_DIR" ]; then
  echo "Создаём виртуальное окружение..."
  python3 -m venv $VENV_DIR
else
  echo "Виртуальное окружение уже существует."
fi

# Активация виртуального окружения
source $VENV_DIR/bin/activate

# Установка PySpark
echo "Устанавливаем PySpark..."
pip install --upgrade pip
pip install pyspark

# Установка Jupyter Notebook
echo "Устанавливаем Jupyter Notebook..."
pip install notebook

# Запуск Jupyter Notebook
echo "Запускаем Jupyter Notebook..."
jupyter notebook ./pyspark_notebooks/
