-- 基础信息
local base_info = {
	group_id = 133210007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20011101, pos = { x = -3734.740, y = 199.999, z = -1328.469 }, rot = { x = 0.000, y = 252.770, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 17 },
	{ config_id = 7002, monster_id = 20060101, pos = { x = -3729.706, y = 199.999, z = -1331.051 }, rot = { x = 0.000, y = 261.715, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 7003, monster_id = 20060101, pos = { x = -3733.697, y = 199.999, z = -1321.778 }, rot = { x = 0.000, y = 201.729, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 7004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3734.604, y = 199.999, z = -1327.501 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "ENTER_REGION_7004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7004", action = "action_EVENT_ENTER_REGION_7004" }
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
		regions = { 7004 },
		triggers = { "ENTER_REGION_7004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002, 7003 },
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
function condition_EVENT_ENTER_REGION_7004(context, evt)
	if evt.param1 ~= 7004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210007, 2)
	
	return 0
end