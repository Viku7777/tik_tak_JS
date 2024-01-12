const express = require("express");
const http = require("http");
const app = express();
const server = http.createServer(app);
const Server = require("socket.io");
const io = Server(server);
const mongoose = require("mongoose");
const Room = require("./model/room_model.js");
const playerSchema = require("./model/player_model.js");





async function start() {
    try {
        await mongoose.connect("mongodb+srv://vixhkey:143Vixh@cluster0.jwfngu4.mongodb.net/tiktak");

        await io.on('connection', (stream) => {
            stream.on("craeteRoom", async (nickname) => {
                try {
                    let room = Room();
                    let player = {
                        socketID: stream.id,
                        nickname: nickname["nickName"],
                        playerTrun: "X",
                    }
                    room.players.push(player);
                    room.trun = player,
                        room = await room.save();
                    const roomid = room._id.toString();
                    console.log(roomid);
                    stream.join(roomid);
                    io.to(roomid).emit("roomcreate", room);
                } catch (error) {
                    console.log(error);
                }



            })
            console.log('someone connected!');
        });
        await server.listen(4500, () => {
            console.log("Connected")
        });


    } catch (error) {
        console.log(error);
    }
}

start();