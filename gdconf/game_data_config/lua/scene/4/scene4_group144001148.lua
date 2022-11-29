-- 基础信息
local base_info = {
	group_id = 144001148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 20011001, pos = { x = 744.046, y = 156.500, z = 225.515 }, rot = { x = 0.000, y = 256.457, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 148002, monster_id = 20011001, pos = { x = 745.534, y = 156.500, z = 224.290 }, rot = { x = 0.000, y = 256.457, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 148003, monster_id = 20011001, pos = { x = 742.564, y = 156.500, z = 224.382 }, rot = { x = 0.000, y = 256.457, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 148004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 738.412, y = 154.476, z = 223.423 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1148004, name = "ENTER_REGION_148004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_148004", action = "action_EVENT_ENTER_REGION_148004" }
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
		regions = { 148004 },
		triggers = { "ENTER_REGION_148004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 148001, 148002, 148003 },
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
function condition_EVENT_ENTER_REGION_148004(context, evt)
	if evt.param1 ~= 148004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_148004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001148, 2)
	
	return 0
end