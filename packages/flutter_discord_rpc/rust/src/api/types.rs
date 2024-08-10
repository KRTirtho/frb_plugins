/// A struct representing a Discord rich presence activity
/// Note that all methods return `Self`, and can be chained
/// for fluency
#[derive(Clone)]
pub struct RPCActivity {
    pub state: Option<String>,
    pub details: Option<String>,
    pub timestamps: Option<RPCTimestamps>,
    pub party: Option<RPCParty>,
    pub assets: Option<RPCAssets>,
    pub secrets: Option<RPCSecrets>,
    pub buttons: Option<Vec<RPCButton>>,
    pub activity_type: Option<ActivityType>,
}

/// A struct representing an `RPCActivity`'s timestamps
/// Note that all methods return `Self`, and can be chained
/// for fluency
#[derive(Clone)]
pub struct RPCTimestamps {
    pub start: Option<i64>,
    pub end: Option<i64>,
}

/// A struct representing an `RPCActivity`'s game party
/// Note that all methods return `Self`, and can be chained
/// for fluency
#[derive(Clone)]
pub struct RPCParty {
    pub id: Option<String>,
    pub size: Option<[i32; 2]>,
}

/// A struct representing the art assets and hover text
/// used by an `RPCActivity`
/// Note that all methods return `Self`, and can be chained
/// for fluency
#[derive(Clone)]
pub struct RPCAssets {
    pub large_image: Option<String>,
    pub large_text: Option<String>,
    pub small_image: Option<String>,
    pub small_text: Option<String>,
}

/// A struct representing the secrets used by an
/// `RPCActivity`
/// Note that all methods return `Self`, and can be chained
/// for fluency
#[derive(Clone)]
pub struct RPCSecrets {
    pub join: Option<String>,
    pub spectate: Option<String>,
    pub match_str: Option<String>,
}

/// A struct representing the buttons that are
/// attached to an `RPCActivity`
///
/// An activity may have a maximum of 2 buttons
#[derive(Clone)]
pub struct RPCButton {
    pub label: String,
    pub url: String,
}

/// An enum representing the activity type used by an
/// `RPCActivity`
#[derive(Clone, PartialEq)]
pub enum ActivityType {
    /// Activity type "Playing X"
    Playing = 0,
    /// Activity type "Listening to X"
    Listening = 2,
    /// Activity type "Watching X"
    Watching = 3,
    /// Activity type "Competing in X"
    Competing = 5,
}
