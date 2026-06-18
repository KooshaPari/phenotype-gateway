//! Router plane trait sketch — Wave H13 spike.
//! HTTP `/v1/*` delegates to cliproxy++ (Go); combo logic stays here.

pub trait RouterPlane {
    fn select_route(&self, model_id: &str) -> Option<String>;
}

pub struct ComboRouter;

impl RouterPlane for ComboRouter {
    fn select_route(&self, model_id: &str) -> Option<String> {
        if model_id.starts_with("auto") {
            Some("cliproxy-delegate".into())
        } else {
            None
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn auto_prefix_delegates() {
        let r = ComboRouter;
        assert!(r.select_route("auto/coding").is_some());
    }
}
