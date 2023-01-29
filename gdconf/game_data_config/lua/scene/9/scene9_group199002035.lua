-- 基础信息
local base_info = {
	group_id = 199002035
}

-- DEFS_MISCS
local	defs = 
{
	--操作台
	start_operator = 35002,

	--幕布物件configID
	curtain_gadget = 35001,

	--第一幕GroupID
	play_group_1 = 199002020,

	--第二幕GroupID
	play_group_2 = 199002034,


        --玩法范围，主机出圈则重置
        play_region = 35006,

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
	-- 勿手动控制State
	[35001] = { config_id = 35001, gadget_id = 70310307, pos = { x = 583.320, y = 268.332, z = -535.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, server_global_value_config = { ["SGV_Elevator_Height"]= 273.35}, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	-- 总控操作台
	[35002] = { config_id = 35002, gadget_id = 70360001, pos = { x = 590.368, y = 263.937, z = -532.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	[35006] = { config_id = 35006, shape = RegionShape.SPHERE, radius = 25, pos = { x = 581.694, y = 262.737, z = -527.553 }, area_id = 401, team_ability_group_list = { "RegionAbility_Dreamland_NightCrow" } }
}

-- 触发器
triggers = {
	{ config_id = 1035003, name = "QUEST_START_35003", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_35003", trigger_count = 0 },
	{ config_id = 1035004, name = "QUEST_START_35004", event = EventType.EVENT_QUEST_START, source = "7902602", condition = "", action = "action_EVENT_QUEST_START_35004", trigger_count = 0 },
	{ config_id = 1035005, name = "GROUP_LOAD_35005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_35005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 35001 },
		regions = { 35006 },
		triggers = { "QUEST_START_35003", "QUEST_START_35004", "GROUP_LOAD_35005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_35003(context, evt)
	if 7902601 == evt.param1 then
		ScriptLib.TryRecordActivityPushTips(context, 2014007)
		
		ScriptLib.SetGroupVariableValue(context, "start", 3)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_35004(context, evt)
	-- 创建id为35002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 35002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_35005(context, evt)
	ScriptLib.GetHostQuestState(context,7902602)
	
	if 2 == ScriptLib.GetHostQuestState(context,7902602) or 3 == ScriptLib.GetHostQuestState(context,7902602) then
		ScriptLib.CreateGadget(context, {config_id=35002})
	end
	
	return 0
end

require "V2_8/CrowTheatre_TheatreHandle"