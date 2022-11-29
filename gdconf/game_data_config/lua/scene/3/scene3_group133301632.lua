-- 基础信息
local base_info = {
	group_id = 133301632
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 632001, monster_id = 25210103, pos = { x = -408.790, y = 277.380, z = 3999.000 }, rot = { x = 0.000, y = 143.613, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9002, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 632002, gadget_id = 70290584, pos = { x = -404.783, y = 272.532, z = 4002.800 }, rot = { x = 0.000, y = 83.125, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 632003, gadget_id = 70360170, pos = { x = -404.517, y = 279.193, z = 4001.179 }, rot = { x = 89.410, y = 62.572, z = 337.023 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 632004, gadget_id = 70360001, pos = { x = -403.781, y = 279.200, z = 4001.236 }, rot = { x = 89.412, y = 62.571, z = 337.022 }, level = 33, persistent = true, worktop_config = { init_options = { 769 } }, area_id = 22 },
	{ config_id = 632006, gadget_id = 70290584, pos = { x = -402.246, y = 272.657, z = 4010.251 }, rot = { x = 0.000, y = 174.548, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 22 },
	{ config_id = 632007, gadget_id = 70290584, pos = { x = -401.076, y = 272.334, z = 3996.121 }, rot = { x = 0.000, y = 353.938, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 632009, shape = RegionShape.SPHERE, radius = 3, pos = { x = -401.592, y = 277.216, z = 4003.839 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1632008, name = "SELECT_OPTION_632008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_632008", action = "action_EVENT_SELECT_OPTION_632008" },
	{ config_id = 1632009, name = "ENTER_REGION_632009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_632009", action = "action_EVENT_ENTER_REGION_632009" }
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
		monsters = { 632001 },
		gadgets = { 632002, 632003, 632006, 632007 },
		regions = { 632009 },
		triggers = { "SELECT_OPTION_632008", "ENTER_REGION_632009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_632008(context, evt)
	-- 判断是gadgetid 632004 option_id 769
	if 632004 ~= evt.param1 then
		return false	
	end
	
	if 769 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_632008(context, evt)
	-- 将configid为 632006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 632006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 632007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 632007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301632, EntityType.GADGET, 632004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 632003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 632003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_632009(context, evt)
	if evt.param1 ~= 632009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_632009(context, evt)
	-- 将configid为 632002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 632002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为632004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 632004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end