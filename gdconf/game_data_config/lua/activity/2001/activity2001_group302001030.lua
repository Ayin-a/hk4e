-- 基础信息
local base_info = {
	group_id = 302001030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 21010701, pos = { x = 2211.923, y = 236.953, z = -1413.531 }, rot = { x = 0.000, y = 83.234, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30002, monster_id = 21010701, pos = { x = 2221.834, y = 238.155, z = -1417.153 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30003, monster_id = 21010701, pos = { x = 2213.932, y = 236.682, z = -1407.682 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30004, monster_id = 21010701, pos = { x = 2222.925, y = 236.954, z = -1403.221 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30005, monster_id = 21010701, pos = { x = 2225.953, y = 237.982, z = -1406.901 }, rot = { x = 0.000, y = 240.925, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30006, monster_id = 21010701, pos = { x = 2215.102, y = 237.668, z = -1419.302 }, rot = { x = 0.000, y = 28.765, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30007, monster_id = 21010901, pos = { x = 2217.104, y = 236.395, z = -1402.050 }, rot = { x = 0.000, y = 165.024, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4109, 4108, 4107 }, pose_id = 32, kill_score = 20, area_id = 1 },
	{ config_id = 30008, monster_id = 21011001, pos = { x = 2220.456, y = 238.153, z = -1419.960 }, rot = { x = 0.000, y = 346.389, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4109, 4108, 4107 }, pose_id = 32, kill_score = 20, area_id = 1 },
	{ config_id = 30009, monster_id = 21020201, pos = { x = 2224.007, y = 238.648, z = -1419.785 }, rot = { x = 0.000, y = 323.472, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 1 },
	{ config_id = 30010, monster_id = 21020201, pos = { x = 2211.153, y = 237.153, z = -1418.458 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 1 },
	{ config_id = 30011, monster_id = 21020201, pos = { x = 2215.597, y = 236.537, z = -1405.044 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 1 },
	{ config_id = 30012, monster_id = 21010701, pos = { x = 2219.212, y = 236.634, z = -1403.330 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30013, monster_id = 21010701, pos = { x = 2224.487, y = 238.047, z = -1412.202 }, rot = { x = 0.000, y = 280.424, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30014, monster_id = 21010701, pos = { x = 2213.583, y = 237.183, z = -1417.083 }, rot = { x = 0.000, y = 51.987, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30015, monster_id = 21010902, pos = { x = 2216.947, y = 238.001, z = -1421.065 }, rot = { x = 0.000, y = 3.003, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30016, monster_id = 21011002, pos = { x = 2224.279, y = 237.356, z = -1405.218 }, rot = { x = 0.000, y = 235.884, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 },
	{ config_id = 30017, monster_id = 21020202, pos = { x = 2217.452, y = 238.310, z = -1423.950 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 1 },
	{ config_id = 30018, monster_id = 21020202, pos = { x = 2227.040, y = 238.400, z = -1410.412 }, rot = { x = 0.000, y = 263.915, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 1 },
	{ config_id = 30019, monster_id = 21020202, pos = { x = 2211.660, y = 236.860, z = -1410.042 }, rot = { x = 0.000, y = 105.558, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 1 },
	{ config_id = 30020, monster_id = 21010701, pos = { x = 2223.086, y = 238.198, z = -1415.685 }, rot = { x = 0.000, y = 307.772, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 1 }
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
	{ config_id = 1030023, name = "ANY_MONSTER_LIVE_30023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_30023", action = "action_EVENT_ANY_MONSTER_LIVE_30023", trigger_count = 0 },
	{ config_id = 1030024, name = "MONSTER_TIDE_DIE_30024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_30024", action = "action_EVENT_MONSTER_TIDE_DIE_30024", trigger_count = 0 },
	{ config_id = 1030025, name = "MONSTER_TIDE_DIE_30025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_30025", action = "action_EVENT_MONSTER_TIDE_DIE_30025", trigger_count = 0 },
	{ config_id = 1030026, name = "MONSTER_TIDE_DIE_30026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_30026", action = "action_EVENT_MONSTER_TIDE_DIE_30026", trigger_count = 0 },
	{ config_id = 1030027, name = "MONSTER_TIDE_DIE_30027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_30027", action = "action_EVENT_MONSTER_TIDE_DIE_30027", trigger_count = 0 },
	{ config_id = 1030028, name = "MONSTER_TIDE_DIE_30028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_30028", action = "action_EVENT_MONSTER_TIDE_DIE_30028", trigger_count = 0 },
	{ config_id = 1030029, name = "MONSTER_TIDE_DIE_30029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_30029", action = "action_EVENT_MONSTER_TIDE_DIE_30029", trigger_count = 0 },
	{ config_id = 1030032, name = "ANY_MONSTER_LIVE_30032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_30032", action = "action_EVENT_ANY_MONSTER_LIVE_30032", trigger_count = 0 },
	{ config_id = 1030033, name = "MONSTER_TIDE_DIE_30033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_30033", action = "action_EVENT_MONSTER_TIDE_DIE_30033", trigger_count = 0 },
	{ config_id = 1030034, name = "MONSTER_TIDE_DIE_30034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_30034", action = "action_EVENT_MONSTER_TIDE_DIE_30034", trigger_count = 0 },
	{ config_id = 1030035, name = "MONSTER_TIDE_DIE_30035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_30035", action = "action_EVENT_MONSTER_TIDE_DIE_30035", trigger_count = 0 },
	{ config_id = 1030036, name = "MONSTER_TIDE_DIE_30036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_30036", action = "action_EVENT_MONSTER_TIDE_DIE_30036", trigger_count = 0 },
	{ config_id = 1030037, name = "MONSTER_TIDE_DIE_30037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_30037", action = "action_EVENT_MONSTER_TIDE_DIE_30037", trigger_count = 0 },
	{ config_id = 1030038, name = "MONSTER_TIDE_DIE_30038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_30038", action = "action_EVENT_MONSTER_TIDE_DIE_30038", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 30002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_30023", "MONSTER_TIDE_DIE_30024", "MONSTER_TIDE_DIE_30025", "MONSTER_TIDE_DIE_30026", "MONSTER_TIDE_DIE_30027", "MONSTER_TIDE_DIE_30028", "MONSTER_TIDE_DIE_30029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 30020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_30032", "MONSTER_TIDE_DIE_30033", "MONSTER_TIDE_DIE_30034", "MONSTER_TIDE_DIE_30035", "MONSTER_TIDE_DIE_30036", "MONSTER_TIDE_DIE_30037", "MONSTER_TIDE_DIE_30038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 30001, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_30023(context, evt)
	if 30002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_30023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001030, {30003,30004}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001030, {30005,30006}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001030, {30007,30008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001030, {30009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001030, {30010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30026(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001030, {30011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001030, {30003,30004}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001030, {30005,30006}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001030, {30007,30008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_30032(context, evt)
	if 30020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_30032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001030, {30001,30012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001030, {30013,30014}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001030, {30015,30016}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001030, {30017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001030, {30018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001030, {30019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001030, {30001,30012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001030, {30013,30014}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_30038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_30038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001030, {30015,30016}, 2, 1, 2) then
		return -1
	end
	
	return 0
end