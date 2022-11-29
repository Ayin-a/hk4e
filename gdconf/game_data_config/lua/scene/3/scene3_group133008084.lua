-- 基础信息
local base_info = {
	group_id = 133008084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84004, monster_id = 23010301, pos = { x = 1321.991, y = 282.287, z = -953.856 }, rot = { x = 0.000, y = 259.291, z = 0.000 }, level = 30, drop_tag = "先遣队", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
	{ config_id = 84007, npc_id = 20204, pos = { x = 1304.506, y = 274.280, z = -933.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	{ config_id = 84008, npc_id = 20198, pos = { x = 1298.368, y = 274.326, z = -935.369 }, rot = { x = 0.000, y = 94.590, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 84001, gadget_id = 70360101, pos = { x = 1304.571, y = 273.020, z = -932.666 }, rot = { x = 328.872, y = 157.491, z = 350.732 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 84002, gadget_id = 70360101, pos = { x = 1297.380, y = 273.345, z = -935.198 }, rot = { x = 345.345, y = 150.550, z = 38.377 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 84005, gadget_id = 70211011, pos = { x = 1336.751, y = 286.867, z = -954.806 }, rot = { x = 21.661, y = 284.559, z = 4.623 }, level = 26, drop_tag = "雪山战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 84003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1301.869, y = 273.691, z = -935.557 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1084003, name = "ENTER_REGION_84003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_84003", action = "action_EVENT_ENTER_REGION_84003" },
	{ config_id = 1084006, name = "ANY_MONSTER_DIE_84006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84006", action = "action_EVENT_ANY_MONSTER_DIE_84006" }
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
		gadgets = { 84001, 84002 },
		regions = { 84003 },
		triggers = { "ENTER_REGION_84003", "ANY_MONSTER_DIE_84006" },
		npcs = { 84007, 84008 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_84003(context, evt)
	if evt.param1 ~= 84003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_84003(context, evt)
	-- 将configid为 84001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 84002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 84004, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84006(context, evt)
	-- 创建id为84005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 84005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end