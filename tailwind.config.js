/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            fontFamily: {
                Bai: ["Bai Jamjuree", "sans-serif"],
                Charmonman: ["Charmonman", "cursive"],
                Itim: ["Itim", "cursive"],
                Mali: ["Mali", "cursive"],
                Kanit: ["Kanit", "sans-serif"],
                Mali: ["Mali", "cursive"],
                Mitr: ["Mitr", "sans-serif"],
                MonoThai: ["Noto Serif Thai", "serif"],
                Nunito: ["Nunito", "sans-serif"],
                Prompt: ["Prompt", "sans-serif"],
                Roboto: ["Roboto", "sans-serif"],
                Sarabun: ["Sarabun", "sans-serif"],
                Sriracha: ["Sriracha", "cursive"],
                Popoins: ["Poppins", "sans-serif"],
            },
        },
    },
    plugins: [],
};
