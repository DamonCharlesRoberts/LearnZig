//! Learning arrays in Zig

const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // LINEAR SEARCH
    // Define an array.
    const a = [_]i32{20, 500, 10, 250, 70};
    // Search for a target value in the array.
    const z = 70;
    for (0.., a) |i, elem| {
        if (elem == z) {
            print("Found in pos {d}\n", .{i});
            break;
        }
    }
    // BINARY SEARCH
    var arr = [_]i32{10, 20, 70, 250, 500};
    var b: []i32 = arr[0..];
    const y = 250;
    var found:bool = false;
    while (!found and b.len > 0) {
        const i = b.len / 2;
        if (b[i]==y) {
            print("Found {d}!\n", .{y});
            found = true;
        } else if (b[i] >= y) {
                b = b[0..i];
        } else {
                b = b[i+1..];
        }
    }
    if (!found) {
        print("Did not find {d}\n", .{y});
    }
}
