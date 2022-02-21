module.exports = {
  content: ['./js/**/*.js', '../lib/*_web/**/*.*ex'],
  mode: 'jit',
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/aspect-ratio'),
  ],
};
