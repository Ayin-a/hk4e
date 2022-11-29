-- 基础信息
local base_info = {
	group_id = 133220580
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 580006, monster_id = 22010201, pos = { x = -2224.820, y = 200.000, z = -4394.165 }, rot = { x = 0.000, y = 159.791, z = 0.000 }, level = 27, drop_tag = "深渊法师", pose_id = 9013, area_id = 11 },
	{ config_id = 580008, monster_id = 21020801, pos = { x = -2222.489, y = 200.193, z = -4396.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘岩盔王", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 580001, gadget_id = 70300107, pos = { x = -2222.609, y = 199.856, z = -4396.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 580002, gadget_id = 70300089, pos = { x = -2228.363, y = 199.428, z = -4396.426 }, rot = { x = 359.956, y = 90.784, z = 359.885 }, level = 27, area_id = 11 },
	{ config_id = 580003, gadget_id = 70300089, pos = { x = -2222.599, y = 199.421, z = -4401.964 }, rot = { x = 359.956, y = 90.784, z = 359.885 }, level = 27, area_id = 11 },
	{ config_id = 580004, gadget_id = 70300089, pos = { x = -2216.957, y = 199.436, z = -4396.605 }, rot = { x = 359.956, y = 90.784, z = 359.885 }, level = 27, area_id = 11 },
	{ config_id = 580005, gadget_id = 70300089, pos = { x = -2222.607, y = 199.444, z = -4390.560 }, rot = { x = 359.956, y = 90.784, z = 359.885 }, level = 27, area_id = 11 },
	{ config_id = 580007, gadget_id = 70300085, pos = { x = -2222.609, y = 199.623, z = -4396.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 580012, gadget_id = 70211011, pos = { x = -2222.609, y = 200.028, z = -4396.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1580009, name = "ANY_GADGET_DIE_580009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_580009", trigger_count = 0 },
	{ config_id = 1580010, name = "VARIABLE_CHANGE_580010", event = EventType.EVENT_VARIABLE_CHANGE, source = "num", condition = "condition_EVENT_VARIABLE_CHANGE_580010", action = "action_EVENT_VARIABLE_CHANGE_580010" },
	{ config_id = 1580011, name = "ANY_MONSTER_DIE_580011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_580011", action = "action_EVENT_ANY_MONSTER_DIE_580011" },
	{ config_id = 1580013, name = "GADGET_STATE_CHANGE_580013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_580013", action = "action_EVENT_GADGET_STATE_CHANGE_580013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = true }
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
		monsters = { 580006 },
		gadgets = { 580001, 580002, 580003, 580004, 580005, 580007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_580009", "VARIABLE_CHANGE_580010", "ANY_MONSTER_DIE_580011", "GADGET_STATE_CHANGE_580013" },
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

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_580009(context, evt)
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_580010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num"为4
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_580010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 580001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 580008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_580011(context, evt)
	--判断死亡怪物的configid是否为 580008
	if evt.param1 ~= 580008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_580011(context, evt)
	-- 创建id为580012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 580012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_580013(context, evt)
	if 580012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_580013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220580, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end