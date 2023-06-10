module.exports = {
  apps: [
    {
      name: "walnutDB",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
