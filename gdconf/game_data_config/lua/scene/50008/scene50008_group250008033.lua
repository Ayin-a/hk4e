-- 基础信息
local base_info = {
	group_id = 250008033
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
	{ config_id = 128, gadget_id = 70900236, pos = { x = 125.535, y = 5.920, z = -548.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 130, gadget_id = 70900236, pos = { x = 144.703, y = 7.851, z = -558.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 131, gadget_id = 70900236, pos = { x = 143.162, y = 7.616, z = -558.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 132, gadget_id = 70900236, pos = { x = 140.892, y = 6.945, z = -557.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 133, gadget_id = 70900236, pos = { x = 139.189, y = 6.293, z = -556.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 134, gadget_id = 70710005, pos = { x = 132.083, y = -6.885, z = -556.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 135, gadget_id = 70900236, pos = { x = 135.139, y = 4.932, z = -550.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 136, gadget_id = 70900236, pos = { x = 137.849, y = 4.932, z = -554.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 137, gadget_id = 70900236, pos = { x = 130.235, y = 4.932, z = -547.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 138, gadget_id = 70900236, pos = { x = 121.689, y = 4.932, z = -548.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 139, gadget_id = 70900236, pos = { x = 117.303, y = 4.932, z = -550.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 140, gadget_id = 70900236, pos = { x = 104.518, y = 14.208, z = -555.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000079, name = "ANY_GADGET_DIE_79", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_79", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 128, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num")
	local c_num = c_num_1 +1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num", c_num) then
	  return -1
	end
	
	if c_num == 11 then
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250008034, suite = 2 }) then
			return -1
		end
	
	end
	return 0
end