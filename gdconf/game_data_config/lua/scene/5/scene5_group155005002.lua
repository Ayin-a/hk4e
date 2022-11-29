-- 基础信息
local base_info = {
	group_id = 155005002
}

-- DEFS_MISCS
gadgetList = 
{
	
	155005040,
	
	155005100,
	155005289,

	155005350,

	155008098,
	155005160,

	155005222,
	155005258,
	155005272,
	155005273,
	155005323,
	155005331,
	155005345,
	155005379,
	155006056,
	155006073,
	155006133,
	155006134,
	155006135,
	155006137,
	155006138,
	155006139,
	155006140,
	155006141,
	155006142,
	155006143,
	155006144,
	155006145,
	155006195,
	155006208,
	155008072,
	155008148,
	155008149,
	155008168,
	155008188,
	155008216,
	155006136,
	155008112,
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7217728 Start
	{ config_id = 1002001, name = "QUEST_START_2001", event = EventType.EVENT_QUEST_START, source = "7217728", condition = "", action = "action_EVENT_QUEST_START_2001", trigger_count = 0 },
	{ config_id = 1002002, name = "GROUP_LOAD_2002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2002", action = "action_EVENT_GROUP_LOAD_2002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActiveAll", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_2001", "GROUP_LOAD_2002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_2001(context, evt)
	ScriptLib.SetGroupVariableValue(context,"isActiveAll",1)		
	local state
			for	i=1, #gadgetList do
				state = ScriptLib.GetGroupVariableValueByGroup(context, "gameplayState", gadgetList[i]) 
				if state ~= 2 then 
					ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2,  gadgetList[i])
				end
			end
	
		
		return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2002(context, evt)
	-- 判断变量"isActiveAll"为1
	if ScriptLib.GetGroupVariableValue(context, "isActiveAll") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2002(context, evt)
	local state
			for	i=1, #gadgetList do
				state = ScriptLib.GetGroupVariableValueByGroup(context, "gameplayState", gadgetList[i]) 
				if state ~= 2 then 
					ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2,  gadgetList[i])
				end
			end
	
	return 0
end