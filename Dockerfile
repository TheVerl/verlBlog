FROM --platform=linux/amd64 oven/bun

COPY app/package.json .
COPY app/bun.lockb .

RUN bun install --production

COPY app/src src
COPY app/tsconfig.json .
# COPY public public

ENV NODE_ENV production
CMD ["bun", "src/index.tsx"]

EXPOSE 3000