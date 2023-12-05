import { Components } from "@dojoengine/recs";
import { createEntitySubscription } from "./createEntitySubscription";
import { createEventSubscription } from "./createEventSubscription";
import { COMBAT_EVENT, TRANSFER_EVENT } from "@bibliothecadao/eternum";
import { numberToHex } from "../utils/utils";

export const createUpdates = async (components: Components) => {
  console.log("createUpdates", components);
  // const entityUpdates = await createEntitySubscription(components);
  const eventUpdates = {
    createCombatEvents: async (entityId: bigint) => createEventSubscription([COMBAT_EVENT, entityId.toString(), "*"]),
    createTransferEvents: async (entityId: bigint) =>
      createEventSubscription([TRANSFER_EVENT, entityId.toString(), "*"]),
  };

  return {
    // entityUpdates,
    eventUpdates,
  };
};
