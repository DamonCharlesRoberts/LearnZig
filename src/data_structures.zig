// Learning data structure algorithms with Zig.
const std = @import("std");

fn select_search(arr: []const i64) !void {
    // Copy the array.
    var sort: [5]i64 = arr[0..5].*;
    // For the length of the array.
    for (0..sort.len) |i| {
        // Grab the current element at that location.
        var min:i64 = sort[i];
        // And for the other elements in the array.
        for (i+1..sort.len) |j| {
            // Check if the original element,
            // is smaller than the other elements.
            // If so, then do the following:
            if (sort[j] < min) {
                // Set the minimum to the other element.
                min = sort[j];
                // Set the original element in the place
                // of the current element.
                sort[j] = sort[i];
                // Set the current element in the place
                // of the original element.
                sort[i] = min;
            }
        }
    }
    // Print the algo.
    std.debug.print("{any}\n", .{sort});
}

pub fn main() !void {
    const arr = [5]i64{64, 25, 12, 22, 11};
    // Select search.
    try select_search(&arr);
}

