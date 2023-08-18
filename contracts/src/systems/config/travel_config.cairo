#[system]
mod SetTravelConfig {
    use traits::Into;

    use eternum::components::config::WorldConfig;
    use eternum::constants::TRANSPORT_CONFIG_ID;
    use eternum::components::config::TravelConfig;

    use dojo::world::Context;

    fn execute(ctx: Context, free_transport_per_city: u128) {
        // TODO: can only be executed by Governance Vote
        set!(ctx.world, (TravelConfig { config_id: TRANSPORT_CONFIG_ID, free_transport_per_city }));
    }
}
