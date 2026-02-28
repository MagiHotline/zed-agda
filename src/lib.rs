use zed_extension_api::{self as zed, Result};

struct AgdaExtension;

impl zed::Extension for AgdaExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        // 1. Try to find it in the standard system PATH
        if let Some(path) = worktree.which("als") {
            return Ok(zed::Command {
                command: path,
                args: vec![],
                env: vec![],
            });
        }

        Err("Could not find 'als' (Agda Language Server) in your PATH. Please ensure you have installed it via cabal and added it to your PATH.".to_string())
    }
}

zed::register_extension!(AgdaExtension);
