-- 基础信息
local base_info = {
	group_id = 199002071
}

-- DEFS_MISCS
local	defs = 
{
	--操作台
	start_operator = 71002,

	--幕布物件configID
	curtain_gadget = 71001,

	--第一幕GroupID
	play_group_1 = 199002036,

	--第二幕GroupID
	play_group_2 = 199002037,

  
      --玩法范围，主机出圈则重置
        play_region = 71003,
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
	[71001] = { config_id = 71001, gadget_id = 70310250, pos = { x = 564.388, y = 130.781, z = -559.098 }, rot = { x = 0.000, y = 224.426, z = 0.000 }, level = 20, server_global_value_config = { ["SGV_Elevator_Height"]= 133.43}, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	[71002] = { config_id = 71002, gadget_id = 70360001, pos = { x = 557.025, y = 127.913, z = -556.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[71003] = { config_id = 71003, shape = RegionShape.SPHERE, radius = 25, pos = { x = 560.052, y = 125.056, z = -564.548 }, area_id = 401, team_ability_group_list = { "RegionAbility_Dreamland_NightCrow" } }
}

-- 触发器
triggers = {
	{ config_id = 1071004, name = "QUEST_START_71004", event = EventType.EVENT_QUEST_START, source = "7902603", condition = "", action = "action_EVENT_QUEST_START_71004", trigger_count = 0 },
	{ config_id = 1071005, name = "GROUP_LOAD_71005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_71005", trigger_count = 0 }
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
		gadgets = { 71001 },
		regions = { 71003 },
		triggers = { "QUEST_START_71004", "GROUP_LOAD_71005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_71004(context, evt)
	-- 创建id为71002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 71002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_71005(context, evt)
	ScriptLib.GetHostQuestState(context,7902603)
	
	if 2 == ScriptLib.GetHostQuestState(context,7902603) or 3 == ScriptLib.GetHostQuestState(context,7902603) then
		ScriptLib.CreateGadget(context, {config_id=71002})
	end
	
	return 0
end

require "V2_8/CrowTheatre_TheatreHandle"