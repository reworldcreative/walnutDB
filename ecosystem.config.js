module.exports = {
  apps: [
    {
      name: "walnutDB",
      script: "npm",
      args: "run develop",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
