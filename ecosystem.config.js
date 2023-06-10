module.exports = {
  apps: [
    {
      name: "walnutDB",
      script: "npm",
      args: "run develop",
      //   args: "strapi develop",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
