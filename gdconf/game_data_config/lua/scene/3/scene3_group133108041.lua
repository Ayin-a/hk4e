-- 基础信息
local base_info = {
	group_id = 133108041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 21020101, pos = { x = -178.694, y = 200.000, z = -976.206 }, rot = { x = 0.000, y = 14.777, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 7 },
	{ config_id = 41002, monster_id = 21010901, pos = { x = -177.674, y = 200.022, z = -979.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 7 },
	{ config_id = 41003, monster_id = 21011001, pos = { x = -181.319, y = 200.087, z = -978.282 }, rot = { x = 0.000, y = 22.792, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41005, gadget_id = 70310009, pos = { x = -154.748, y = 200.407, z = -918.747 }, rot = { x = 358.877, y = 49.955, z = 5.603 }, level = 32, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 41004, shape = RegionShape.SPHERE, radius = 7.2, pos = { x = -165.424, y = 200.324, z = -946.087 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1041004, name = "ENTER_REGION_41004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41004", action = "action_EVENT_ENTER_REGION_41004" }
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
		gadgets = { 41005 },
		regions = { 41004 },
		triggers = { "ENTER_REGION_41004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_41004(context, evt)
	if evt.param1 ~= 41004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end