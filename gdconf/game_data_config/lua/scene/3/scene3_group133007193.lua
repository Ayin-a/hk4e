-- 基础信息
local base_info = {
	group_id = 133007193
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
	{ config_id = 697, gadget_id = 70220014, pos = { x = 2542.129, y = 217.049, z = -46.028 }, rot = { x = 15.995, y = 203.023, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 698, gadget_id = 70210101, pos = { x = 2541.808, y = 216.954, z = -46.154 }, rot = { x = 0.000, y = 310.636, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜通用蒙德", area_id = 4 },
	{ config_id = 193001, gadget_id = 70690001, pos = { x = 2543.327, y = 218.581, z = -40.916 }, rot = { x = 350.000, y = 24.087, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 193002, gadget_id = 70690001, pos = { x = 2548.006, y = 221.095, z = -29.779 }, rot = { x = 350.000, y = 24.087, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 193003, gadget_id = 70690001, pos = { x = 2552.435, y = 223.490, z = -18.435 }, rot = { x = 350.000, y = 24.087, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 193004, gadget_id = 70690001, pos = { x = 2557.140, y = 225.958, z = -5.465 }, rot = { x = 350.000, y = 24.087, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 225, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2542.057, y = 217.227, z = -45.189 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000225, name = "ENTER_REGION_225", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225", action = "action_EVENT_ENTER_REGION_225", trigger_count = 0, tlog_tag = "风龙_193_隐藏风场机关_触发" }
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
	rand_suite = true
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
		gadgets = { 697, 698 },
		regions = { 225 },
		triggers = { "ENTER_REGION_225" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 193001, 193002, 193003, 193004 },
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
function condition_EVENT_ENTER_REGION_225(context, evt)
	if evt.param1 ~= 225 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007193, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end