# Vue Starter

A simple Laravel starter kit that uses Inertia and Vue for the front end. I decided to my own instead of using the prepared Laravel Vue starter kit because I don't like Tailwind.

## Setting up the new project

### Requirements

- PHP8+
- Laravel CLI
- Postgres
- Composer
- Node
- pnpm

Create a new Laravel project using the Laravel CLI:

```bash
laravel new vue_starter
cd vue_starter
```

Create the database for local development:

```bash
# Create user with a password
sudo -u postgres createuser --pwprompt vuest_user
# Create database where created user is the owner
sudo -u postgres createdb -O vuest_user vuest_db
```

Update the database credentials in the `.env` file:

```env
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=vuest_db
DB_USERNAME=vuest_user
DB_PASSWORD=localpw
```

Run the database migrations and the composer & npm installs:

```bash
php artisan migrate
composer install
pnpm install && pnpm build
```

Serve the application and confirm it isn't throwing an error:

```bash
php artisan serve
```

Run the vite server so frontend changes will take effect:

```bash
pnpm dev
```
