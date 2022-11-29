-- 基础信息
local base_info = {
	group_id = 155006048
}

-- DEFS_MISCS
lightinfo = {48001,48002,48003,48004,48005,48006,48007}

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
	{ config_id = 48010, gadget_id = 70360337, pos = { x = 252.005, y = 143.004, z = -224.431 }, rot = { x = 4.871, y = 178.056, z = 16.081 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048001, name = "GROUP_LOAD_48001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_48001", trigger_count = 0 },
	{ config_id = 1048008, name = "VARIABLE_CHANGE_48008", event = EventType.EVENT_VARIABLE_CHANGE, source = "activeCount", condition = "", action = "action_EVENT_VARIABLE_CHANGE_48008", trigger_count = 0 },
	-- 7224411 Start 完成状态
	{ config_id = 1048011, name = "QUEST_START_48011", event = EventType.EVENT_QUEST_START, source = "7224411", condition = "", action = "action_EVENT_QUEST_START_48011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activeCount", value = 0, no_refresh = true },
	{ config_id = 2, name = "gameplayState", value = 0, no_refresh = true }
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
		gadgets = { 48010 },
		regions = { },
		triggers = { "GROUP_LOAD_48001", "VARIABLE_CHANGE_48008", "QUEST_START_48011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_48001(context, evt)
	local count = ScriptLib.GetGroupVariableValue(context, "activeCount") 
			
				if count == 1 then 
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 101) 
				elseif count == 2 then
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 102) 
				elseif count == 3 then 
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 103) 
				elseif count == 4 then
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 201) 
				elseif count == 5 then 
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 202) 
				elseif count == 6 then 
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 203) 
				elseif count == 7 then 
					ScriptLib.SetGadgetStateByConfigId(context, 48010, 204) 
				end
				
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48008(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
		
			local count = ScriptLib.GetGroupVariableValue(context, "activeCount") 
		
			if count == 1 then 
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 101) 
			elseif count == 2 then
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 102) 
			elseif count == 3 then 
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 103) 
			elseif count == 4 then
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 201) 
			elseif count == 5 then 
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 202) 
			elseif count == 6 then 
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 203) 
			elseif count == 7 then 
				ScriptLib.SetGadgetStateByConfigId(context, 48010, 204) 
			end
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_48011(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, 48010, 901) 
		return 0
end