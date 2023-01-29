-- 基础信息
local base_info = {
	group_id = 133314182
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 182001, monster_id = 24040101, pos = { x = -283.856, y = -16.475, z = 4759.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1003, area_id = 32 },
	{ config_id = 182002, monster_id = 24040201, pos = { x = -280.682, y = -16.688, z = 4765.476 }, rot = { x = 0.000, y = 311.097, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1003, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 182004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -275.954, y = -23.239, z = 4758.856 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1182004, name = "ENTER_REGION_182004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_182004", action = "action_EVENT_ENTER_REGION_182004" }
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
		regions = { 182004 },
		triggers = { "ENTER_REGION_182004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 182001, 182002 },
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
function condition_EVENT_ENTER_REGION_182004(context, evt)
	if evt.param1 ~= 182004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_182004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314182, 2)
	
	return 0
end