### Node TypeScript Boilerplate

Boilerplate for Node.js projects in TypeScript

#### Prerequisites

- [Node.js](https://nodejs.org/) (^22.3)
- [pnpm](https://pnpm.io/) (^8.15)
- [Docker](https://www.docker.com/) (optional)

#### Getting Started

1. Clone repo:

      ```bash
      git clone https://github.com/equilpres/node-typescript-boilerplate.git
      ```

2. Go to project dir:

      ```bash
      cd node-typescript-boilerplate
      ```

3. Install deps:

      ```bash
      pnpm install
      ```

#### Scripts

- `dev`: Start dev server.

     ```bash
     pnpm dev
     ```

- `build`: Build project.

     ```bash
     pnpm build
     ```

- `docker:build`: Build Docker image.

     ```bash
     pnpm docker:build
     ```

- `start`: Start prod server.

     ```bash
     pnpm start
     ```

- `lint`: Lint code.

     ```bash
     pnpm lint
     ```

- `fmt`: Format code.

     ```bash
     pnpm fmt
     ```

- `bump`: Update deps.

     ```bash
     pnpm bump
     ```

#### License

[MIT](LICENSE)
