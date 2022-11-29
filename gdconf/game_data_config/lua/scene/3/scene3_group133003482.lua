-- 基础信息
local base_info = {
	group_id = 133003482
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1722, monster_id = 20040201, pos = { x = 2908.459, y = 270.630, z = -1301.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4352, gadget_id = 70210106, pos = { x = 2908.285, y = 269.918, z = -1301.327 }, rot = { x = 0.000, y = 342.291, z = 0.000 }, level = 26, drop_tag = "无相之风", showcutscene = true, persistent = true, boss_chest = {monster_config_id=1722, resin=40, life_time=600, take_num=100}, area_id = 1 },
	{ config_id = 482003, gadget_id = 70360081, pos = { x = 2926.744, y = 272.520, z = -1324.497 }, rot = { x = 0.000, y = 321.957, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 },
	{ config_id = 482004, gadget_id = 70360081, pos = { x = 2896.577, y = 272.430, z = -1328.308 }, rot = { x = 0.000, y = 23.683, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 },
	{ config_id = 482005, gadget_id = 70360081, pos = { x = 2878.712, y = 272.470, z = -1302.573 }, rot = { x = 0.000, y = 87.746, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 },
	{ config_id = 482006, gadget_id = 70360081, pos = { x = 2890.493, y = 272.550, z = -1277.672 }, rot = { x = 0.000, y = 141.827, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 },
	{ config_id = 482007, gadget_id = 70360081, pos = { x = 2918.981, y = 272.510, z = -1273.826 }, rot = { x = 0.000, y = 200.794, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 },
	{ config_id = 482008, gadget_id = 70360081, pos = { x = 2937.801, y = 272.540, z = -1298.916 }, rot = { x = 0.000, y = 268.464, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 },
	{ config_id = 482009, gadget_id = 70360084, pos = { x = 2908.349, y = 269.870, z = -1301.319 }, rot = { x = 0.000, y = 29.127, z = 0.000 }, level = 30, persistent = true, mark_flag = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 482002, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2907.371, y = 269.887, z = -1300.821 }, area_id = 1 },
	{ config_id = 482010, shape = RegionShape.SPHERE, radius = 45, pos = { x = 2907.371, y = 269.887, z = -1300.821 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000586, name = "ANY_MONSTER_DIE_586", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586", action = "action_EVENT_ANY_MONSTER_DIE_586" },
	{ config_id = 1482002, name = "ENTER_REGION_482002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_482002", action = "action_EVENT_ENTER_REGION_482002", trigger_count = 0, forbid_guest = false },
	{ config_id = 1482010, name = "LEAVE_REGION_482010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_482010", action = "action_EVENT_LEAVE_REGION_482010", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 482001, gadget_id = 71000007, pos = { x = 2907.521, y = 269.887, z = -1301.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 }
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
		monsters = { 1722 },
		gadgets = { 482003, 482004, 482005, 482006, 482007, 482008, 482009 },
		regions = { 482002, 482010 },
		triggers = { "ANY_MONSTER_DIE_586", "ENTER_REGION_482002", "LEAVE_REGION_482010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_586(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_586(context, evt)
	-- 创建id为4352的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4352 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 482009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 482003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 482004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 482005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 482006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 482007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 482008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_482002(context, evt)
	if evt.param1 ~= 482002 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_482002(context, evt)
	   	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==482002 then
					small_region=regions[i]
				end
				if regions[i].config_id==482010 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_482010(context, evt)
	if evt.param1 ~= 482010 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_482010(context, evt)
	 	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 482002)
		end
	
	
	return 0
end

require "TD_Lib"