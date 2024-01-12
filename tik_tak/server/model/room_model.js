const mongoose = require("mongoose");
const playerSchema = require("../model/player_model.js")

const roomSchema = mongoose.Schema({
    // maximum number of player
    occupancy: {
        type: Number,
        default: 2
    },
    // max round 
    maxRound: {
        type: Number,
        default: 6
    },

    currentRound: {
        type: Number,
        default: 1,
        required: true,
    },
    players: [playerSchema],
    isJoin: {
        type: Boolean,
        default: true
    },
    trun: playerSchema,
    trunIndex: {
        type: Number,
        default: 0
    }

});

const roomModel = mongoose.model("Room", roomSchema);
module.exports = roomModel;