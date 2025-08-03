// Zig uses unit testing, to check if a function works without having to run the full app to wait for it to crash
// Much more efficient to find bugs

const std = @import("std"); //const std = @import(std); --> Gives an error package names must be strings
const expect = std.testing.expect;

test "never works" {
    try expect(false);
}
pub fn main() !void {
    const num: u16 = 256;
    //supposes to crash yep it crashes if I put 256, so I should use u16 instead of u8
    //if I use i8 it will also crush
    // 0 -> 255 values
    // var is another keyword for a variable so you can't call a variable var, my bad gang
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello world\nyesssir\n", .{}); // If we put spaces after \n it appears on the terminal
    try stdout.print("Variable num is {d}", .{num});
}
