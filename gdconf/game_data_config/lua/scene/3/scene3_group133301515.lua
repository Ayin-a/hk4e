-- 基础信息
local base_info = {
	group_id = 133301515
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
	{ config_id = 515001, gadget_id = 70290419, pos = { x = -621.000, y = 134.100, z = 3592.470 }, rot = { x = 0.000, y = 194.176, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 515002, gadget_id = 70290565, pos = { x = -620.713, y = 121.802, z = 3588.721 }, rot = { x = 0.000, y = 194.176, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 515004, gadget_id = 70290566, pos = { x = -619.017, y = 121.847, z = 3588.513 }, rot = { x = 0.000, y = 194.176, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7303511开始变亮
	{ config_id = 1515003, name = "QUEST_START_515003", event = EventType.EVENT_QUEST_START, source = "7303511", condition = "", action = "action_EVENT_QUEST_START_515003", trigger_count = 0 },
	-- 7323005结束熄灭（表现）
	{ config_id = 1515005, name = "QUEST_FINISH_515005", event = EventType.EVENT_QUEST_FINISH, source = "7323005", condition = "", action = "action_EVENT_QUEST_FINISH_515005", trigger_count = 0 },
	-- 7303511结束熄灭（保底）
	{ config_id = 1515006, name = "QUEST_FINISH_515006", event = EventType.EVENT_QUEST_FINISH, source = "7303511", condition = "", action = "action_EVENT_QUEST_FINISH_515006", trigger_count = 0 }
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
		gadgets = { 515001 },
		regions = { },
		triggers = { "QUEST_START_515003", "QUEST_FINISH_515005", "QUEST_FINISH_515006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_515003(context, evt)
	-- 将configid为 515001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_515005(context, evt)
	-- 将configid为 515001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_515006(context, evt)
	-- 将configid为 515001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end