-- 基础信息
local base_info = {
	group_id = 166001457
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457001, monster_id = 20011401, pos = { x = 345.032, y = 412.367, z = 538.405 }, rot = { x = 0.000, y = 184.235, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 457002, monster_id = 20011401, pos = { x = 346.519, y = 412.367, z = 537.180 }, rot = { x = 0.000, y = 184.235, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 457003, monster_id = 20011401, pos = { x = 343.549, y = 412.367, z = 537.272 }, rot = { x = 0.000, y = 184.235, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 457005, monster_id = 20011501, pos = { x = 345.821, y = 407.281, z = 538.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 457004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 345.022, y = 407.406, z = 537.203 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1457004, name = "ENTER_REGION_457004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_457004", action = "action_EVENT_ENTER_REGION_457004" }
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
		monsters = { 457005 },
		gadgets = { },
		regions = { 457004 },
		triggers = { "ENTER_REGION_457004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 457001, 457002, 457003 },
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
function condition_EVENT_ENTER_REGION_457004(context, evt)
	if evt.param1 ~= 457004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_457004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001457, 2)
	
	return 0
end