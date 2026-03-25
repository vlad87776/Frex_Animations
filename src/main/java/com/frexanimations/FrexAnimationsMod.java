package com.frexanimations;

import net.minecraftforge.fml.common.Mod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Mod(FrexAnimationsMod.MOD_ID)
public class FrexAnimationsMod {
    public static final String MOD_ID = "frex_animations";
    private static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

    public FrexAnimationsMod() {
        LOGGER.info("Frex Animation's (Forge 1.20.1) loaded");
    }
}
