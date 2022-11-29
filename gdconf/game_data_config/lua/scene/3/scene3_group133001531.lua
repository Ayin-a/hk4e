-- 基础信息
local base_info = {
	group_id = 133001531
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
	{ config_id = 1531003, name = "SELECT_OPTION_531003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_531003", action = "action_EVENT_SELECT_OPTION_531003" }
}

-- 点位
points = {
	{ config_id = 531004, pos = { x = 1988.573, y = 222.100, z = -1515.489 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 531005, pos = { x = 1982.370, y = 221.449, z = -1513.967 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 531006, pos = { x = 1990.088, y = 221.857, z = -1507.536 }, rot = { x = 0.000, y = 232.097, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 531007, pos = { x = 1985.175, y = 221.857, z = -1504.441 }, rot = { x = 0.000, y = 186.155, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 531008, pos = { x = 1980.706, y = 221.842, z = -1506.489 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 1, tag = 2 }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1004, rand_weight = 100 },
	{ pool_id = 1005, rand_weight = 100 },
	{ pool_id = 1006, rand_weight = 100 },
	{ pool_id = 1007, rand_weight = 100 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_531003(context, evt)
	-- 判断是gadgetid 531001 option_id 39
	if 531001 ~= evt.param1 then
		return false	
	end
	
	if 39 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_531003(context, evt)
	-- 删除指定group： 133001531 ；指定config：531001；物件身上指定option：39；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133001531, 531001, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001531, EntityType.GADGET, 531001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "TreasureMapEvent"