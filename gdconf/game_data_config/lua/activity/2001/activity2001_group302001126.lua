-- 基础信息
local base_info = {
	group_id = 302001126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 25010201, pos = { x = -736.850, y = 222.805, z = 346.477 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 126002, monster_id = 25010701, pos = { x = -744.017, y = 222.305, z = 357.064 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126003, monster_id = 25010701, pos = { x = -739.098, y = 222.125, z = 358.602 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126004, monster_id = 25060101, pos = { x = -735.147, y = 222.670, z = 348.423 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126005, monster_id = 25060101, pos = { x = -745.341, y = 223.195, z = 350.675 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126006, monster_id = 25010501, pos = { x = -733.482, y = 222.457, z = 354.145 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 126007, monster_id = 25010301, pos = { x = -735.253, y = 222.303, z = 356.615 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 126008, monster_id = 25030301, pos = { x = -740.166, y = 222.766, z = 344.857 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126009, monster_id = 25070101, pos = { x = -745.298, y = 223.295, z = 347.264 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126010, monster_id = 25030201, pos = { x = -741.919, y = 222.071, z = 357.889 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126011, monster_id = 25010701, pos = { x = -744.017, y = 222.305, z = 357.064 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126012, monster_id = 25010201, pos = { x = -736.850, y = 222.805, z = 346.477 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 126013, monster_id = 25010701, pos = { x = -739.098, y = 222.125, z = 358.602 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126014, monster_id = 25060101, pos = { x = -735.147, y = 222.670, z = 348.423 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126015, monster_id = 25060101, pos = { x = -745.341, y = 223.195, z = 350.675 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126016, monster_id = 25010501, pos = { x = -733.482, y = 222.457, z = 354.145 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 126017, monster_id = 25010301, pos = { x = -735.253, y = 222.303, z = 356.615 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 126018, monster_id = 25030301, pos = { x = -740.166, y = 222.766, z = 344.857 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126019, monster_id = 25070101, pos = { x = -745.298, y = 223.295, z = 347.264 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126020, monster_id = 25030201, pos = { x = -741.919, y = 222.071, z = 357.889 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 126035, monster_id = 25070101, pos = { x = -733.932, y = 222.526, z = 351.532 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 }
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
	{ config_id = 1126021, name = "ANY_MONSTER_LIVE_126021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_126021", action = "action_EVENT_ANY_MONSTER_LIVE_126021", trigger_count = 0 },
	{ config_id = 1126022, name = "MONSTER_TIDE_DIE_126022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_126022", action = "action_EVENT_MONSTER_TIDE_DIE_126022", trigger_count = 0 },
	{ config_id = 1126023, name = "MONSTER_TIDE_DIE_126023", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_126023", action = "action_EVENT_MONSTER_TIDE_DIE_126023", trigger_count = 0 },
	{ config_id = 1126024, name = "MONSTER_TIDE_DIE_126024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_126024", action = "action_EVENT_MONSTER_TIDE_DIE_126024", trigger_count = 0 },
	{ config_id = 1126025, name = "MONSTER_TIDE_DIE_126025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_126025", action = "action_EVENT_MONSTER_TIDE_DIE_126025", trigger_count = 0 },
	{ config_id = 1126026, name = "MONSTER_TIDE_DIE_126026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_126026", action = "action_EVENT_MONSTER_TIDE_DIE_126026", trigger_count = 0 },
	{ config_id = 1126027, name = "MONSTER_TIDE_DIE_126027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_126027", action = "action_EVENT_MONSTER_TIDE_DIE_126027", trigger_count = 0 },
	{ config_id = 1126028, name = "ANY_MONSTER_LIVE_126028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_126028", action = "action_EVENT_ANY_MONSTER_LIVE_126028", trigger_count = 0 },
	{ config_id = 1126029, name = "MONSTER_TIDE_DIE_126029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_126029", action = "action_EVENT_MONSTER_TIDE_DIE_126029", trigger_count = 0 },
	{ config_id = 1126030, name = "MONSTER_TIDE_DIE_126030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_126030", action = "action_EVENT_MONSTER_TIDE_DIE_126030", trigger_count = 0 },
	{ config_id = 1126031, name = "MONSTER_TIDE_DIE_126031", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_126031", action = "action_EVENT_MONSTER_TIDE_DIE_126031", trigger_count = 0 },
	{ config_id = 1126032, name = "MONSTER_TIDE_DIE_126032", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_126032", action = "action_EVENT_MONSTER_TIDE_DIE_126032", trigger_count = 0 },
	{ config_id = 1126033, name = "MONSTER_TIDE_DIE_126033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_126033", action = "action_EVENT_MONSTER_TIDE_DIE_126033", trigger_count = 0 },
	{ config_id = 1126034, name = "MONSTER_TIDE_DIE_126034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_126034", action = "action_EVENT_MONSTER_TIDE_DIE_126034", trigger_count = 0 }
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
		monsters = { 126001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_126021", "MONSTER_TIDE_DIE_126022", "MONSTER_TIDE_DIE_126023", "MONSTER_TIDE_DIE_126024", "MONSTER_TIDE_DIE_126025", "MONSTER_TIDE_DIE_126026", "MONSTER_TIDE_DIE_126027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 126002, 126003, 126004, 126005, 126006, 126007, 126008, 126009, 126010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 126012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_126028", "MONSTER_TIDE_DIE_126029", "MONSTER_TIDE_DIE_126030", "MONSTER_TIDE_DIE_126031", "MONSTER_TIDE_DIE_126032", "MONSTER_TIDE_DIE_126033", "MONSTER_TIDE_DIE_126034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 126011, 126013, 126014, 126015, 126016, 126017, 126018, 126019, 126020, 126035 },
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
function condition_EVENT_ANY_MONSTER_LIVE_126021(context, evt)
	if 126001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_126021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001126, {126002,126003}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001126, {126004,126005}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001126, {126006,126007}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126022(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126022(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001126, {126008}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126023(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126023(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001126, {126009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126024(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001126, {126010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001126, {126002,126003}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126026(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126026(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001126, {126004,126005}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126027(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001126, {126006,126007}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_126028(context, evt)
	if 126012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_126028(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001126, {126011,126013}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001126, {126014,126015}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001126, {126016,126017}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126029(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126029(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001126, {126018}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126030(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126030(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001126, {126019,126035}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126031(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126031(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001126, {126020}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126032(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001126, {126011,126013}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126033(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001126, {126014,126015}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_126034(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_126034(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001126, {126016,126017}, 4, 2, 2) then
		return -1
	end
	
	return 0
end