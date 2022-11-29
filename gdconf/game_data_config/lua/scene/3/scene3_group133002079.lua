-- 基础信息
local base_info = {
	group_id = 133002079
}

-- Trigger变量
local defs = {
	monster_id_1 = 163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163, monster_id = 20010301, pos = { x = 1887.560, y = 241.294, z = -886.563 }, rot = { x = 0.000, y = 286.235, z = 0.000 }, level = 7, drop_tag = "史莱姆", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1034, gadget_id = 70500000, pos = { x = 1886.415, y = 240.909, z = -883.064 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 1035, gadget_id = 70500000, pos = { x = 1883.787, y = 240.524, z = -882.441 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 1036, gadget_id = 70500000, pos = { x = 1882.982, y = 240.617, z = -885.515 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 1037, gadget_id = 70500000, pos = { x = 1882.395, y = 240.710, z = -888.315 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 1039, gadget_id = 70500000, pos = { x = 1885.846, y = 241.047, z = -886.193 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 1040, gadget_id = 70500000, pos = { x = 1885.325, y = 241.134, z = -888.679 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 1394, gadget_id = 70220017, pos = { x = 1862.792, y = 237.698, z = -888.334 }, rot = { x = 347.818, y = 87.493, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 1395, gadget_id = 70220017, pos = { x = 1851.378, y = 236.619, z = -885.948 }, rot = { x = 0.000, y = 148.134, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000075, name = "GATHER_75", event = EventType.EVENT_GATHER, source = "1034", condition = "", action = "action_EVENT_GATHER_75" },
	{ config_id = 1000076, name = "GATHER_76", event = EventType.EVENT_GATHER, source = "1035", condition = "", action = "action_EVENT_GATHER_76" },
	{ config_id = 1000077, name = "GATHER_77", event = EventType.EVENT_GATHER, source = "1036", condition = "", action = "action_EVENT_GATHER_77" },
	{ config_id = 1000078, name = "GATHER_78", event = EventType.EVENT_GATHER, source = "1037", condition = "", action = "action_EVENT_GATHER_78" },
	{ config_id = 1000079, name = "GATHER_79", event = EventType.EVENT_GATHER, source = "1039", condition = "", action = "action_EVENT_GATHER_79" },
	{ config_id = 1000080, name = "GATHER_80", event = EventType.EVENT_GATHER, source = "1040", condition = "", action = "action_EVENT_GATHER_80" }
}

-- 变量
variables = {
	{ config_id = 1, name = "1034", value = 0, no_refresh = false },
	{ config_id = 2, name = "1035", value = 0, no_refresh = false },
	{ config_id = 3, name = "1036", value = 0, no_refresh = false },
	{ config_id = 4, name = "1037", value = 0, no_refresh = false },
	{ config_id = 5, name = "1039", value = 0, no_refresh = false },
	{ config_id = 6, name = "1040", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 1034, 1035, 1036, 1037, 1039, 1040, 1394, 1395 },
		regions = { },
		triggers = { "GATHER_75", "GATHER_76", "GATHER_77", "GATHER_78", "GATHER_79", "GATHER_80" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_75(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1034", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_76(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1035", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_77(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1036", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_78(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1037", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_79(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1039", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_80(context, evt)
	-- 将本组内变量名为 "1034" 的变量设置为 1
	math.randomseed(os.time())
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1040", 1) then
	  return -1
	end
	
	local c_1034 = ScriptLib.GetGroupVariableValue(context, "1034")
	local c_1035 = ScriptLib.GetGroupVariableValue(context, "1035")
	local c_1036 = ScriptLib.GetGroupVariableValue(context, "1036")
	local c_1037 = ScriptLib.GetGroupVariableValue(context, "1037")
	local c_1039 = ScriptLib.GetGroupVariableValue(context, "1039")
	local c_1040 = ScriptLib.GetGroupVariableValue(context, "1040")
	local total = c_1034 + c_1035 + c_1036 + c_1037 + c_1039 + c_1040
	
	if total > 3 then
	
	local n = math.random(1,6)
	if n > 2 then
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 1 }) then
	  return -1
	end
	end
	
		
	
	
	end
	
	
	
	
	return 0
end