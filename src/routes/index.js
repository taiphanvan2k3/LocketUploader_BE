const locketRouter = require("../routes/locket.route.js");

module.exports = (app) => {
    app.use("/locket", locketRouter);
};
