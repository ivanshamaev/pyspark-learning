# Настройка виртуальной среды venv
Настраиваем среду venv:
```
python3 -m venv venv

source venv/bin/activate
```

Устанавливаем PySpark:
```
pip install pyspark
```

Устанавливаем Jupyter Notebook и запускаем:
```
pip install notebook

jupyter notebook ./pyspark_notebooks/
```

# Как установить через sh скрипт
```
chmod +x start_pyspark.sh

./start_pyspark.sh
```

# Как обновить Java для Spark 4.0.0

```
# 1. Установи Java 17:
sudo apt update
sudo apt install openjdk-17-jdk -y

# Проверь версию:
java -version

# Обнови JAVA_HOME и путь по умолчанию:
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Применить изменения:
source ~/.bashrc

# Убедись, что используется именно Java 17:
echo $JAVA_HOME
java -version

```

# Как установить и сконфигурировать Jupyter Notebook & PySpark
