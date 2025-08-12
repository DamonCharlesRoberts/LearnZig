//! Hello World from Zig!
const std = @import("std");

// The main funciton.
pub fn main() !void {
    // Write to the stdout.
    const stdout = std.io.getStdOut().writer();
    try stdout.print("hello world!\n", .{});
}
