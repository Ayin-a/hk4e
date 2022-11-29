-- 基础信息
local base_info = {
	group_id = 133103240
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 240005, monster_id = 28010301, pos = { x = 758.367, y = 226.094, z = 1302.712 }, rot = { x = 0.000, y = 148.350, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 6 },
	{ config_id = 240006, monster_id = 28010301, pos = { x = 756.159, y = 226.178, z = 1303.106 }, rot = { x = 0.000, y = 182.671, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 6 },
	{ config_id = 240007, monster_id = 28010301, pos = { x = 757.322, y = 226.042, z = 1303.510 }, rot = { x = 0.000, y = 334.315, z = 0.000 }, level = 24, drop_tag = "采集动物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 240001, gadget_id = 70360001, pos = { x = 752.654, y = 228.338, z = 1313.528 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 240002, gadget_id = 70211111, pos = { x = 757.237, y = 226.164, z = 1302.750 }, rot = { x = 0.000, y = 359.361, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1240003, name = "GADGET_CREATE_240003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_240003", action = "action_EVENT_GADGET_CREATE_240003", trigger_count = 0 },
	{ config_id = 1240004, name = "SELECT_OPTION_240004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_240004", action = "action_EVENT_SELECT_OPTION_240004" },
	{ config_id = 1240008, name = "GADGET_STATE_CHANGE_240008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_240008", action = "action_EVENT_GADGET_STATE_CHANGE_240008", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 240005, 240006, 240007 },
		gadgets = { 240001 },
		regions = { },
		triggers = { "GADGET_CREATE_240003", "SELECT_OPTION_240004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 240002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_240008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_240003(context, evt)
	-- 判断是gadgetid 240001
	if 240001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_240003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_240004(context, evt)
	if 240001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_240004(context, evt)
	-- 删除指定group： 133103240 ；指定config：240001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103240, 240001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103240, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_240008(context, evt)
	if 240002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_240008(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end