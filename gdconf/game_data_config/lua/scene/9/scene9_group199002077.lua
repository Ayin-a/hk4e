-- 基础信息
local base_info = {
	group_id = 199002077
}

-- DEFS_MISCS
local	defs = 
{
	--操作台
	start_operator = 77002,

	--幕布物件configID
	curtain_gadget = 77001,

	--第一幕GroupID
	play_group_1 = 199002039,

	--第二幕GroupID
	play_group_2 = 199002040,

	--散场GroupID
	play_group_3 = 199002078,
  
      --玩法范围，主机出圈则重置
        play_region = 77005,
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
	[77001] = { config_id = 77001, gadget_id = 70310250, pos = { x = 495.220, y = 131.463, z = -447.550 }, rot = { x = 0.000, y = 85.701, z = 0.000 }, level = 20, persistent = true, server_global_value_config = { ["SGV_Elevator_Height"]= 134.15}, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	[77002] = { config_id = 77002, gadget_id = 70360001, pos = { x = 498.156, y = 128.427, z = -454.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[77003] = { config_id = 77003, gadget_id = 70360002, pos = { x = 500.589, y = 123.398, z = -443.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[77005] = { config_id = 77005, shape = RegionShape.SPHERE, radius = 25, pos = { x = 505.716, y = 124.719, z = -448.151 }, area_id = 401, team_ability_group_list = { "RegionAbility_Dreamland_NightCrow" } }
}

-- 触发器
triggers = {
	{ config_id = 1077004, name = "QUEST_FINISH_77004", event = EventType.EVENT_QUEST_FINISH, source = "7902607", condition = "", action = "action_EVENT_QUEST_FINISH_77004", trigger_count = 0 },
	{ config_id = 1077006, name = "QUEST_START_77006", event = EventType.EVENT_QUEST_START, source = "7902604", condition = "", action = "action_EVENT_QUEST_START_77006", trigger_count = 0 },
	{ config_id = 1077007, name = "GROUP_LOAD_77007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_77007", trigger_count = 0 }
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
		gadgets = { 77001, 77003 },
		regions = { 77005 },
		triggers = { "QUEST_FINISH_77004", "QUEST_START_77006", "GROUP_LOAD_77007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_77004(context, evt)
	-- 创建id为77002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_77006(context, evt)
	-- 创建id为77002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_77007(context, evt)
	ScriptLib.GetHostQuestState(context,7902604)
	
	if 2 == ScriptLib.GetHostQuestState(context,7902604) or 3 == ScriptLib.GetHostQuestState(context,7902604) then
		ScriptLib.CreateGadget(context, {config_id=77002})
	end
	
	return 0
end

require "V2_8/CrowTheatre_TheatreHandle"