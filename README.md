# Getting started:

## Dependencies:

- [Node.js](https://nodejs.org/en)
  - On windows, you need to install this via the executable nodejs.org provides

## Steps:

- Clone the repo
- cd into the repo folder
- run `yarn install`, or if you don't have yarn, `npm install` to install Astro's required packages
- If changes have been made by another contributor, run `git pull`

# To run locally:

With yarn:

```sh
yarn run dev
```

With npm:

```sh
npm run dev
```

## 🚀 Project Structure

Inside of your Astro project, you'll see the following folders and files:

```text
/
├── public/
│   └── images/ => Put all images in this directory
├── src/
│   └── pages/
│       └── index.astro
└── package.json
```

Astro looks for `.astro` or `.md` files in the `src/pages/` directory. Each page is exposed as a route based on its file name.

There's nothing special about `src/components/`, but that's where we like to put any Astro/React/Vue/Svelte/Preact components.

Any static assets, like images, can be placed in the `public/` directory.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                | Action                                           |
| :--------------------- | :----------------------------------------------- |
| `yarn install`         | Installs dependencies                            |
| `yarn dev`             | Starts local dev server at `localhost:4321`      |
| `yarn build`           | Build your production site to `./dist/`          |
| `yarn preview`         | Preview your build locally, before deploying     |
| `yarn astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `yarn astro -- --help` | Get help using the Astro CLI                     |

## Want to learn more?

Feel free to check [Astro's documentation](https://docs.astro.build).
