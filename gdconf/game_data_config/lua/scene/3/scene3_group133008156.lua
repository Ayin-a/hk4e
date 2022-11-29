-- 基础信息
local base_info = {
	group_id = 133008156
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156004, monster_id = 21011401, pos = { x = 1016.989, y = 305.013, z = -989.991 }, rot = { x = 0.000, y = 216.903, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 156005, monster_id = 21011401, pos = { x = 1011.709, y = 304.348, z = -989.749 }, rot = { x = 0.000, y = 174.205, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 156010, monster_id = 21011401, pos = { x = 1014.591, y = 304.186, z = -989.484 }, rot = { x = 0.000, y = 192.657, z = 0.000 }, level = 30, drop_tag = "丘丘人", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
	{ config_id = 156002, npc_id = 20203, pos = { x = 1009.065, y = 306.766, z = -995.821 }, rot = { x = 0.000, y = 19.155, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 156001, gadget_id = 70360101, pos = { x = 1008.577, y = 305.835, z = -995.882 }, rot = { x = 4.060, y = 22.328, z = 323.464 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 156007, gadget_id = 70310007, pos = { x = 1012.533, y = 302.765, z = -986.401 }, rot = { x = 71.478, y = 226.091, z = 349.231 }, level = 30, area_id = 10 },
	{ config_id = 156008, gadget_id = 70310007, pos = { x = 1017.079, y = 304.529, z = -992.235 }, rot = { x = 9.370, y = 308.092, z = 343.663 }, level = 30, area_id = 10 },
	{ config_id = 156009, gadget_id = 70310007, pos = { x = 1023.098, y = 289.370, z = -928.741 }, rot = { x = 355.847, y = 190.283, z = 359.247 }, level = 30, area_id = 10 },
	{ config_id = 156011, gadget_id = 70360001, pos = { x = 1012.010, y = 305.383, z = -994.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 156003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1010.930, y = 306.370, z = -996.666 }, area_id = 10 },
	{ config_id = 156006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1010.930, y = 306.370, z = -996.666 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1156003, name = "ENTER_REGION_156003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156003", action = "action_EVENT_ENTER_REGION_156003" },
	{ config_id = 1156006, name = "ENTER_REGION_156006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156006", action = "action_EVENT_ENTER_REGION_156006" },
	{ config_id = 1156012, name = "ANY_GADGET_DIE_156012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_156012", action = "action_EVENT_ANY_GADGET_DIE_156012", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 156001, 156007, 156008, 156009, 156011 },
		regions = { 156003 },
		triggers = { "ENTER_REGION_156003", "ANY_GADGET_DIE_156012" },
		npcs = { 156002 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 156001, 156007, 156008, 156009 },
		regions = { 156003, 156006 },
		triggers = { "ENTER_REGION_156003", "ENTER_REGION_156006" },
		npcs = { 156002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_156003(context, evt)
	if evt.param1 ~= 156003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156003(context, evt)
	-- 将configid为 156001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_156006(context, evt)
	if evt.param1 ~= 156006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156006(context, evt)
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 156004, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 156005, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 156010, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_156012(context, evt)
	if 156011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_156012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008156, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end