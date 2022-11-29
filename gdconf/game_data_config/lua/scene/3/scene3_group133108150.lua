-- 基础信息
local base_info = {
	group_id = 133108150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150002, monster_id = 21010901, pos = { x = -286.737, y = 200.137, z = -852.522 }, rot = { x = 0.000, y = 119.380, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 150003, monster_id = 21010501, pos = { x = -270.273, y = 200.803, z = -857.889 }, rot = { x = 0.000, y = 227.885, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 150004, monster_id = 21011001, pos = { x = -289.509, y = 200.744, z = -831.869 }, rot = { x = 0.000, y = 160.072, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 150001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -276.004, y = 200.369, z = -858.734 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1150001, name = "ENTER_REGION_150001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_150001", action = "action_EVENT_ENTER_REGION_150001" }
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
		regions = { 150001 },
		triggers = { "ENTER_REGION_150001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150002, 150003, 150004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_150001(context, evt)
	if evt.param1 ~= 150001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_150001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108150, 2)
	
	return 0
end