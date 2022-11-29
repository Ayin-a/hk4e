-- 基础信息
local base_info = {
	group_id = 111102012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21010101, pos = { x = 1522.299, y = 271.709, z = -1523.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 6109 } },
	{ config_id = 12002, monster_id = 21010101, pos = { x = 1523.083, y = 271.752, z = -1518.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 6109 } },
	{ config_id = 12003, monster_id = 21010101, pos = { x = 1530.676, y = 271.330, z = -1517.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_tag = "丘丘人", affix = { 6109 } },
	{ config_id = 12005, monster_id = 23030101, pos = { x = 1518.696, y = 271.653, z = -1519.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "召唤师" },
	{ config_id = 12006, monster_id = 24020401, pos = { x = 1514.308, y = 271.657, z = -1523.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100 },
	{ config_id = 12007, monster_id = 23020101, pos = { x = 1527.123, y = 271.478, z = -1526.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "债务处理人" }
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
	{ config_id = 1012004, name = "VARIABLE_CHANGE_12004", event = EventType.EVENT_VARIABLE_CHANGE, source = "GMTEST", condition = "condition_EVENT_VARIABLE_CHANGE_12004", action = "action_EVENT_VARIABLE_CHANGE_12004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GMTEST", value = 0, no_refresh = false }
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
		monsters = { 12001, 12002, 12003, 12005, 12006, 12007 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_12004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_12004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12004(context, evt)
	ScriptLib.DelAllSubEntityByOriginOwnerConfigId(context,12001)
	ScriptLib.DelAllSubEntityByOriginOwnerConfigId(context,12002)
	ScriptLib.DelAllSubEntityByOriginOwnerConfigId(context,12003)
	ScriptLib.DelAllSubEntityByOriginOwnerConfigId(context,12005)
	ScriptLib.DelAllSubEntityByOriginOwnerConfigId(context,12006)
	ScriptLib.DelAllSubEntityByOriginOwnerConfigId(context,12007)
	return 0
end