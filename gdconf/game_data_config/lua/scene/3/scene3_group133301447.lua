-- 基础信息
local base_info = {
	group_id = 133301447
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 447001, monster_id = 26010201, pos = { x = -494.463, y = 200.983, z = 3791.469 }, rot = { x = 0.000, y = 291.360, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 22 },
	{ config_id = 447007, monster_id = 26010201, pos = { x = -499.982, y = 201.265, z = 3787.846 }, rot = { x = 0.000, y = 291.360, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 22 },
	{ config_id = 447008, monster_id = 26010201, pos = { x = -505.731, y = 199.948, z = 3788.083 }, rot = { x = 0.000, y = 291.360, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 447002, gadget_id = 70220004, pos = { x = -500.398, y = 195.903, z = 3804.024 }, rot = { x = 15.190, y = 301.294, z = 351.989 }, level = 33, area_id = 22 },
	{ config_id = 447003, gadget_id = 70220004, pos = { x = -501.052, y = 190.908, z = 3815.880 }, rot = { x = 15.190, y = 301.294, z = 351.989 }, level = 33, area_id = 22 },
	{ config_id = 447004, gadget_id = 70220004, pos = { x = -500.768, y = 193.580, z = 3810.022 }, rot = { x = 15.190, y = 301.294, z = 351.989 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 447009, shape = RegionShape.SPHERE, radius = 4, pos = { x = -500.900, y = 192.791, z = 3813.531 }, area_id = 22 },
	{ config_id = 447010, shape = RegionShape.SPHERE, radius = 4, pos = { x = -500.755, y = 195.211, z = 3809.834 }, area_id = 22 },
	{ config_id = 447011, shape = RegionShape.SPHERE, radius = 4, pos = { x = -500.713, y = 197.328, z = 3804.304 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1447005, name = "ANY_GADGET_DIE_447005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_447005", action = "action_EVENT_ANY_GADGET_DIE_447005", trigger_count = 0 },
	{ config_id = 1447006, name = "ANY_MONSTER_DIE_447006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_447006", action = "action_EVENT_ANY_MONSTER_DIE_447006" },
	{ config_id = 1447009, name = "ENTER_REGION_447009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447009", action = "action_EVENT_ENTER_REGION_447009", trigger_count = 0 },
	{ config_id = 1447010, name = "ENTER_REGION_447010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447010", action = "action_EVENT_ENTER_REGION_447010", trigger_count = 0 },
	{ config_id = 1447011, name = "ENTER_REGION_447011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447011", action = "action_EVENT_ENTER_REGION_447011", trigger_count = 0 }
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
		gadgets = { 447002, 447003, 447004 },
		regions = { 447009, 447010, 447011 },
		triggers = { "ANY_GADGET_DIE_447005", "ANY_MONSTER_DIE_447006", "ENTER_REGION_447009", "ENTER_REGION_447010", "ENTER_REGION_447011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 447001, 447007, 447008 },
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
function condition_EVENT_ANY_GADGET_DIE_447005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133301447}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_447005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 447001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 447007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 447008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_447006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_447006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_447009(context, evt)
	if evt.param1 ~= 447009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447009(context, evt)
	-- 将configid为 447002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_447010(context, evt)
	if evt.param1 ~= 447010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447010(context, evt)
	-- 将configid为 447003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_447011(context, evt)
	if evt.param1 ~= 447011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447011(context, evt)
	-- 将configid为 447004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end