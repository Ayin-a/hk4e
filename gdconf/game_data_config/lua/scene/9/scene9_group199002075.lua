-- 基础信息
local base_info = {
	group_id = 199002075
}

-- DEFS_MISCS
local	defs = 
{
	--操作台
	start_operator = 75002,

	--幕布物件configID
	curtain_gadget = 75001,

	--第一幕GroupID
	play_group_1 = 199002044,

	--第二幕GroupID
	play_group_2 = 199002045,

  
      --玩法范围，主机出圈则重置
        play_region = 75003,
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
	[75001] = { config_id = 75001, gadget_id = 70310250, pos = { x = 460.814, y = 124.908, z = -728.152 }, rot = { x = 0.000, y = 61.053, z = 0.000 }, level = 20, server_global_value_config = { ["SGV_Elevator_Height"]= 127.37}, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	[75002] = { config_id = 75002, gadget_id = 70360001, pos = { x = 466.803, y = 122.427, z = -733.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 离开重置
	[75003] = { config_id = 75003, shape = RegionShape.SPHERE, radius = 25, pos = { x = 467.282, y = 119.344, z = -726.250 }, area_id = 401, team_ability_group_list = { "RegionAbility_Dreamland_NightCrow" } }
}

-- 触发器
triggers = {
	{ config_id = 1075004, name = "QUEST_START_75004", event = EventType.EVENT_QUEST_START, source = "7902603", condition = "", action = "action_EVENT_QUEST_START_75004", trigger_count = 0 },
	{ config_id = 1075005, name = "GROUP_LOAD_75005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_75005", trigger_count = 0 }
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
		gadgets = { 75001 },
		regions = { 75003 },
		triggers = { "QUEST_START_75004", "GROUP_LOAD_75005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_75004(context, evt)
	-- 创建id为75002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 75002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_75005(context, evt)
	ScriptLib.GetHostQuestState(context,7902603)
	
	if 2 == ScriptLib.GetHostQuestState(context,7902603) or 3 == ScriptLib.GetHostQuestState(context,7902603) then
		ScriptLib.CreateGadget(context, {config_id=75002})
	end
	
	return 0
end

require "V2_8/CrowTheatre_TheatreHandle"