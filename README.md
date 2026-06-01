
# Getting started:

## Dependencies:

- [Node.js](https://nodejs.org/en)

## Steps:

- If you're cloning this repo for the first time, use `git clone --recursive ssh://git@codeberg.org/erincorbettmusic/pages.git erincorbettmusic.com` as your clone command
- cd into the repo folder
- run `yarn install`, or if you don't have yarn, `npm install` to install Astro's required packages
- If changes have been made by another contributor, run `git pull` and then `git submodule update --remote build` to update the build submodule

# To run locally:
With yarn:
```sh
yarn run dev
```

With npm:
```sh
npm run dev
```

# Deploy to Codeberg pages:

- Make your changes, and ensure you are checked into the root of the repo
- run `./deploy.sh`
- The script will move the build site files into `build/` and push them to the `pages` branch of the codeberg repo, updating the site.
- If everything looks good, commit and push the changes in the project root on the `main` branch.

## 🚀 Project Structure

Inside of your Astro project, you'll see the following folders and files:

```text
/
├── build/ => the folder that codeberg pages uses to run your actual website
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

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `yarn install`             | Installs dependencies                            |
| `yarn dev`             | Starts local dev server at `localhost:4321`      |
| `yarn build`           | Build your production site to `./dist/`          |
| `yarn preview`         | Preview your build locally, before deploying     |
| `yarn astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `yarn astro -- --help` | Get help using the Astro CLI                     |

## 👀 Want to learn more?

Feel free to check [our documentation](https://docs.astro.build) or jump into our [Discord server](https://astro.build/chat).
