pub mod api;

fn main() {
  let metadata = api::read_metadata(String::from("/Users/krtirtho/Music/Spotube/Mayabee - Blue Touch.m4a"));

  println!("Metadata {:?}", metadata);
}