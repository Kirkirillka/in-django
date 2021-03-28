## Installation


### Locally


0. Change parameters in the `.env` file.

1. Create virtual env

```shell
python -m venv venv
```

2. Activate venv and install dependencies

```shell
source ./venv/Scripts/activate
pip install -r requirements
```

3. Collect static files

```shell
python manage.py collectstatic
```

4. Apply DB migration

```shell
python manage.py migrate
```

5. Create superuser, if you haven't done it yet:

```shell
python manage.py createsuperuser
```

### Docker
