-- 基础信息
local base_info = {
	group_id = 133108020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 20040301, pos = { x = 47.526, y = 202.012, z = -853.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20002, gadget_id = 70210106, pos = { x = 47.482, y = 200.738, z = -854.014 }, rot = { x = 0.000, y = 253.266, z = 0.000 }, level = 26, drop_tag = "无相之岩", showcutscene = true, persistent = true, boss_chest = {monster_config_id=20001, resin=40, life_time=600, take_num=100}, area_id = 7 },
	{ config_id = 20004, gadget_id = 70360083, pos = { x = 47.549, y = 200.720, z = -854.011 }, rot = { x = 0.000, y = 343.116, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 },
	{ config_id = 20006, gadget_id = 70360080, pos = { x = 34.906, y = 203.291, z = -826.988 }, rot = { x = 0.000, y = 157.251, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 },
	{ config_id = 20007, gadget_id = 70360080, pos = { x = 17.964, y = 203.300, z = -853.324 }, rot = { x = 0.000, y = 93.133, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 },
	{ config_id = 20008, gadget_id = 70360080, pos = { x = 29.513, y = 203.281, z = -877.324 }, rot = { x = 0.000, y = 38.108, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 },
	{ config_id = 20009, gadget_id = 70360080, pos = { x = 57.523, y = 203.281, z = -881.844 }, rot = { x = 0.000, y = 338.437, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 },
	{ config_id = 20010, gadget_id = 70360080, pos = { x = 76.592, y = 203.161, z = -860.245 }, rot = { x = 0.000, y = 281.395, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 },
	{ config_id = 20011, gadget_id = 70360080, pos = { x = 64.475, y = 203.268, z = -830.000 }, rot = { x = 0.000, y = 215.245, z = 0.000 }, level = 32, persistent = true, mark_flag = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 20012, shape = RegionShape.SPHERE, radius = 35, pos = { x = 48.263, y = 200.736, z = -855.726 }, area_id = 7 },
	{ config_id = 20013, shape = RegionShape.SPHERE, radius = 45, pos = { x = 49.240, y = 200.736, z = -855.084 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1020003, name = "ANY_MONSTER_DIE_20003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20003", action = "action_EVENT_ANY_MONSTER_DIE_20003" },
	{ config_id = 1020012, name = "ENTER_REGION_20012", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_20012", action = "action_EVENT_ENTER_REGION_20012", trigger_count = 0, forbid_guest = false },
	{ config_id = 1020013, name = "LEAVE_REGION_20013", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_20013", action = "action_EVENT_LEAVE_REGION_20013", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 20005, gadget_id = 71000007, pos = { x = 47.546, y = 201.441, z = -854.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 }
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
		-- description = suite_1,
		monsters = { 20001 },
		gadgets = { 20004, 20006, 20007, 20008, 20009, 20010, 20011 },
		regions = { 20012, 20013 },
		triggers = { "ANY_MONSTER_DIE_20003", "ENTER_REGION_20012", "LEAVE_REGION_20013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133108020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 创建id为20002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 20002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 20004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 20006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 20007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 20008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 20009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 20010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 20011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20012(context, evt)
	if evt.param1 ~= 20012 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20012(context, evt)
	   	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==20012 then
					small_region=regions[i]
				end
				if regions[i].config_id==20013 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_20013(context, evt)
	if evt.param1 ~= 20013 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_20013(context, evt)
	     	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 20012)
		end
	
	return 0
end

require "TD_Lib"