-- 基础信息
local base_info = {
	group_id = 133223314
}

-- DEFS_MISCS
defs = 
{
        group_id = 133223314,
	--这里填所有的火把configid
        torch_list = {314001,314002,314003,314004,314005,314007},
	--这里填所有正确的火把configid
        torch_solution = {314002,314003,314005,314007},
	--这里填宝箱ID
        chest_id = 314006
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
	{ config_id = 314001, gadget_id = 70310011, pos = { x = -5854.476, y = 166.248, z = -2651.697 }, rot = { x = 0.000, y = 326.189, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 314002, gadget_id = 70310011, pos = { x = -5854.671, y = 161.987, z = -2651.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 314003, gadget_id = 70310011, pos = { x = -5853.044, y = 163.735, z = -2652.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 314004, gadget_id = 70310011, pos = { x = -5850.145, y = 164.727, z = -2654.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 314005, gadget_id = 70310011, pos = { x = -5845.658, y = 164.677, z = -2656.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 314006, gadget_id = 70211111, pos = { x = -5851.135, y = 158.412, z = -2656.139 }, rot = { x = 0.000, y = 209.484, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 314007, gadget_id = 70310011, pos = { x = -5844.598, y = 162.395, z = -2657.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314008, name = "VARIABLE_CHANGE_314008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_314008", action = "action_EVENT_VARIABLE_CHANGE_314008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true }
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
		gadgets = { 314001, 314002, 314003, 314004, 314005, 314007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_314008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_314008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_314008(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133223503) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiTorch"