# Somplo – Test Task API

REST API for managing **products** and **sellers**.

---

## Features

- Create and update products and sellers
- Get product data by ID
- Bulk insert and bulk update
- Parse external data

---

## API Endpoints

### Products
- `POST /api/product/set_data` – Create or update a product
- `GET /api/product/get_data/{id}` – Get product by ID
- `POST /api/product/update_data_bulk` – Bulk update products

### Sellers
- `POST /api/seller/set_data` – Create or update a seller

### Bulk
- `POST /api/bulk_insert` – Bulk insert products and sellers

### Utilities
- `GET /api/utilities/parser` – Parse external data

---

## Requirements

- PHP 8.4+
- Composer
- MySQL  
- Docker & Docker Compose (optional, recommended)

---

## Quick start (Docker – recommended)

```bash
git clone git@github.com:DimaKostiuchenko/somplo-api.git
cd somplo-api
cp .env.example .env

docker compose up -d

docker compose exec app composer install
docker compose exec app php artisan key:generate
docker compose exec app php artisan migrate --seed
````

API will be available at:

```
http://localhost:8000
```

---

## Local setup (without Docker)

```bash
git clone git@github.com:DimaKostiuchenko/somplo-api.git
cd somplo-api
composer install

cp .env.example .env
```

Update database credentials in `.env`, then:

```bash
php artisan key:generate
php artisan migrate --seed
php artisan serve
```

---

## Running tests

```bash
# Docker
docker compose exec app php artisan test

# Local
php artisan test
```
