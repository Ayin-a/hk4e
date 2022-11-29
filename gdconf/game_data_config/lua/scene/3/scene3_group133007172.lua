-- 基础信息
local base_info = {
	group_id = 133007172
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
	{ config_id = 645, gadget_id = 70690001, pos = { x = 2994.793, y = 235.331, z = 265.076 }, rot = { x = 355.000, y = 200.000, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 646, gadget_id = 70690001, pos = { x = 2984.570, y = 236.700, z = 245.600 }, rot = { x = 355.000, y = 200.140, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 647, gadget_id = 70690001, pos = { x = 2978.700, y = 237.900, z = 229.300 }, rot = { x = 355.000, y = 186.000, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 648, gadget_id = 70690001, pos = { x = 2975.100, y = 237.700, z = 212.800 }, rot = { x = 0.000, y = 178.000, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 172001, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3000.221, y = 233.590, z = 270.527 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1172001, name = "ENTER_REGION_172001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172001", action = "action_EVENT_ENTER_REGION_172001" }
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
		regions = { 172001 },
		triggers = { "ENTER_REGION_172001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 645, 646, 647, 648 },
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
function condition_EVENT_ENTER_REGION_172001(context, evt)
	if evt.param1 ~= 172001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007172, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end