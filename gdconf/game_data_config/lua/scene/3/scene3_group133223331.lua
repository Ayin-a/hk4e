-- 基础信息
local base_info = {
	group_id = 133223331
}

-- DEFS_MISCS
defs = 
{
        group_id = 133223331,
	--这里填所有的火把configid
        torch_list = {331001,331002,331003,331004,331005},
	--这里填所有正确的火把configid
        torch_solution = {331002,331004,331005},
	--这里填宝箱ID
        chest_id = 331006
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
	{ config_id = 331001, gadget_id = 70310011, pos = { x = -5907.050, y = 168.478, z = -2769.119 }, rot = { x = 30.403, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 331002, gadget_id = 70310011, pos = { x = -5914.904, y = 167.562, z = -2771.708 }, rot = { x = 355.371, y = 2.229, z = 351.570 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 331003, gadget_id = 70310011, pos = { x = -5912.125, y = 166.271, z = -2763.206 }, rot = { x = 19.854, y = 2.234, z = 7.998 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 331004, gadget_id = 70310011, pos = { x = -5920.613, y = 166.960, z = -2758.562 }, rot = { x = 355.227, y = 13.186, z = 352.310 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 331005, gadget_id = 70310011, pos = { x = -5925.005, y = 167.780, z = -2768.078 }, rot = { x = 4.871, y = 353.162, z = 339.817 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 331006, gadget_id = 70211111, pos = { x = -5916.950, y = 166.392, z = -2762.923 }, rot = { x = 0.000, y = 209.173, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 成就计数
	{ config_id = 1331007, name = "VARIABLE_CHANGE_331007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_331007", action = "action_EVENT_VARIABLE_CHANGE_331007" }
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
		gadgets = { 331001, 331002, 331003, 331004, 331005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_331007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_331007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_331007(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133223503) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiTorch"