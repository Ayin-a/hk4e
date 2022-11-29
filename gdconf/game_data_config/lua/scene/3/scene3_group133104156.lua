-- 基础信息
local base_info = {
	group_id = 133104156
}

-- DEFS_MISCS
local regionsearch_region_id = 3104001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156002, monster_id = 20050201, pos = { x = 209.904, y = 200.000, z = 751.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 4, area_id = 9 },
	{ config_id = 156003, monster_id = 20050801, pos = { x = 131.630, y = 201.622, z = 715.517 }, rot = { x = 0.000, y = 60.717, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 9 },
	{ config_id = 156004, monster_id = 20050301, pos = { x = 162.255, y = 201.622, z = 668.613 }, rot = { x = 0.000, y = 116.138, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 9 },
	{ config_id = 156005, monster_id = 20050201, pos = { x = 192.865, y = 200.000, z = 746.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 156007, monster_id = 20050801, pos = { x = 101.711, y = 207.570, z = 703.826 }, rot = { x = 0.000, y = 52.538, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 156008, monster_id = 20050301, pos = { x = 97.678, y = 208.909, z = 737.357 }, rot = { x = 0.000, y = 88.141, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156001, gadget_id = 70620008, pos = { x = 208.232, y = 196.010, z = 751.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1156006, name = "ANY_MONSTER_DIE_156006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156006", action = "action_EVENT_ANY_MONSTER_DIE_156006" }
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
		monsters = { 156002, 156003, 156004, 156005, 156007, 156008 },
		gadgets = { 156001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156006(context, evt)
	if 156002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 156001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "Activity_Endora"