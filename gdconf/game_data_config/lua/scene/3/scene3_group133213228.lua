-- 基础信息
local base_info = {
	group_id = 133213228
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 228001, monster_id = 25100101, pos = { x = -3623.444, y = 236.437, z = -3043.899 }, rot = { x = 0.000, y = 178.266, z = 0.000 }, level = 29, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 228004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3623.880, y = 236.122, z = -3038.435 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1228004, name = "ENTER_REGION_228004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_228004", action = "action_EVENT_ENTER_REGION_228004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 228002, monster_id = 23010601, pos = { x = -3619.375, y = 236.089, z = -3039.458 }, rot = { x = 0.000, y = 180.752, z = 0.000 }, level = 29, drop_tag = "先遣队", disableWander = true, area_id = 12 },
		{ config_id = 228003, monster_id = 23010401, pos = { x = -3626.068, y = 235.195, z = -3039.174 }, rot = { x = 0.000, y = 178.266, z = 0.000 }, level = 29, drop_tag = "先遣队", disableWander = true, area_id = 12 }
	}
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
		regions = { 228004 },
		triggers = { "ENTER_REGION_228004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 228001 },
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
function condition_EVENT_ENTER_REGION_228004(context, evt)
	if evt.param1 ~= 228004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_228004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213228, 2)
	
	return 0
end