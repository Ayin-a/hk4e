-- 基础信息
local base_info = {
	group_id = 133314216
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 216001, monster_id = 26090901, pos = { x = -945.373, y = -190.958, z = 5087.302 }, rot = { x = 0.000, y = 28.986, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 216002, monster_id = 26090901, pos = { x = -938.396, y = -193.573, z = 5092.690 }, rot = { x = 0.000, y = 265.481, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 216003, monster_id = 26120401, pos = { x = -945.868, y = -191.242, z = 5094.800 }, rot = { x = 0.000, y = 92.867, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 216004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -942.102, y = -191.952, z = 5088.337 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1216004, name = "ENTER_REGION_216004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_216004", action = "action_EVENT_ENTER_REGION_216004" }
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
		regions = { 216004 },
		triggers = { "ENTER_REGION_216004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 216001, 216002, 216003 },
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
function condition_EVENT_ENTER_REGION_216004(context, evt)
	if evt.param1 ~= 216004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_216004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314216, 2)
	
	return 0
end