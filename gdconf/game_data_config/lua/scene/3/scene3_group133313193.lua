-- 基础信息
local base_info = {
	group_id = 133313193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193002, monster_id = 24040201, pos = { x = -336.705, y = -249.228, z = 5490.276 }, rot = { x = 0.000, y = 321.560, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 193001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -337.719, y = -249.228, z = 5493.187 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1193001, name = "ENTER_REGION_193001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193001", action = "action_EVENT_ENTER_REGION_193001" }
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
		regions = { 193001 },
		triggers = { "ENTER_REGION_193001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 193002 },
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
function condition_EVENT_ENTER_REGION_193001(context, evt)
	if evt.param1 ~= 193001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313193, 2)
	
	return 0
end