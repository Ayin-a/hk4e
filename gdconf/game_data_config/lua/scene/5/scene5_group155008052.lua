-- 基础信息
local base_info = {
	group_id = 155008052
}

-- DEFS_MISCS
local Worktops = {52004}
local EnvControlGadgets = {52004}
local DayAppearGadgets = {52002}
local NightAppearGadgets = {52001}

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
	{ config_id = 52001, gadget_id = 70360315, pos = { x = -67.335, y = 166.278, z = 34.814 }, rot = { x = 0.000, y = 0.644, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 52002, gadget_id = 70360314, pos = { x = -67.335, y = 166.278, z = 34.814 }, rot = { x = 0.000, y = 0.644, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 52003, gadget_id = 70211111, pos = { x = -64.759, y = 167.828, z = 35.203 }, rot = { x = 0.000, y = 272.370, z = 0.000 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 52004, gadget_id = 70360312, pos = { x = -78.118, y = 168.730, z = 41.114 }, rot = { x = 355.755, y = 248.881, z = 356.867 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052005, name = "GADGET_STATE_CHANGE_52005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52005", action = "action_EVENT_GADGET_STATE_CHANGE_52005", trigger_count = 0 },
	{ config_id = 1052006, name = "GROUP_LOAD_52006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_52006", trigger_count = 0 }
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
		gadgets = { 52003, 52004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52005", "GROUP_LOAD_52006" },
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
function condition_EVENT_GADGET_STATE_CHANGE_52005(context, evt)
	if 312 ~= ScriptLib.GetGadgetStateByConfigId(context, 155008052, 52004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52005(context, evt)
	ScriptLib.PrintContextLog(context, "manzutiaojianle")        
	ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	        
	-- 卸载指定gadget
	                if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 155008052, EntityType.GADGET, 52001 ) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	                        return -1
	                end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52006(context, evt)
	DayNight_Gadget_Unlock(context,52004)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"