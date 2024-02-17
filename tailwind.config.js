/** @type {import('tailwindcss').Config} */
const execSync = require("child_process").execSync;
const gemPath = execSync("bundle show bridgetown-docs-template", { encoding: "utf-8" }).trim();

module.exports = {
  content: [
    './src/**/*.{html,md,liquid,erb,serb,rb}',
    './frontend/javascript/**/*.js',
    gemPath + "/**/*.{html,md,liquid,erb,serb,rb}",
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}

