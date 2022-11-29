-- 基础信息
local base_info = {
	group_id = 302001092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 21010201, pos = { x = 783.383, y = 201.812, z = 540.573 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92002, monster_id = 21010201, pos = { x = 775.185, y = 200.411, z = 549.177 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92003, monster_id = 21010201, pos = { x = 782.663, y = 201.070, z = 553.070 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92004, monster_id = 21010301, pos = { x = 787.345, y = 201.821, z = 543.549 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92005, monster_id = 21010301, pos = { x = 773.706, y = 200.491, z = 544.598 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92006, monster_id = 21010501, pos = { x = 789.313, y = 201.612, z = 548.663 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92007, monster_id = 21011001, pos = { x = 787.139, y = 201.418, z = 552.367 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92008, monster_id = 21020201, pos = { x = 779.472, y = 201.499, z = 537.270 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 92009, monster_id = 21020101, pos = { x = 775.578, y = 200.826, z = 539.739 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 92010, monster_id = 21030301, pos = { x = 777.644, y = 200.513, z = 552.657 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92011, monster_id = 21010201, pos = { x = 775.185, y = 200.411, z = 549.177 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92012, monster_id = 21010201, pos = { x = 783.383, y = 201.812, z = 540.573 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92013, monster_id = 21010201, pos = { x = 782.663, y = 201.070, z = 553.070 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92014, monster_id = 21010301, pos = { x = 787.345, y = 201.821, z = 543.549 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92015, monster_id = 21010301, pos = { x = 773.706, y = 200.491, z = 544.598 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92016, monster_id = 21010502, pos = { x = 789.313, y = 201.612, z = 548.663 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92017, monster_id = 21011002, pos = { x = 787.139, y = 201.418, z = 552.367 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 92018, monster_id = 21020202, pos = { x = 779.472, y = 201.499, z = 537.270 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 92019, monster_id = 21020101, pos = { x = 775.578, y = 200.826, z = 539.739 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 92020, monster_id = 21030303, pos = { x = 777.644, y = 200.513, z = 552.657 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 }
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
	{ config_id = 1092021, name = "ANY_MONSTER_LIVE_92021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_92021", action = "action_EVENT_ANY_MONSTER_LIVE_92021", trigger_count = 0 },
	{ config_id = 1092022, name = "MONSTER_TIDE_DIE_92022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_92022", action = "action_EVENT_MONSTER_TIDE_DIE_92022", trigger_count = 0 },
	{ config_id = 1092023, name = "MONSTER_TIDE_DIE_92023", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_92023", action = "action_EVENT_MONSTER_TIDE_DIE_92023", trigger_count = 0 },
	{ config_id = 1092024, name = "MONSTER_TIDE_DIE_92024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_92024", action = "action_EVENT_MONSTER_TIDE_DIE_92024", trigger_count = 0 },
	{ config_id = 1092025, name = "MONSTER_TIDE_DIE_92025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_92025", action = "action_EVENT_MONSTER_TIDE_DIE_92025", trigger_count = 0 },
	{ config_id = 1092026, name = "MONSTER_TIDE_DIE_92026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_92026", action = "action_EVENT_MONSTER_TIDE_DIE_92026", trigger_count = 0 },
	{ config_id = 1092027, name = "MONSTER_TIDE_DIE_92027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_92027", action = "action_EVENT_MONSTER_TIDE_DIE_92027", trigger_count = 0 },
	{ config_id = 1092028, name = "ANY_MONSTER_LIVE_92028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_92028", action = "action_EVENT_ANY_MONSTER_LIVE_92028", trigger_count = 0 },
	{ config_id = 1092029, name = "MONSTER_TIDE_DIE_92029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_92029", action = "action_EVENT_MONSTER_TIDE_DIE_92029", trigger_count = 0 },
	{ config_id = 1092030, name = "MONSTER_TIDE_DIE_92030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_92030", action = "action_EVENT_MONSTER_TIDE_DIE_92030", trigger_count = 0 },
	{ config_id = 1092031, name = "MONSTER_TIDE_DIE_92031", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_92031", action = "action_EVENT_MONSTER_TIDE_DIE_92031", trigger_count = 0 },
	{ config_id = 1092032, name = "MONSTER_TIDE_DIE_92032", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_92032", action = "action_EVENT_MONSTER_TIDE_DIE_92032", trigger_count = 0 },
	{ config_id = 1092033, name = "MONSTER_TIDE_DIE_92033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_92033", action = "action_EVENT_MONSTER_TIDE_DIE_92033", trigger_count = 0 },
	{ config_id = 1092034, name = "MONSTER_TIDE_DIE_92034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_92034", action = "action_EVENT_MONSTER_TIDE_DIE_92034", trigger_count = 0 }
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
	suite = 5,
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
		monsters = { 92001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_92021", "MONSTER_TIDE_DIE_92022", "MONSTER_TIDE_DIE_92023", "MONSTER_TIDE_DIE_92024", "MONSTER_TIDE_DIE_92025", "MONSTER_TIDE_DIE_92026", "MONSTER_TIDE_DIE_92027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 92002, 92003, 92004, 92005, 92006, 92007, 92008, 92009, 92010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 92012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_92028", "MONSTER_TIDE_DIE_92029", "MONSTER_TIDE_DIE_92030", "MONSTER_TIDE_DIE_92031", "MONSTER_TIDE_DIE_92032", "MONSTER_TIDE_DIE_92033", "MONSTER_TIDE_DIE_92034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 92011, 92013, 92014, 92015, 92016, 92017, 92018, 92019, 92020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_92021(context, evt)
	if 92001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_92021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001092, {92002,92003}, 4, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001092, {92004,92005}, 4, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001092, {92006,92007}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92022(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92022(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001092, {92008}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92023(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92023(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001092, {92009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92024(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001092, {92010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001092, {92002,92003}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92026(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92026(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001092, {92004,92005}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92027(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001092, {92006,92007}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_92028(context, evt)
	if 92012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_92028(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001092, {92011,92013}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001092, {92014,92015}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001092, {92016,92017}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92029(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92029(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001092, {92018}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92030(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92030(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001092, {92019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92031(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92031(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001092, {92020}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92032(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001092, {92011,92013}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92033(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92033(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001092, {92014,92015}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_92034(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_92034(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001092, {92016,92017}, 4, 2, 2) then
		return -1
	end
	
	return 0
end