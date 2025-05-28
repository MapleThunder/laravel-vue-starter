import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import tailwindcss from '@tailwindcss/vite';
import vue from "@vitejs/plugin-vue";

export default defineConfig({
    server: {
        host: '0.0.0.0', // bind to all IPv4 interfaces
        port: 5173,
        hmr: {
            // tell clients to connect to http://localhost:5173
            host: 'localhost',
            protocol: 'ws',
            port: 5173
        }
    },
    plugins: [
        laravel({
            input: ['resources/css/app.css', 'resources/js/app.js'],
            refresh: true,
        }),
        vue({
            template: {
                transformAssetUrls: {
                    base: null,
                    includeAbsolute: false,
                }
            }
        }),
        tailwindcss(),
    ],
});
