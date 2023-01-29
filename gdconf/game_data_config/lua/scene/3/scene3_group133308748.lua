-- 基础信息
local base_info = {
	group_id = 133308748
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 748001, gadget_id = 70330402, pos = { x = -1223.396, y = 99.581, z = 5047.361 }, rot = { x = 5.425, y = 2.329, z = 16.900 }, level = 32, area_id = 32 },
	{ config_id = 748002, gadget_id = 70330402, pos = { x = -1236.643, y = 95.784, z = 5025.292 }, rot = { x = 14.342, y = 3.557, z = 10.274 }, level = 32, area_id = 32 },
	{ config_id = 748003, gadget_id = 70330402, pos = { x = -1255.976, y = 88.028, z = 5042.577 }, rot = { x = 1.948, y = 357.635, z = 26.903 }, level = 32, area_id = 32 },
	{ config_id = 748004, gadget_id = 70330402, pos = { x = -1248.935, y = 92.084, z = 5030.922 }, rot = { x = 18.414, y = 4.106, z = 9.209 }, level = 32, state = GadgetState.GearStop, area_id = 32 },
	{ config_id = 748005, gadget_id = 70290602, pos = { x = -1249.995, y = 91.697, z = 5031.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 748006, gadget_id = 70330434, pos = { x = -1243.572, y = 92.823, z = 5044.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 748007, gadget_id = 70500000, pos = { x = -1243.378, y = 120.774, z = 5044.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 748010, gadget_id = 70211111, pos = { x = -1243.062, y = 93.022, z = 5044.559 }, rot = { x = 339.214, y = 118.627, z = 353.665 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1748008, name = "GADGET_STATE_CHANGE_748008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_748008", action = "action_EVENT_GADGET_STATE_CHANGE_748008" },
	{ config_id = 1748009, name = "ANY_GADGET_DIE_748009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_748009", action = "action_EVENT_ANY_GADGET_DIE_748009" }
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
		gadgets = { 748001, 748002, 748003, 748004, 748005, 748007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_748008", "ANY_GADGET_DIE_748009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_748008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308748, 748001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308748, 748002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308748, 748003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308748, 748004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_748008(context, evt)
	-- 创建id为748010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 748010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为748006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 748006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_748009(context, evt)
	if 748005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_748009(context, evt)
	-- 改变指定group组133308748中， configid为748004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308748, 748004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end