import env from '@next/env';

import { dev } from '#helpers.js';

process.on('uncaughtException', console.error);
process.on('unhandledRejection', console.error);

env.loadEnvConfig(process.cwd(), dev);

await import('#mod.js');
