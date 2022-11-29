-- 基础信息
local base_info = {
	group_id = 133301410
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410001, monster_id = 25010701, pos = { x = -803.227, y = 227.965, z = 3260.784 }, rot = { x = 0.000, y = 182.450, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 410004, monster_id = 25070101, pos = { x = -848.602, y = 213.702, z = 3265.317 }, rot = { x = 0.000, y = 318.802, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 },
	{ config_id = 410005, monster_id = 25310201, pos = { x = -857.241, y = 218.533, z = 3256.512 }, rot = { x = 0.000, y = 96.192, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 9002, area_id = 23 },
	{ config_id = 410006, monster_id = 25020201, pos = { x = -838.608, y = 213.470, z = 3265.438 }, rot = { x = 0.000, y = 214.347, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 410007, gadget_id = 70310004, pos = { x = -855.503, y = 218.224, z = 3256.128 }, rot = { x = 351.846, y = 291.504, z = 356.293 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 410003, shape = RegionShape.SPHERE, radius = 100, pos = { x = -840.961, y = 213.470, z = 3260.496 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1410003, name = "ENTER_REGION_410003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_410003", action = "action_EVENT_ENTER_REGION_410003" }
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
		gadgets = { 410007 },
		regions = { 410003 },
		triggers = { "ENTER_REGION_410003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 410001, 410004, 410005, 410006 },
		gadgets = { 410007 },
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
function condition_EVENT_ENTER_REGION_410003(context, evt)
	if evt.param1 ~= 410003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_410003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301410, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end