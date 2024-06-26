FROM node:20.14-alpine AS base
WORKDIR /app
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base AS deps
WORKDIR /app
COPY package.json ./
COPY pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . ./
RUN pnpm build

FROM base AS runner
WORKDIR /app
ENV NODE_ENV production
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nodets
COPY --from=builder --chown=nodets:nodejs /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/.env ./
COPY --from=builder /app/.env.production ./
COPY --from=builder /app/package.json ./
USER nodets
CMD pnpm start
