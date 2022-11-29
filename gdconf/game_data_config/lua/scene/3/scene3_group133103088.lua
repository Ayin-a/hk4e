-- 基础信息
local base_info = {
	group_id = 133103088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 28020201, pos = { x = 643.079, y = 187.409, z = 1228.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "走兽", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286, gadget_id = 70500000, pos = { x = 639.202, y = 187.247, z = 1212.739 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
	{ config_id = 287, gadget_id = 70500000, pos = { x = 640.566, y = 186.722, z = 1218.490 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
	{ config_id = 288, gadget_id = 70500000, pos = { x = 642.278, y = 187.058, z = 1225.701 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
	{ config_id = 289, gadget_id = 70500000, pos = { x = 644.134, y = 188.273, z = 1233.237 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
	{ config_id = 290, gadget_id = 70500000, pos = { x = 646.079, y = 191.017, z = 1242.597 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 },
	{ config_id = 291, gadget_id = 70500000, pos = { x = 647.542, y = 193.990, z = 1248.612 }, rot = { x = 0.000, y = 1.554, z = 0.000 }, level = 24, point_type = 2007, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 91, shape = RegionShape.SPHERE, radius = 2, pos = { x = 643.233, y = 187.533, z = 1229.314 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1000091, name = "ENTER_REGION_91", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91", action = "action_EVENT_ENTER_REGION_91" },
	{ config_id = 1000092, name = "TIMER_EVENT_92", event = EventType.EVENT_TIMER_EVENT, source = "group88timer", condition = "", action = "action_EVENT_TIMER_EVENT_92" }
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
		monsters = { 88001 },
		gadgets = { },
		regions = { 91 },
		triggers = { "ENTER_REGION_91" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 286, 287, 288, 289, 290, 291 },
		regions = { },
		triggers = { "TIMER_EVENT_92" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_91(context, evt)
	if evt.param1 ~= 91 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103088, 2)
	
	-- 延迟10秒后,向groupId为：133103088的对象,请求一次调用,并将string参数："group88timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133103088, "group88timer", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_92(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103088, 2)
	
	return 0
end