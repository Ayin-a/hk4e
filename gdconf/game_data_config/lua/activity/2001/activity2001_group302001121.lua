-- 基础信息
local base_info = {
	group_id = 302001121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 20010501, pos = { x = 309.864, y = 203.393, z = 485.225 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 121002, monster_id = 20010601, pos = { x = 306.772, y = 202.889, z = 490.635 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121003, monster_id = 20010601, pos = { x = 300.913, y = 203.761, z = 478.381 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121004, monster_id = 20010701, pos = { x = 308.723, y = 203.654, z = 480.672 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121005, monster_id = 20010701, pos = { x = 298.379, y = 203.877, z = 483.506 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121006, monster_id = 21010501, pos = { x = 310.659, y = 203.218, z = 488.199 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 121007, monster_id = 21010501, pos = { x = 298.566, y = 203.782, z = 490.063 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 121008, monster_id = 20010604, pos = { x = 298.601, y = 203.838, z = 480.369 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121009, monster_id = 20010702, pos = { x = 308.190, y = 203.156, z = 488.094 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121010, monster_id = 21030301, pos = { x = 303.096, y = 203.130, z = 490.925 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121011, monster_id = 20010604, pos = { x = 306.772, y = 202.889, z = 490.635 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121012, monster_id = 20010501, pos = { x = 309.864, y = 203.393, z = 485.225 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 121013, monster_id = 20010604, pos = { x = 300.913, y = 203.761, z = 478.381 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121014, monster_id = 20010702, pos = { x = 308.723, y = 203.654, z = 480.672 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121015, monster_id = 20010702, pos = { x = 298.379, y = 203.877, z = 483.506 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121016, monster_id = 21010502, pos = { x = 310.659, y = 203.218, z = 488.199 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 121017, monster_id = 21010502, pos = { x = 298.566, y = 203.782, z = 490.063 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 121018, monster_id = 20010604, pos = { x = 298.601, y = 203.838, z = 480.369 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121019, monster_id = 20010702, pos = { x = 308.190, y = 203.156, z = 488.094 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 },
	{ config_id = 121020, monster_id = 21030304, pos = { x = 303.096, y = 203.130, z = 490.925 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 9 }
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
	{ config_id = 1121021, name = "ANY_MONSTER_LIVE_121021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_121021", action = "action_EVENT_ANY_MONSTER_LIVE_121021", trigger_count = 0 },
	{ config_id = 1121022, name = "MONSTER_TIDE_DIE_121022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_121022", action = "action_EVENT_MONSTER_TIDE_DIE_121022", trigger_count = 0 },
	{ config_id = 1121023, name = "MONSTER_TIDE_DIE_121023", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_121023", action = "action_EVENT_MONSTER_TIDE_DIE_121023", trigger_count = 0 },
	{ config_id = 1121024, name = "MONSTER_TIDE_DIE_121024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_121024", action = "action_EVENT_MONSTER_TIDE_DIE_121024", trigger_count = 0 },
	{ config_id = 1121025, name = "MONSTER_TIDE_DIE_121025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_121025", action = "action_EVENT_MONSTER_TIDE_DIE_121025", trigger_count = 0 },
	{ config_id = 1121026, name = "MONSTER_TIDE_DIE_121026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_121026", action = "action_EVENT_MONSTER_TIDE_DIE_121026", trigger_count = 0 },
	{ config_id = 1121027, name = "MONSTER_TIDE_DIE_121027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_121027", action = "action_EVENT_MONSTER_TIDE_DIE_121027", trigger_count = 0 },
	{ config_id = 1121028, name = "ANY_MONSTER_LIVE_121028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_121028", action = "action_EVENT_ANY_MONSTER_LIVE_121028", trigger_count = 0 },
	{ config_id = 1121029, name = "MONSTER_TIDE_DIE_121029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_121029", action = "action_EVENT_MONSTER_TIDE_DIE_121029", trigger_count = 0 },
	{ config_id = 1121030, name = "MONSTER_TIDE_DIE_121030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_121030", action = "action_EVENT_MONSTER_TIDE_DIE_121030", trigger_count = 0 },
	{ config_id = 1121031, name = "MONSTER_TIDE_DIE_121031", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_121031", action = "action_EVENT_MONSTER_TIDE_DIE_121031", trigger_count = 0 },
	{ config_id = 1121032, name = "MONSTER_TIDE_DIE_121032", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_121032", action = "action_EVENT_MONSTER_TIDE_DIE_121032", trigger_count = 0 },
	{ config_id = 1121033, name = "MONSTER_TIDE_DIE_121033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_121033", action = "action_EVENT_MONSTER_TIDE_DIE_121033", trigger_count = 0 },
	{ config_id = 1121034, name = "MONSTER_TIDE_DIE_121034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_121034", action = "action_EVENT_MONSTER_TIDE_DIE_121034", trigger_count = 0 }
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
		monsters = { 121001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_121021", "MONSTER_TIDE_DIE_121022", "MONSTER_TIDE_DIE_121023", "MONSTER_TIDE_DIE_121024", "MONSTER_TIDE_DIE_121025", "MONSTER_TIDE_DIE_121026", "MONSTER_TIDE_DIE_121027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 121002, 121003, 121004, 121005, 121006, 121007, 121008, 121009, 121010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 121012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_121028", "MONSTER_TIDE_DIE_121029", "MONSTER_TIDE_DIE_121030", "MONSTER_TIDE_DIE_121031", "MONSTER_TIDE_DIE_121032", "MONSTER_TIDE_DIE_121033", "MONSTER_TIDE_DIE_121034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 121011, 121013, 121014, 121015, 121016, 121017, 121018, 121019, 121020 },
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
function condition_EVENT_ANY_MONSTER_LIVE_121021(context, evt)
	if 121001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_121021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001121, {121002,121003}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001121, {121004,121005}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001121, {121006,121007}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121022(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121022(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001121, {121008}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121023(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121023(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001121, {121009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121024(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001121, {121010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001121, {121002,121003}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121026(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121026(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001121, {121004,121005}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121027(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001121, {121006,121007}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_121028(context, evt)
	if 121012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_121028(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001121, {121011,121013}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001121, {121014,121015}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001121, {121016,121017}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121029(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121029(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001121, {121018}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121030(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121030(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001121, {121019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121031(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121031(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001121, {121020}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121032(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001121, {121011,121013}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121033(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121033(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001121, {121014,121015}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_121034(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_121034(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001121, {121016,121017}, 4, 1, 2) then
		return -1
	end
	
	return 0
end