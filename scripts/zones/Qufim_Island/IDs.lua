-----------------------------------
-- Area: Qufim_Island
-----------------------------------
zones = zones or {}

zones[xi.zone.QUFIM_ISLAND] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED        = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                  = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                   = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED               = 6393,  -- Obtained key item: <keyitem>.
        KEYITEM_LOST                   = 6394,  -- Lost key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY        = 6404,  -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING            = 6405,  -- You are suddenly overcome with a sense of foreboding...
        NOW_IS_NOT_THE_TIME            = 6406,  -- Now is not the time for that!
        WAIT_A_BIT_LONGER              = 6407,  -- It seems that you will have to wait a bit longer...
        FELLOW_MESSAGE_OFFSET          = 6419,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS            = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY        = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                   = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED  = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                  = 7067,  -- Tallying conquest results...
        BEASTMEN_BANNER                = 7148,  -- There is a beastmen's banner.
        FISHING_MESSAGE_OFFSET         = 7226,  -- You can't fish here.
        THESE_WITHERED_FLOWERS         = 7346,  -- These withered flowers seem unable to bloom.
        NOW_THAT_NIGHT_HAS_FALLEN      = 7347,  -- Now that night has fallen, the flowers bloom with a strange glow.
        CONQUEST                       = 7395,  -- You've earned conquest points!
        AN_EMPTY_LIGHT_SWIRLS          = 7754,  -- An empty light swirls about the cave, eating away at the surroundings...
        GARRISON_BASE                  = 7759,  -- Hm? What is this? %? How do I know this is not some [San d'Orian/Bastokan/Windurstian] trick?
        GIGANTIC_FOOTPRINT             = 7838,  -- There is a gigantic footprint here.
        ASA_SNOW                       = 7851,  -- You see the following words scrawled into the snow: Shantotto Empire Provisional Headquarters.
        YOU_CANNOT_ENTER_DYNAMIS       = 7864,  -- You cannot enter Dynamis - [Dummy/San d'Oria/Bastok/Windurst/Jeuno/Beaucedine/Xarcabard/Valkurm/Buburimu/Qufim/Tavnazia] for <number> [day/days] (Vana'diel time).
        PLAYERS_HAVE_NOT_REACHED_LEVEL = 7866,  -- Players who have not reached level <number> are prohibited from entering Dynamis.
        DYNA_NPC_DEFAULT_MESSAGE       = 7988,  -- There is a strange symbol drawn here. A haunting chill sweeps through you as you gaze upon it...
        PLAYER_OBTAINS_ITEM            = 8062,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM          = 8063,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM       = 8064,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP           = 8065,  -- You already possess that temporary item.
        NO_COMBINATION                 = 8070,  -- You were unable to enter a combination.
        UNITY_WANTED_BATTLE_INTERACT   = 8132,  -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
        REGIME_REGISTERED              = 10346, -- New training regime registered!
        LEARNS_SPELL                   = 12664, -- <name> learns <spell>!
        UNCANNY_SENSATION              = 12666, -- You are assaulted by an uncanny sensation.
        COMMON_SENSE_SURVIVAL          = 12673, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
        HOMEPOINT_SET                  = 12715, -- Home point set!
    },
    mob =
    {
        SLIPPERY_SUCKER   = GetFirstID('Slippery_Sucker'),
        TRICKSTER_KINETIX = GetFirstID('Trickster_Kinetix'),
        OPHIOTAURUS       = GetFirstID('Ophiotaurus'),
        KRAKEN_NM         = GetTableOfIDs('Kraken')[3],
    },
    npc =
    {
        OVERSEER_BASE = GetFirstID('Pitoire_RK'),
    },
}

return zones[xi.zone.QUFIM_ISLAND]
