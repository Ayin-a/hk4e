-- 基础信息
local base_info = {
	group_id = 133301524
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 524001, monster_id = 20060101, pos = { x = -577.309, y = 115.550, z = 3389.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 524002, monster_id = 20060101, pos = { x = -582.073, y = 115.550, z = 3395.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 524003, monster_id = 20060101, pos = { x = -592.629, y = 115.550, z = 3395.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 524004, monster_id = 20060101, pos = { x = -581.616, y = 115.550, z = 3389.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 524005, monster_id = 20060101, pos = { x = -608.986, y = 115.550, z = 3407.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 524006, monster_id = 20060101, pos = { x = -605.358, y = 115.550, z = 3402.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 524009, gadget_id = 70290537, pos = { x = -620.688, y = 117.950, z = 3590.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, area_id = 22 },
	{ config_id = 524011, gadget_id = 70380015, pos = { x = -609.512, y = 115.550, z = 3408.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, area_id = 22 },
	{ config_id = 524012, gadget_id = 70290471, pos = { x = -575.432, y = 114.494, z = 3381.247 }, rot = { x = 0.000, y = 323.094, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1524010, name = "GROUP_LOAD_524010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_524010", action = "action_EVENT_GROUP_LOAD_524010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "suit2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 524007, gadget_id = 70290563, pos = { x = -602.575, y = 83.470, z = 3408.106 }, rot = { x = 1.319, y = 348.564, z = 177.042 }, level = 33, area_id = 22 }
	},
	triggers = {
		{ config_id = 1524008, name = "VARIABLE_CHANGE_524008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_524008", action = "action_EVENT_VARIABLE_CHANGE_524008", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "GROUP_LOAD_524010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 524001, 524002, 524003, 524004, 524005, 524006 },
		gadgets = { 524009, 524011, 524012 },
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
function condition_EVENT_GROUP_LOAD_524010(context, evt)
	-- 判断变量"isGearStart"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isGearStart", 133301215) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_524010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301524, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end