-- 基础信息
local base_info = {
	group_id = 111101229
}

-- DEFS_MISCS
local Worktops = {
229011,
229012
}

local EnvControlGadgets = {
229001,
229002,
229003,
229004,
229005,
229010,
229011,
229012,
229013,
229014
}

--仅在白天出现的gadget（夜晚会默认销毁）
local DayAppearGadgets = {
    229006,
    229009
}

--仅在夜晚出现的gadget（白天会默认销毁）
local NightAppearGadgets = {
    229007,
    229008
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
	{ config_id = 229001, gadget_id = 70290169, pos = { x = 2508.932, y = 344.812, z = -1742.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229002, gadget_id = 70290169, pos = { x = 2509.130, y = 346.091, z = -1750.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229003, gadget_id = 70290169, pos = { x = 2506.597, y = 342.281, z = -1735.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229004, gadget_id = 70360305, pos = { x = 2492.654, y = 336.047, z = -1744.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229005, gadget_id = 70360309, pos = { x = 2493.411, y = 337.272, z = -1750.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229006, gadget_id = 70290216, pos = { x = 2522.531, y = 346.165, z = -1736.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229007, gadget_id = 70290217, pos = { x = 2521.347, y = 347.369, z = -1746.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229008, gadget_id = 70310002, pos = { x = 2522.249, y = 346.030, z = -1735.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229009, gadget_id = 70310002, pos = { x = 2521.207, y = 347.198, z = -1745.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229010, gadget_id = 70360304, pos = { x = 2502.482, y = 338.171, z = -1730.169 }, rot = { x = 2.492, y = 0.609, z = 13.729 }, level = 1 },
	{ config_id = 229011, gadget_id = 70360312, pos = { x = 2493.379, y = 339.198, z = -1729.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229012, gadget_id = 70360311, pos = { x = 2493.674, y = 339.094, z = -1731.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229013, gadget_id = 70360307, pos = { x = 2479.273, y = 334.318, z = -1763.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 229014, gadget_id = 70360310, pos = { x = 2476.369, y = 330.531, z = -1747.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1229015, name = "GROUP_LOAD_229015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_229015" }
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
		gadgets = { 229001, 229002, 229003, 229004, 229005, 229010, 229011, 229012, 229013, 229014 },
		regions = { },
		triggers = { "GROUP_LOAD_229015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_229015(context, evt)
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (229010 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229010,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229010,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (229011 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229011,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229011,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (229012 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229012,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229012,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (229005 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229005,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229005,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (229004 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229004,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,229004,302)
	end
	
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"