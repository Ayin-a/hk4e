-- 基础信息
local base_info = {
	group_id = 133305002
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
	-- 碎石堆主线1
	{ config_id = 2001, gadget_id = 70330462, pos = { x = -2288.893, y = 244.857, z = 3953.949 }, rot = { x = 0.000, y = 322.675, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆支线1
	{ config_id = 2002, gadget_id = 70330462, pos = { x = -2344.622, y = 230.061, z = 4022.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆主线2
	{ config_id = 2003, gadget_id = 70330462, pos = { x = -2363.250, y = 216.238, z = 3998.719 }, rot = { x = 0.000, y = 308.626, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆支线2
	{ config_id = 2004, gadget_id = 70330462, pos = { x = -2389.053, y = 219.132, z = 4050.334 }, rot = { x = 0.000, y = 19.959, z = 81.936 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆主线3
	{ config_id = 2005, gadget_id = 70330462, pos = { x = -2455.241, y = 238.397, z = 4058.252 }, rot = { x = 337.843, y = 294.159, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆主线4
	{ config_id = 2006, gadget_id = 70330462, pos = { x = -2508.942, y = 261.211, z = 4063.565 }, rot = { x = 328.951, y = 3.542, z = 350.270 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆主线1判定
	{ config_id = 2007, gadget_id = 70360001, pos = { x = -2289.977, y = 244.857, z = 3953.122 }, rot = { x = 0.000, y = 318.876, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆支线1判定
	{ config_id = 2008, gadget_id = 70360001, pos = { x = -2344.622, y = 230.061, z = 4022.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆主线2判定
	{ config_id = 2009, gadget_id = 70360001, pos = { x = -2363.250, y = 216.238, z = 3998.719 }, rot = { x = 0.000, y = 328.496, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆支线2判定
	{ config_id = 2010, gadget_id = 70360001, pos = { x = -2389.053, y = 219.132, z = 4050.334 }, rot = { x = 0.000, y = 19.959, z = 81.936 }, level = 32, persistent = true, area_id = 26 },
	-- 碎石堆主线3判定
	{ config_id = 2011, gadget_id = 70360001, pos = { x = -2455.274, y = 237.877, z = 4055.060 }, rot = { x = 337.843, y = 294.159, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	-- 最终判定
	{ config_id = 2012, gadget_id = 70360001, pos = { x = -2509.911, y = 263.700, z = 4063.756 }, rot = { x = 0.000, y = 184.371, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 主机进入Region改变量
	{ config_id = 2020, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2505.760, y = 255.326, z = 4051.897 }, area_id = 26 },
	-- 主机离开Region改变量
	{ config_id = 2022, shape = RegionShape.SPHERE, radius = 17, pos = { x = -2505.760, y = 255.326, z = 4051.897 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 碎石堆主线1被打碎
	{ config_id = 1002013, name = "ANY_GADGET_DIE_2013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2013", action = "action_EVENT_ANY_GADGET_DIE_2013" },
	-- 碎石堆支线1被打碎
	{ config_id = 1002014, name = "ANY_GADGET_DIE_2014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2014", action = "action_EVENT_ANY_GADGET_DIE_2014" },
	-- 碎石堆主线2被打碎
	{ config_id = 1002015, name = "ANY_GADGET_DIE_2015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2015", action = "action_EVENT_ANY_GADGET_DIE_2015" },
	-- 碎石堆支线2被打碎
	{ config_id = 1002016, name = "ANY_GADGET_DIE_2016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2016", action = "action_EVENT_ANY_GADGET_DIE_2016" },
	-- 碎石堆主线3被打碎
	{ config_id = 1002017, name = "ANY_GADGET_DIE_2017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2017", action = "action_EVENT_ANY_GADGET_DIE_2017" },
	-- 碎石堆主线4改变量
	{ config_id = 1002018, name = "ANY_GADGET_DIE_2018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2018", action = "action_EVENT_ANY_GADGET_DIE_2018" },
	-- Lua通知
	{ config_id = 1002019, name = "GADGET_STATE_CHANGE_2019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2019", action = "action_EVENT_GADGET_STATE_CHANGE_2019", trigger_count = 0 },
	-- 主机进入Region改变量
	{ config_id = 1002020, name = "ENTER_REGION_2020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2020", action = "action_EVENT_ENTER_REGION_2020", trigger_count = 0 },
	-- Region与碎石堆触发后改操作台状态
	{ config_id = 1002021, name = "VARIABLE_CHANGE_2021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2021", action = "action_EVENT_VARIABLE_CHANGE_2021", trigger_count = 0 },
	-- 主机离开Region改变量
	{ config_id = 1002022, name = "LEAVE_REGION_2022", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_2022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone", value = 0, no_refresh = true },
	{ config_id = 2, name = "region", value = 0, no_refresh = true }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012 },
		regions = { 2020, 2022 },
		triggers = { "ANY_GADGET_DIE_2013", "ANY_GADGET_DIE_2014", "ANY_GADGET_DIE_2015", "ANY_GADGET_DIE_2016", "ANY_GADGET_DIE_2017", "ANY_GADGET_DIE_2018", "GADGET_STATE_CHANGE_2019", "ENTER_REGION_2020", "VARIABLE_CHANGE_2021", "LEAVE_REGION_2022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_GADGET_DIE_2013(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2013(context, evt)
	-- 将configid为 2007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2014(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2014(context, evt)
	-- 将configid为 2008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2015(context, evt)
	if 2003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2015(context, evt)
	-- 将configid为 2009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2016(context, evt)
	if 2004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2016(context, evt)
	-- 将configid为 2010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2017(context, evt)
	if 2005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2017(context, evt)
	-- 将configid为 2011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2018(context, evt)
	if 2006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2018(context, evt)
	-- 将本组内变量名为 "stone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2019(context, evt)
	if 2012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7321109") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2020(context, evt)
	if evt.param1 ~= 2020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2020(context, evt)
	-- 将本组内变量名为 "region" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "region", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone"为1
	if ScriptLib.GetGroupVariableValue(context, "stone") ~= 1 then
			return false
	end
	
	-- 判断变量"region"为1
	if ScriptLib.GetGroupVariableValue(context, "region") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2021(context, evt)
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_2022(context, evt)
	-- 将本组内变量名为 "region" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "region", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end