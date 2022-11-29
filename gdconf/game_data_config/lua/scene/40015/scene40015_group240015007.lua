-- 基础信息
local base_info = {
	group_id = 240015007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7002, monster_id = 25060101, pos = { x = -17.671, y = 65.522, z = 108.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, monster_id = 25060101, pos = { x = -23.779, y = 65.506, z = 106.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, monster_id = 25010401, pos = { x = -14.526, y = 65.505, z = 105.066 }, rot = { x = 0.000, y = 320.169, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 25010601, pos = { x = -20.188, y = 65.501, z = 100.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70950011, pos = { x = -10.114, y = 69.449, z = 90.986 }, rot = { x = 0.000, y = 326.846, z = 0.000 }, level = 1 },
	{ config_id = 7007, gadget_id = 70950011, pos = { x = 4.385, y = 70.160, z = 100.998 }, rot = { x = 0.000, y = 326.846, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70950011, pos = { x = -29.327, y = 71.067, z = 79.054 }, rot = { x = 0.000, y = 328.604, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007006, name = "ANY_MONSTER_DIE_7006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7006", action = "action_EVENT_ANY_MONSTER_DIE_7006" }
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
		monsters = { 7002, 7003, 7004, 7005 },
		gadgets = { 7001, 7007, 7008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240015007, EntityType.GADGET, 7001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240015007, EntityType.GADGET, 7007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240015007, EntityType.GADGET, 7008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end