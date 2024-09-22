# [Node Webpack TypeScript App Template](https://github.com/premierstacks/node-webpack-typescript-app-template) by [Tomáš Chochola](https://github.com/tomchochola)

A premium, preconfigured Node.js library template using Webpack and TypeScript. Designed to accelerate library development and ensure consistent, high-quality code for reusable packages.

## 💡 Idea Behind Premierstacks

Premierstacks is a comprehensive solution designed to cover both the development environment and the runtime provisioning/release process to production servers.

It includes everything from basic project structures to configurations for unit tests, static analysis, linters, automatic code fixers, and compilation or transpilation. Premierstacks ensures that your entire workflow, from development to production deployment, operates smoothly.

With a single license, you gain access to multiple libraries and guides that allow you to focus on business logic while Premierstacks handles both development and runtime environments.

This software is proprietary and designed for serious developers who value precision and professionalism. Ensure compliance by securing your license today.

## ⚡ Why Choose This Solution?

- **Premier Quality**

  Crafted for discerning developers and teams aiming for the highest standards.

- **Expertly Crafted**

  Built by professionals after hundreds of hours of research and testing.

- **Production-Ready**

  Fully tested in real-world production environments.

- **Efficient Setup**

  Get up and running with minimal effort and immediate results.

- **Regular Updates**

  Stay aligned with the latest Webpack, TypeScript, and best practices.

- **Versatile**

  Designed specifically for building TypeScript libraries targeting Node.js environments.

## 🛡️ License & Usage

**Copyright © 2024+ Tomáš Chochola <chocholatom1997@gmail.com> - All Rights Reserved**

[![License](https://img.shields.io/badge/License-©_Proprietary-blue.svg)](LICENSE.md)

This software is proprietary property of Tomáš Chochola and protected by copyright laws.<br />
A valid license is required for any use or manipulation of the software or source code.<br />
The full license terms are detailed in the LICENSE.md file within the source code repository.

One license grants you access to all Premierstacks products, ensuring a unified solution for your development and production needs.

**Purchase a license here**: [GitHub Sponsors](https://github.com/sponsors/tomchochola)

**See full terms in**: [LICENSE.md](LICENSE.md)

## 📦 Preconfigured Features

Here are the key preconfigured features included in this template:

- **Webpack Configuration**

  Utilizes `@premierstacks/webpack-stack` for a finely-tuned Webpack setup, facilitating the management and bundling of assets like HTML, SCSS, and TypeScript, optimized for both development and production environments.

- **TypeScript Support**

  Configured with `@premierstacks/typescript-stack` to leverage TypeScript's powerful features for type safety and developer productivity, aligning with TypeScript best practices.

- **ESLint Integration**

  Integrates `@premierstacks/eslint-stack` to enforce strict linting rules for JavaScript and TypeScript, promoting code quality and consistency throughout the project.

- **Stylelint Configuration**

  Employs `@premierstacks/stylelint-stack` for CSS and SCSS linting, ensuring that styles across the project maintain high quality and consistency.

- **Prettier Formatting**

  Incorporates `@premierstacks/prettier-stack` for unified code formatting, ensuring that all project code adheres to a consistent style for better readability and maintainability.

- **PostCSS Integration**

  Set up with `@premierstacks/postcss-stack` for advanced CSS processing capabilities, including autoprefixing and future CSS features, enhancing the styling workflow.

- **Makefile Goals**

  Features a comprehensive set of predefined Makefile commands to streamline routine development tasks, contributing to an efficient workflow and streamlined CI/CD processes.

## 🔥 Webpack Configuration Highlights

**Default Entry Points**

The template uses `src/index.ts` as the default entry point, ensuring that your TypeScript library has a clean and structured entry for development.

**TypeScript Transpilation**

TypeScript code is transpiled into JavaScript compatible with Node.js environments, ensuring a modern development experience while targeting the Node.js runtime.

**SCSS to CSS Processing**

SCSS files are compiled into CSS and further processed to apply PostCSS transformations like autoprefixing.

**HTML Management**

HTML files are effectively handled, with automatic injection of scripts and styles into the generated HTML files, streamlining the development process.

**Resource Queries Support**

Supports resource queries in import statements, providing fine-grained control over asset processing:

- **`?asset`**: Automatically decides whether to inline the asset or emit it as a separate file based on its size. This is useful for optimizing load times by inlining small assets and emitting larger ones.
- **`?resource`**: Forces the asset to be emitted as a separate file, regardless of its size. Ideal when you need assets to be cached separately or accessed directly.
- **`?source`**: Imports the asset as a raw source string. Useful for cases where you need the content of the asset directly in your code, such as loading an HTML template or a text file.
- **`?inline`**: Inlines the asset into the bundle regardless of size. Ensures the asset is embedded directly into your code, which can be beneficial for small files or critical assets that must be loaded immediately.

**Asset Management**

Efficient handling of assets like images, fonts, and other files, with customizable output paths and naming conventions, ensures that assets are correctly processed and linked in your application.

**Code Splitting and Optimization**

Employs optimized code splitting strategies to improve load times, with chunks configured for better caching and performance.

**Build Optimizations**

Integrates various plugins to minimize and optimize CSS, HTML, JSON, and image assets for production builds, enhancing performance without the need for detailed configuration.

**Environment-Specific Configurations**

Adjusts settings based on the environment (development or production) to ensure optimal performance and features appropriate for each stage.

**Extensibility and Customization**

The Webpack configuration is designed to be modular and extensible, allowing you to modify and extend it according to your project's specific requirements.

## 🚀 Getting Started

1️⃣ **Review the documentation and license**

Ensure this template fits your needs and that you agree with the terms.

2️⃣ **Purchase a license**

Obtain a valid license through [GitHub Sponsors](https://github.com/sponsors/tomchochola).

3️⃣ **Project Creation**

Use the `Use this template` button on the GitHub repository page to create a new repository from this template.

4️⃣ **Customize Your Project**

Explore the generated repository.

Remove unnecessary components and adjust it to fit your project's needs.

5️⃣ **Attribution**

To comply with the license agreement regarding giving credits to the authors, please keep the `AUTHORS.md` file intact in your project repository.

Alternatively, please ensure to manually give credits to the authors in your project documentation or wherever appropriate, as per the license agreement.

6️⃣ **Usage**

Utilize the Makefile commands to streamline your development workflow:

## 📘 CLI Commands

Here are the Makefile goals included in the template, along with their descriptions:

- **make audit**

  Run security audits on npm dependencies to check for vulnerabilities.

- **make check**

  Run linters, static analysis, and security audits to ensure code quality.

- **make clean**

  Remove generated files and clean up the project environment.

- **make compress**

  Optimize assets like SVGs for better performance.

- **make development**

  Build the project in development mode.

- **make distclean**

  Perform a deep clean, removing all generated and temporary files.

- **make fix**

  Automatically fix code style issues using ESLint and Prettier.

- **make install**

  Install all npm dependencies, including production and development.

- **make lint**

  Run linters (ESLint, Prettier) to check code style and syntax.

- **make local**

  Build the project in development mode.

- **make production**

  Build the project in production mode with optimizations.

- **make staging**

  Build the project in production mode.

- **make stan**

  Run static analysis using the TypeScript compiler without emitting files.

- **make start**

  Start a local development server with live reloading.

- **make testing**

  Build the project in development mode.

- **make update**

  Update npm dependencies to their latest versions.

These commands facilitate routine development tasks, contributing to an efficient workflow and streamlined CI/CD processes.

## 👤 The Author: Tomáš Chochola

Tomáš Chochola is a leading software developer known for delivering precision-crafted, enterprise-grade solutions. With deep expertise in multiple cutting-edge technologies, Tomáš focuses on ensuring top-tier code quality and efficiency for every project.

**Email**: <chocholatom1997@gmail.com><br />
**Premierstacks website**: [https://premierstacks.com](https://premierstacks.com)<br />
**Personal GitHub**: [https://github.com/tomchochola](https://github.com/tomchochola)<br />
**Premierstacks GitHub**: [https://github.com/premierstacks](https://github.com/premierstacks)<br />
**GitHub Sponsors**: [https://github.com/sponsors/tomchochola](https://github.com/sponsors/tomchochola)

His areas of specialization include:

- DevOps and AWS
- PHP and Laravel
- Secure coding practices
- Code style and best practices
- Helper functions and libraries
- TypeScript, React, and Webpack
- Reusable templates and configuration stacks
- Development on Windows 11 and Ubuntu 22/24 (WSL2)
- ESLint, Prettier, PHP CS Fixer, PostCSS, and Stylelint

## 💼 Hire Me

Whether you need short-term code assistance, in-depth analysis, or help integrating premium packages, I'm available for collaboration. Let's take your project to the next level.

You can also support my work by becoming a sponsor through [GitHub Sponsors](https://github.com/sponsors/tomchochola).

If you're interested in hiring me for any of the above or for solving IT issues, feel free to reach out. I'm open to collaboration, whether it's for new packages, ongoing projects, or quick IT fixes.

## 🌳 Project Structure (Tree)

Below is an example of the project structure you will receive upon purchasing the Browser Webpack TypeScript App Template. This allows you to see what’s included and know exactly what you are paying for:

```sh
.
├── AUTHORS.md
├── LICENSE.md
├── Makefile
├── README.md
├── eslint.config.js
├── package.json
├── prettier.config.js
├── src
│   ├── index.ts
│   └── modules.d.ts
├── tsconfig.json
└── webpack.config.js

1 directory, 11 files
```
