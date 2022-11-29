-- 基础信息
local base_info = {
	group_id = 133008414
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 414001, monster_id = 20010801, pos = { x = 621.208, y = 200.012, z = -663.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 10 },
	{ config_id = 414002, monster_id = 20010901, pos = { x = 622.696, y = 200.012, z = -664.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 10 },
	{ config_id = 414003, monster_id = 20010801, pos = { x = 619.726, y = 200.012, z = -664.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 414004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 621.199, y = 200.012, z = -664.808 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1414004, name = "ENTER_REGION_414004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_414004", action = "action_EVENT_ENTER_REGION_414004" }
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
		regions = { 414004 },
		triggers = { "ENTER_REGION_414004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 414001, 414002, 414003 },
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
function condition_EVENT_ENTER_REGION_414004(context, evt)
	if evt.param1 ~= 414004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_414004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008414, 2)
	
	return 0
end