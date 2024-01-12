const mongoose = require("mongoose");
const playerSchema = mongoose.Schema({
    nickname: {
        type: String,
        trim: true,
    },
    socketID: {
        type: String,
    },
    points: {
        type: Number,
        default: 0,
    },
    playerTrun: {
        required: true,
        type: String,

    }
});

module.exports = playerSchema;