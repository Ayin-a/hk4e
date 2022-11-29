-- 基础信息
local base_info = {
	group_id = 133222294
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 20011001, pos = { x = -4433.856, y = 192.518, z = -3753.452 }, rot = { x = 0.000, y = 191.287, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 294002, monster_id = 20011001, pos = { x = -4430.000, y = 192.221, z = -3753.242 }, rot = { x = 0.000, y = 172.370, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 294004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4431.911, y = 192.324, z = -3753.861 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1294004, name = "ENTER_REGION_294004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_294004", action = "action_EVENT_ENTER_REGION_294004" }
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
		regions = { 294004 },
		triggers = { "ENTER_REGION_294004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 294001, 294002 },
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
function condition_EVENT_ENTER_REGION_294004(context, evt)
	if evt.param1 ~= 294004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_294004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222294, 2)
	
	return 0
end