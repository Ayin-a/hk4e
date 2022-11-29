-- 基础信息
local base_info = {
	group_id = 199003026
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	
                       	[26001] = 26002,
                        	[26002] = 26003,
		[26003] = 26001,
                                [26004] = 26009,
                                [26005] = 26004,
                                [26009] = 26005,
                                [26006] = 26007,
                                [26007] = 26010,
                                [26010] = 26006,
                                [26008] = 26011,
                             [26011] = 26012,
                             [26012] = 26008,

                },
                --形态2
                [2] = 
                {
                       	[35001] = 35003,
                        	[35002] = 35004,
		[35003] = 35004,
                                [35004] = 35006,
                                [35005] = 35001,
                                [35006] = 35001,
                },
        }

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[26001] = { config_id = 26001, gadget_id = 70310179, pos = { x = -877.684, y = 213.005, z = 721.648 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26002] = { config_id = 26002, gadget_id = 70310179, pos = { x = -870.440, y = 213.005, z = 730.073 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26003] = { config_id = 26003, gadget_id = 70310179, pos = { x = -876.097, y = 213.005, z = 728.999 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26004] = { config_id = 26004, gadget_id = 70310179, pos = { x = -877.080, y = 213.005, z = 735.732 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26005] = { config_id = 26005, gadget_id = 70310179, pos = { x = -885.422, y = 213.005, z = 737.617 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26006] = { config_id = 26006, gadget_id = 70310179, pos = { x = -871.010, y = 213.005, z = 736.855 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26007] = { config_id = 26007, gadget_id = 70310179, pos = { x = -869.783, y = 213.000, z = 748.579 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26008] = { config_id = 26008, gadget_id = 70310179, pos = { x = -860.546, y = 213.005, z = 727.253 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26009] = { config_id = 26009, gadget_id = 70310179, pos = { x = -876.097, y = 213.005, z = 728.999 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26010] = { config_id = 26010, gadget_id = 70310179, pos = { x = -877.080, y = 213.005, z = 735.732 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26011] = { config_id = 26011, gadget_id = 70310179, pos = { x = -870.387, y = 213.005, z = 729.871 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26012] = { config_id = 26012, gadget_id = 70310179, pos = { x = -871.010, y = 213.005, z = 736.856 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 },
	[26014] = { config_id = 26014, gadget_id = 70290055, pos = { x = -911.545, y = 120.000, z = 662.331 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[26015] = { config_id = 26015, gadget_id = 70290055, pos = { x = -934.538, y = 120.000, z = 667.478 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[26016] = { config_id = 26016, gadget_id = 70290055, pos = { x = -920.643, y = 120.000, z = 680.846 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	[26017] = { config_id = 26017, gadget_id = 70210063, pos = { x = -924.542, y = 123.098, z = 661.311 }, rot = { x = 2.029, y = 139.503, z = 349.742 }, level = 16, chest_drop_id = 1050188, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	[26019] = { config_id = 26019, gadget_id = 70310389, pos = { x = -872.447, y = 213.000, z = 734.727 }, rot = { x = 0.000, y = 255.220, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1026018, name = "QUEST_FINISH_26018", event = EventType.EVENT_QUEST_FINISH, source = "7903003", condition = "", action = "action_EVENT_QUEST_FINISH_26018", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 26001, 26002, 26003, 26004, 26005, 26006, 26007, 26008, 26009, 26010, 26011, 26012, 26014, 26015, 26016, 26017, 26019 },
		regions = { },
		triggers = { "QUEST_FINISH_26018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_26018(context, evt)
	    if ScriptLib.GetHostQuestState(context,7902001)==3 then
	-- 调用提示id为 1111234 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111234) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	end
	return 0
end

require "V2_8/ConstellationPattern"