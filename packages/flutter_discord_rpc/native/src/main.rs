pub mod api;
pub mod types;

use std::thread;

use anyhow::Ok;
use api::*;
use types::*;

fn main() -> anyhow::Result<()> {
    discord_init("1176718791388975124".to_string())?;

    discord_connect()?;

    discord_set_activity(RPCActivity {
        assets: Some(RPCAssets {
            large_text: Some("Rust".to_string()),
            small_text: Some("Rust".to_string()),
            large_image: None,
            small_image: None,
        }),
        buttons: Some(vec![
            RPCButton {
                label: "Rust up".to_string(),
                url: "https://rustup.sh".to_string(),
            },
            RPCButton {
                label: "Creates.io".to_string(),
                url: "https://crates.io".to_string(),
            },
        ]),
        details: Some("Rusty a little bit".to_string()),
        state: Some("Learning Rust".to_string()),
        party: None,
        secrets: None,
        timestamps: Some(RPCTimestamps {
            start: Some(
                std::time::SystemTime::now()
                    .duration_since(std::time::UNIX_EPOCH)
                    .unwrap()
                    .as_secs() as i64,
            ),
            end: Some(
                std::time::SystemTime::now()
                    .duration_since(std::time::UNIX_EPOCH)
                    .unwrap()
                    .as_secs() as i64
                    + 100,
            ),
        }),
    })?;

    thread::sleep(std::time::Duration::from_secs(10));

    Ok(())
}
