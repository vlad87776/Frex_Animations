package com.frexanimations;

import net.fabricmc.api.ModInitializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FrexAnimationsMod implements ModInitializer {
    public static final String MOD_ID = "frex_animations";
    public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

    @Override
    public void onInitialize() {
        LOGGER.info("Frex Animation's загружен!");
    }
}
