-- 基础信息
local base_info = {
	group_id = 133217323
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 323006, monster_id = 20011101, pos = { x = -4490.007, y = 208.938, z = -3798.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 323007, monster_id = 20011101, pos = { x = -4485.412, y = 208.602, z = -3796.243 }, rot = { x = 0.000, y = 308.262, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 323004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4488.295, y = 209.577, z = -3796.773 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1323004, name = "ENTER_REGION_323004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_323004", action = "action_EVENT_ENTER_REGION_323004" }
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
		regions = { 323004 },
		triggers = { "ENTER_REGION_323004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 323006, 323007 },
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
function condition_EVENT_ENTER_REGION_323004(context, evt)
	if evt.param1 ~= 323004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_323004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217323, 2)
	
	return 0
end