const tv = @import("std");
//const print = tv.io.getStdOut().writer(); // Zig handles libraries at compile time not really a surprise
// but this : tv.io.getStdOut().writer(); needs a windows api or something like that that requires assembly,
// and zig can't run that on compile time, so it will trow an error

pub fn main() !void {
    const print = tv.io.getStdOut().writer();
    try print.print("\n", .{});
    const arr = [_]u8{
        1,
        2,
        3,
        4,
    };
    const len = arr.len;
    try print.print("Lenght:   {d}", .{len});
}
