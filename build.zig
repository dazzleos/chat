//! Chat, an app for chatting with others on the same network, in rooms, for Dazzle: built with Dazzle's modules and
//! tools (see Dazzle's build.zig, `addApp`).
//!
//!     zig build                 the program, and its archive and catalogue (zig-out/apps)
//!     zig build test            its tests, on this computer
//!
//! With a Dazzle (or kete) checkout of your own beside it:
//! `zig build --fork=../dazzle`.

const std = @import("std");
const dazzle = @import("dazzle");

pub fn build(b: *std.Build) void {
    _ = dazzle.addApp(b, .{
        .name = "dazzle-chat",
        .icon = .chat,
        .title = "Chat",
        .description = "Chat with others on your network in rooms",
        .about = "Talk with others on the same network in rooms, without an account or the internet: anyone running Chat nearby can join.",
    });
}
