use std::env;
use std::fs;

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() < 3 {
        eprintln!("Usage: {} tokenize <filename>", args[0]);
        return;
    }

    let command = &args[1];
    let filename = &args[2];

    match command.as_str() {
        "tokenize" => {
            eprintln!("Logs from your program will appear here!");

            let file_contents = fs::read_to_string(filename).unwrap_or_else(|_| {
                eprintln!("Failed to read file {}", filename);
                String::new()
            });

            if !file_contents.is_empty() {
                println!("{}",file_contents);
                for ch in file_contents.chars() {
                    tokenize(ch);
                }
            } else {
                println!("EOF  null"); // Placeholder, remove this line when implementing the scanner
            }
        }
        _ => {
            eprintln!("Unknown command: {}", command);
            return;
        }
    }
}

fn tokenize(input: char) {
    match input {
        '(' => println!("LEFT_PAREN ( null"),
        ')' => println!("RIGHT_PAREN ) null"),
        _ => {}
    }
}
