-- 基础信息
local base_info = {
	group_id = 201066002
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
	{ config_id = 2001, gadget_id = 70710458, pos = { x = 4.721, y = 5.042, z = 7.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2002, gadget_id = 70710460, pos = { x = 4.943, y = 5.006, z = 8.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2003, gadget_id = 70710457, pos = { x = 4.579, y = 5.006, z = 9.208 }, rot = { x = 0.000, y = 295.140, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2004, gadget_id = 70710453, pos = { x = 5.384, y = 5.042, z = 8.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2005, gadget_id = 70710452, pos = { x = 4.723, y = 5.032, z = 10.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2006, gadget_id = 70710451, pos = { x = 5.231, y = 5.041, z = 9.137 }, rot = { x = 0.000, y = 335.700, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2007, gadget_id = 70710467, pos = { x = 4.993, y = 5.048, z = 9.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2008, gadget_id = 70710456, pos = { x = 5.318, y = 5.030, z = 7.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2009, gadget_id = 70710676, pos = { x = 5.412, y = 5.050, z = 10.069 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2010, gadget_id = 70710676, pos = { x = 4.487, y = 5.045, z = 8.374 }, rot = { x = 0.000, y = 300.920, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2011, gadget_id = 70710675, pos = { x = 6.392, y = 4.536, z = 9.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2012, gadget_id = 70710675, pos = { x = 6.418, y = 4.537, z = 8.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2013, gadget_id = 70710675, pos = { x = 3.562, y = 4.537, z = 9.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2014, gadget_id = 70710675, pos = { x = 3.586, y = 4.534, z = 7.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 2015, gadget_id = 70710679, pos = { x = 5.043, y = 4.534, z = 8.972 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, room = 1 }
}

-- 区域
regions = {
	-- 切换到suit2时移除寿喜锅
	{ config_id = 2016, shape = RegionShape.SPHERE, radius = 100, pos = { x = 4.756, y = 5.006, z = 9.875 }, room = 1 }
}

-- 触发器
triggers = {
	-- 切换到suit2时移除寿喜锅
	{ config_id = 1002016, name = "ENTER_REGION_2016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2016", trigger_count = 0 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2015 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_2016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201066002, EntityType.GADGET, 2007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end