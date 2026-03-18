const std = @import("std");
const simd = @import("src/utils/simd.zig");

pub fn main() !void {
    const str = "hello world";
    if (simd.simdIndexOfScalar(str, 'w')) |pos| {
        std.debug.print("Found 'w' at position: {}\n", .{pos});
    }
}
