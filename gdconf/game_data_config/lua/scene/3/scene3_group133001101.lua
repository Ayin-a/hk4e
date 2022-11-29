-- 基础信息
local base_info = {
	group_id = 133001101
}

-- DEFS_MISCS
local group_level_difficulty = {
	[133001087] = {level = 1, difficulty = 1},
	[133001111] = {level = 1, difficulty = 2},
	[133001115] = {level = 1, difficulty = 3},
	[133001116] = {level = 1, difficulty = 4},
	[133001127] = {level = 2, difficulty = 1},
	[133001130] = {level = 2, difficulty = 2},
	[133001131] = {level = 2, difficulty = 3},
	[133001132] = {level = 2, difficulty = 4},
	[133001121] = {level = 3, difficulty = 1},
	[133001122] = {level = 3, difficulty = 2},
	[133001123] = {level = 3, difficulty = 3},
	[133001124] = {level = 3, difficulty = 4},
	[133001133] = {level = 4, difficulty = 1},
	[133001134] = {level = 4, difficulty = 2},
	[133001135] = {level = 4, difficulty = 3},
	[133001136] = {level = 4, difficulty = 4},
	[133001137] = {level = 5, difficulty = 1},
	[133001138] = {level = 5, difficulty = 2},
	[133001139] = {level = 5, difficulty = 3},
	[133001140] = {level = 5, difficulty = 4},
	[133001141] = {level = 6, difficulty = 1},
	[133001148] = {level = 6, difficulty = 2},
	[133001149] = {level = 6, difficulty = 3},
	[133001150] = {level = 6, difficulty = 4},
	[133001151] = {level = 7, difficulty = 1},
	[133001163] = {level = 7, difficulty = 2},
	[133001164] = {level = 7, difficulty = 3},
	[133001167] = {level = 7, difficulty = 4}

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
	{ config_id = 101001, gadget_id = 70380233, pos = { x = 1882.049, y = 195.897, z = -1550.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101002, name = "QUEST_START_101002", event = EventType.EVENT_QUEST_START, source = "7051304", condition = "", action = "action_EVENT_QUEST_START_101002", trigger_count = 0 },
	{ config_id = 1101003, name = "QUEST_START_101003", event = EventType.EVENT_QUEST_START, source = "7051305", condition = "", action = "action_EVENT_QUEST_START_101003", trigger_count = 0 },
	{ config_id = 1101004, name = "QUEST_START_101004", event = EventType.EVENT_QUEST_START, source = "7051306", condition = "", action = "action_EVENT_QUEST_START_101004", trigger_count = 0 },
	{ config_id = 1101005, name = "GROUP_LOAD_101005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101005", action = "action_EVENT_GROUP_LOAD_101005" }
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
		gadgets = { 101001 },
		regions = { },
		triggers = { "QUEST_START_101002", "QUEST_START_101003", "QUEST_START_101004", "GROUP_LOAD_101005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_101002(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_101003(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_101004(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_101005(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101005(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/V2_8ArenaChallenge_Control"