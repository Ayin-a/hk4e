-- 基础信息
local base_info = {
	group_id = 133309417
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417001, monster_id = 20011201, pos = { x = -2940.622, y = 204.682, z = 5240.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 },
	{ config_id = 417002, monster_id = 20011201, pos = { x = -2939.152, y = 203.991, z = 5238.199 }, rot = { x = 0.000, y = 46.707, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 },
	{ config_id = 417003, monster_id = 20011201, pos = { x = -2942.122, y = 204.696, z = 5238.292 }, rot = { x = 0.000, y = 128.828, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 417004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2940.649, y = 204.355, z = 5238.222 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1417004, name = "ENTER_REGION_417004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_417004", action = "action_EVENT_ENTER_REGION_417004" }
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
		regions = { 417004 },
		triggers = { "ENTER_REGION_417004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 417001, 417002, 417003 },
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
function condition_EVENT_ENTER_REGION_417004(context, evt)
	if evt.param1 ~= 417004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_417004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309417, 2)
	
	return 0
end