// Learning data structure algorithms with Zig.
const std = @import("std");

fn select_sort(arr: []const i64) !void {
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
    std.debug.print("Selection sort: {any}\n", .{sort});
}

fn bubble_sort(arr: []const i64) !void {
    // Copy the array.
    var sort: [5]i64 = arr[0..5].*;
    // For the length of the array.
    for (0..sort.len-1) |i| {
        for (i+1..sort.len) |j| {
            if (sort[j]<sort[i]) {
                const elem_one:i64 = sort[i];
                const elem_two:i64 = sort[j];
                sort[i] = elem_two;
                sort[j] = elem_one;
            }
        }
    }
    // Print the algo.
    std.debug.print("Bubble sort: {any}\n", .{sort});
}

pub fn main() !void {
    const arr = [5]i64{64, 25, 12, 22, 11};
    // Select sort.
    try select_sort(&arr);
    // Bubble sort.
    try bubble_sort(&arr);
}

