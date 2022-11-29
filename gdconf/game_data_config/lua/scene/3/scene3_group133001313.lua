-- 基础信息
local base_info = {
	group_id = 133001313
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1372, monster_id = 20040101, pos = { x = 1308.950, y = 331.783, z = -1942.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3279, gadget_id = 70210106, pos = { x = 1309.352, y = 330.010, z = -1942.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "无相之雷", showcutscene = true, persistent = true, boss_chest = {monster_config_id=1372, resin=40,life_time=600, take_num=100}, area_id = 2 },
	{ config_id = 313001, gadget_id = 70360082, pos = { x = 1304.330, y = 332.530, z = -1913.640 }, rot = { x = 0.000, y = 165.827, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 },
	{ config_id = 313002, gadget_id = 70360085, pos = { x = 1309.300, y = 330.010, z = -1942.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 },
	{ config_id = 313003, gadget_id = 70360082, pos = { x = 1333.300, y = 332.577, z = -1925.360 }, rot = { x = 0.000, y = 237.437, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 },
	{ config_id = 313004, gadget_id = 70360082, pos = { x = 1337.170, y = 332.540, z = -1953.040 }, rot = { x = 0.000, y = 290.930, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 },
	{ config_id = 313005, gadget_id = 70360082, pos = { x = 1313.190, y = 332.661, z = -1971.980 }, rot = { x = 0.000, y = 355.017, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 },
	{ config_id = 313006, gadget_id = 70360082, pos = { x = 1284.550, y = 332.669, z = -1958.950 }, rot = { x = 0.000, y = 56.719, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 },
	{ config_id = 313007, gadget_id = 70360082, pos = { x = 1281.810, y = 332.679, z = -1931.540 }, rot = { x = 0.000, y = 110.801, z = 0.000 }, level = 15, persistent = true, mark_flag = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 313009, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1307.247, y = 330.026, z = -1943.044 }, area_id = 2 },
	{ config_id = 313010, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1307.717, y = 330.026, z = -1943.867 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000488, name = "ANY_MONSTER_DIE_488", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488", action = "action_EVENT_ANY_MONSTER_DIE_488" },
	{ config_id = 1313009, name = "ENTER_REGION_313009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_313009", action = "action_EVENT_ENTER_REGION_313009", trigger_count = 0, forbid_guest = false },
	{ config_id = 1313010, name = "LEAVE_REGION_313010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_313010", action = "action_EVENT_LEAVE_REGION_313010", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 313008, gadget_id = 71000007, pos = { x = 1308.609, y = 330.027, z = -1942.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 }
	}
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
		monsters = { 1372 },
		gadgets = { 313001, 313002, 313003, 313004, 313005, 313006, 313007 },
		regions = { 313009, 313010 },
		triggers = { "ANY_MONSTER_DIE_488", "ENTER_REGION_313009", "LEAVE_REGION_313010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 创建id为3279的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3279 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 313002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 313007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_313009(context, evt)
	if evt.param1 ~= 313009 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_313009(context, evt)
	    	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==313009 then
					small_region=regions[i]
				end
				if regions[i].config_id==313010 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_313010(context, evt)
	if evt.param1 ~= 313010 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_313010(context, evt)
	  	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 313009)
		end
	
	
	return 0
end

require "TD_Lib"