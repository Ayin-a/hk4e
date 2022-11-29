-- 基础信息
local base_info = {
	group_id = 133210068
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 20060101, pos = { x = -4089.447, y = 200.000, z = -834.150 }, rot = { x = 0.000, y = 141.961, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 68002, monster_id = 20060101, pos = { x = -4090.795, y = 200.000, z = -838.307 }, rot = { x = 0.000, y = 120.165, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 68004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4086.561, y = 200.000, z = -838.874 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1068004, name = "ENTER_REGION_68004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68004", action = "action_EVENT_ENTER_REGION_68004" }
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
		regions = { 68004 },
		triggers = { "ENTER_REGION_68004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 68001, 68002 },
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
function condition_EVENT_ENTER_REGION_68004(context, evt)
	if evt.param1 ~= 68004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210068, 2)
	
	return 0
end