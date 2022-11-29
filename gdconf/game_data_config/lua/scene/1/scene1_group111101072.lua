-- 基础信息
local base_info = {
	group_id = 111101072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 25010501, pos = { x = 2500.632, y = 206.475, z = -1233.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_tag = "盗宝团" },
	{ config_id = 72002, monster_id = 25010301, pos = { x = 2498.243, y = 205.852, z = -1232.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_tag = "盗宝团" },
	{ config_id = 72003, monster_id = 25030301, pos = { x = 2499.296, y = 200.959, z = -1225.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 72004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2503.944, y = 201.585, z = -1226.108 } }
}

-- 触发器
triggers = {
	{ config_id = 1072004, name = "ENTER_REGION_72004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72004", action = "action_EVENT_ENTER_REGION_72004" }
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
		regions = { 72004 },
		triggers = { "ENTER_REGION_72004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 72001, 72002, 72003 },
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
function condition_EVENT_ENTER_REGION_72004(context, evt)
	if evt.param1 ~= 72004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101072, 2)
	
	return 0
end