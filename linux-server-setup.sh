if [ ! -f "artisan" ]; then
    echo "❌ Error: 'artisan' file not found. Please run this in the Laravel project root."
    exit 1
fi
echo "🚀 Starting full Laravel fix in $(pwd)..."
echo "📂 Recreating storage folder structure..."
mkdir -p storage/framework/{cache/data,sessions,views}
mkdir -p storage/logs
mkdir -p storage/app/public
echo "🔐 Setting permissions (775) and attempting ownership change..."
chmod -R 775 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache 2>/dev/null || echo "⚠️  Note: Could not change owner to www-data (skipping)."
echo "🔗 Creating storage symbolic link..."
rm -f public/storage
php artisan storage:link
echo "🧹 Cleaning up system cache..."
php artisan cache:clear
php artisan view:clear
php artisan config:clear
php artisan route:clear
echo "✅ All done! Storage is linked, permissions are set, and cache is cleared."