-- 基础信息
local base_info = {
	group_id = 199002073
}

-- DEFS_MISCS
local	defs = 
{
	--操作台
	start_operator = 73002,

	--幕布物件configID
	curtain_gadget = 73001,

	--第一幕GroupID
	play_group_1 = 199002042,

	--第二幕GroupID
	play_group_2 = 199002043,

  
      --玩法范围，主机出圈则重置
        play_region = 73003,

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
	[73001] = { config_id = 73001, gadget_id = 70310250, pos = { x = 378.955, y = 128.116, z = -462.655 }, rot = { x = 0.000, y = 292.240, z = 0.000 }, level = 20, server_global_value_config = { ["SGV_Elevator_Height"]= 130.23}, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	[73002] = { config_id = 73002, gadget_id = 70360001, pos = { x = 378.760, y = 123.527, z = -455.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[73003] = { config_id = 73003, shape = RegionShape.SPHERE, radius = 40, pos = { x = 370.349, y = 122.426, z = -457.813 }, area_id = 401, team_ability_group_list = { "RegionAbility_Dreamland_NightCrow" } }
}

-- 触发器
triggers = {
	{ config_id = 1073004, name = "QUEST_START_73004", event = EventType.EVENT_QUEST_START, source = "7902603", condition = "", action = "action_EVENT_QUEST_START_73004", trigger_count = 0 },
	{ config_id = 1073005, name = "GROUP_LOAD_73005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_73005", trigger_count = 0 }
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
		gadgets = { 73001 },
		regions = { 73003 },
		triggers = { "QUEST_START_73004", "GROUP_LOAD_73005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_73004(context, evt)
	-- 创建id为73002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 73002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_73005(context, evt)
	ScriptLib.GetHostQuestState(context,7902603)
	
	if 2 == ScriptLib.GetHostQuestState(context,7902603) or 3 == ScriptLib.GetHostQuestState(context,7902603) then
		ScriptLib.CreateGadget(context, {config_id=73002})
	end
	
	return 0
end

require "V2_8/CrowTheatre_TheatreHandle"