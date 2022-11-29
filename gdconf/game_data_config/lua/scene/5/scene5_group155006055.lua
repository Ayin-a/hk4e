-- 基础信息
local base_info = {
	group_id = 155006055
}

-- Trigger变量
local defs = {
	pointarryRot = 500600005
}

-- DEFS_MISCS
local Worktops = {55005}
local EnvControlGadgets = {55005,55006,55007}
local DayAppearGadgets = {55004}
local NightAppearGadgets = {55002}

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
	{ config_id = 55001, gadget_id = 70211121, pos = { x = 139.641, y = 196.837, z = -429.407 }, rot = { x = 0.000, y = 331.966, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 55002, gadget_id = 70360315, pos = { x = 138.873, y = 194.975, z = -427.717 }, rot = { x = 0.000, y = 328.937, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 55003, gadget_id = 70290281, pos = { x = 138.947, y = 206.897, z = -427.344 }, rot = { x = 89.644, y = 149.366, z = 179.638 }, level = 36, area_id = 200 },
	{ config_id = 55004, gadget_id = 70360314, pos = { x = 133.556, y = 194.975, z = -418.779 }, rot = { x = 0.000, y = 328.937, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 55005, gadget_id = 70360311, pos = { x = 136.666, y = 197.295, z = -417.789 }, rot = { x = 0.000, y = 239.953, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 55006, gadget_id = 70290169, pos = { x = 148.008, y = 201.777, z = -404.584 }, rot = { x = 0.000, y = 329.031, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 55007, gadget_id = 70360304, pos = { x = 154.429, y = 196.601, z = -407.785 }, rot = { x = 0.000, y = 329.467, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055008, name = "GADGET_STATE_CHANGE_55008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_55008", action = "action_EVENT_GADGET_STATE_CHANGE_55008", trigger_count = 0 },
	{ config_id = 1055009, name = "GROUP_LOAD_55009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_55009", trigger_count = 0 }
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
		gadgets = { 55001, 55003, 55005, 55006, 55007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_55008", "GROUP_LOAD_55009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_55008(context, evt)
	if 212 ~= ScriptLib.GetGadgetStateByConfigId(context, 155006055, 55005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_55008(context, evt)
	ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	-- 将configid为 55003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	 -- 卸载指定gadget
	                if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 155006055, EntityType.GADGET, 55002 ) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	                        return -1
	                end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_55009(context, evt)
	DayNight_Gadget_Unlock(context,55005)
	DayNight_Gadget_Unlock(context,55007)
	DayNight_Gadget_Reset(context,55007)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"