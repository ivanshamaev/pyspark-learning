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

# Установка JAVA
Если у вас на машине отсутствует Java, то начинаем с инсталляции Java (для Spark 4.0.0 необходимо использовать Java 17 версии).
```
sudo apt update
sudo apt install openjdk-17-jdk
```

Проверяем, что Java установлена:
```
java -version
```

Ожидаемый вывод должен быть примерно:
```
openjdk version "17.0.XX"
```

Далее нам необходимо установить переменную окружения `JAVA_HOME`.

Запускаем команду:
```
sudo update-alternatives --config java
```

Копируем
```
/usr/lib/jvm/java-17-openjdk-amd64/bin/java
```

Добавляем в среду переменные в `/etc/environment`
`/etc/environment` — это системный файл, который используется для настройки глобальных переменных окружения. Переменные в этом файле доступны для всех пользователей системы.

Команда редактирования переменных:
```
sudo nano /etc/environment
```

Добавляем 2 строки:
```
JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export JAVA_HOME
```

Перезагружаем с помощью команды:
```
. /etc/environment
```

Проверяем `$JAVA_HOME`
```
echo $JAVA_HOME
```

Результат:
```
/usr/lib/jvm/java-11-openjdk-amd64
```

# Как обновить Java для Spark 4.0.0
Если у вас версия Java ниже 17, то, вероятно при установке Spark 4, вы получите ошибку. Для обновления Java необходимо запустить команды:

```
# 1. Скачать и установить Java 17:
sudo apt update
sudo apt install openjdk-17-jdk -y

# Проверяем версию:
java -version

# Обновляем JAVA_HOME и путь по умолчанию:
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Применяем изменения:
source ~/.bashrc

# Убедимся, что используется именно Java 17:
echo $JAVA_HOME
java -version

```

# Как установить и сконфигурировать Jupyter Notebook & PySpark
## Установка PySpark
```
pip install --upgrade pip
pip install pyspark
```

## Установка Jupyter Notebook
```
pip install notebook
```

## Запуск Jupyter Notebook
```
jupyter notebook ./pyspark_notebooks/
```