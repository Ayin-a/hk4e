-- 基础信息
local base_info = {
	group_id = 133301660
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 660003, monster_id = 26090201, pos = { x = -197.905, y = 223.776, z = 3801.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 660004, monster_id = 26090201, pos = { x = -197.989, y = 224.243, z = 3810.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 660005, monster_id = 26090201, pos = { x = -213.479, y = 220.004, z = 3812.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 660006, monster_id = 26090201, pos = { x = -217.218, y = 221.108, z = 3827.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 660001, gadget_id = 70310198, pos = { x = -187.956, y = 227.800, z = 3793.478 }, rot = { x = 0.000, y = 197.532, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 660002, shape = RegionShape.SPHERE, radius = 3, pos = { x = -187.913, y = 228.459, z = 3793.177 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1660002, name = "ENTER_REGION_660002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_660002", action = "action_EVENT_ENTER_REGION_660002" }
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
		gadgets = { 660001 },
		regions = { 660002 },
		triggers = { "ENTER_REGION_660002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 660003, 660004, 660005, 660006 },
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
function condition_EVENT_ENTER_REGION_660002(context, evt)
	if evt.param1 ~= 660002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_660002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301660, 2)
	
	return 0
end