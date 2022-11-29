-- 基础信息
local base_info = {
	group_id = 133303278
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 278001, monster_id = 24020301, pos = { x = -1645.567, y = 195.923, z = 3470.792 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 23 },
	{ config_id = 278002, monster_id = 24020301, pos = { x = -1635.926, y = 195.511, z = 3480.632 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 23 },
	{ config_id = 278005, monster_id = 24020201, pos = { x = -1653.765, y = 200.357, z = 3485.004 }, rot = { x = 0.000, y = 150.447, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 278006, monster_id = 24020201, pos = { x = -1621.260, y = 194.856, z = 3482.271 }, rot = { x = 0.000, y = 16.053, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 278003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1621.618, y = 196.654, z = 3488.552 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1278003, name = "ENTER_REGION_278003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278003", action = "action_EVENT_ENTER_REGION_278003" },
	{ config_id = 1278004, name = "GROUP_LOAD_278004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_278004", action = "action_EVENT_GROUP_LOAD_278004", trigger_count = 0 }
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
	end_suite = 2,
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
		monsters = { 278005 },
		gadgets = { },
		regions = { 278003 },
		triggers = { "ENTER_REGION_278003", "GROUP_LOAD_278004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 278001, 278002 },
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
function condition_EVENT_ENTER_REGION_278003(context, evt)
	if evt.param1 ~= 278003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 死域值为0，不触发trigger
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_278003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 278006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_278004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_278004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303278, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"