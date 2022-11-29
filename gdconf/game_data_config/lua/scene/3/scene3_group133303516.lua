-- 基础信息
local base_info = {
	group_id = 133303516
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 516001, monster_id = 26090101, pos = { x = -1457.844, y = 128.399, z = 3351.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 516002, monster_id = 28020314, pos = { x = -1457.641, y = 128.405, z = 3351.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 23 },
	{ config_id = 516003, monster_id = 28050106, pos = { x = -1457.687, y = 129.503, z = 3351.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 516004, gadget_id = 70290437, pos = { x = -1457.808, y = 129.140, z = 3351.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 516005, gadget_id = 70217020, pos = { x = -1457.832, y = 128.397, z = 3351.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1516006, name = "GADGET_STATE_CHANGE_516006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_516006", action = "action_EVENT_GADGET_STATE_CHANGE_516006" },
	{ config_id = 1516007, name = "GADGET_STATE_CHANGE_516007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_516007", action = "action_EVENT_GADGET_STATE_CHANGE_516007" },
	{ config_id = 1516008, name = "GADGET_STATE_CHANGE_516008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_516008", action = "action_EVENT_GADGET_STATE_CHANGE_516008" }
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
		gadgets = { 516004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_516006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 516004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_516007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 516004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_516008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_516006(context, evt)
	if 516004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_516006(context, evt)
	-- 创建id为516005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 516005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 516003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_516007(context, evt)
	if 516004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_516007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 516001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_516008(context, evt)
	if 516004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_516008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 516002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/VarunaStandard"