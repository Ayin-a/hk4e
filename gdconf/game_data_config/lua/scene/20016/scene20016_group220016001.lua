-- 基础信息
local base_info = {
	group_id = 220016001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010701, pos = { x = 349.416, y = -32.890, z = 503.794 }, rot = { x = 0.000, y = 319.841, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 21010501, pos = { x = 337.740, y = -27.794, z = 493.276 }, rot = { x = 0.000, y = 35.010, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1003, monster_id = 20011201, pos = { x = 348.172, y = -27.935, z = 473.514 }, rot = { x = 0.000, y = 329.377, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1004, monster_id = 20011201, pos = { x = 337.586, y = -27.834, z = 473.908 }, rot = { x = 0.000, y = 29.874, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1005, monster_id = 20011201, pos = { x = 336.844, y = -27.833, z = 475.303 }, rot = { x = 0.000, y = 32.570, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20011201, pos = { x = 349.373, y = -27.979, z = 475.177 }, rot = { x = 0.000, y = 325.751, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70900010, pos = { x = 343.239, y = -28.335, z = 474.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70900013, pos = { x = 343.103, y = -27.850, z = 473.954 }, rot = { x = 0.000, y = 34.001, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1009, gadget_id = 70320001, pos = { x = 343.038, y = -27.850, z = 473.843 }, rot = { x = 0.000, y = 240.057, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220002, pos = { x = 349.367, y = -32.890, z = 503.570 }, rot = { x = 0.000, y = 54.580, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70220002, pos = { x = 350.660, y = -32.890, z = 503.913 }, rot = { x = 0.000, y = 3.864, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220002, pos = { x = 350.183, y = -32.890, z = 502.737 }, rot = { x = 0.000, y = 86.203, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220015, pos = { x = 351.380, y = -32.134, z = 504.886 }, rot = { x = 85.202, y = 315.705, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220016, pos = { x = 350.932, y = -32.156, z = 503.829 }, rot = { x = 0.000, y = 127.018, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.CUBIC, size = { x = 18.000, y = 5.000, z = 18.000 }, pos = { x = 343.256, y = -27.850, z = 473.316 } }
}

-- 触发器
triggers = {
	{ config_id = 1000005, name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5", action = "action_EVENT_ENTER_REGION_5", forbid_guest = false },
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" }
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
	rand_suite = true
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
		monsters = { 1001, 1002 },
		gadgets = { 1009, 1010, 1011, 1012, 1013 },
		regions = { 5 },
		triggers = { "ENTER_REGION_5", "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5(context, evt)
	if evt.param1 ~= 5 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 1009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 改变指定group组220016002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 5, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end