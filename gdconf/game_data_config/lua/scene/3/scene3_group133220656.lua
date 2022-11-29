-- 基础信息
local base_info = {
	group_id = 133220656
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 656001, monster_id = 28020403, pos = { x = -2761.722, y = 206.003, z = -4093.630 }, rot = { x = 0.000, y = 96.274, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 656002, gadget_id = 70710111, pos = { x = -2761.726, y = 205.915, z = -4091.180 }, rot = { x = 0.000, y = 50.677, z = 357.533 }, level = 27, interact_id = 12, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1656003, name = "GROUP_LOAD_656003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_656003", action = "action_EVENT_GROUP_LOAD_656003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "dog", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_656003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_656003(context, evt)
	-- 判断变量"dog"为1
	if ScriptLib.GetGroupVariableValue(context, "dog") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_656003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 656001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为656002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 656002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end