const std = @import("std"); //const std = @import(std); --> Gives an error package names must be strings

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Hello world\nyesssir", .{}); // If we put spaces after \n it appears on the terminal
}
