-- 基础信息
local base_info = {
	group_id = 250056018
}

-- DEFS_MISCS
local BossOperatorConfigID = 18007
local QuitPointConfigID = 18002
local BossPoolID = 17010

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 白盒用
	{ config_id = 18005, monster_id = 25090101, pos = { x = 215.815, y = -0.149, z = 0.432 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 15, disableWander = true, affix = { 1011, 1008 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18001, gadget_id = 70900201, pos = { x = 221.442, y = 0.523, z = -0.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18002, gadget_id = 70310108, pos = { x = 224.109, y = -0.061, z = -0.555 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 18007, gadget_id = 70360001, pos = { x = 210.062, y = -0.107, z = 0.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18008, gadget_id = 70290137, pos = { x = 209.992, y = 0.000, z = -14.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 18009, gadget_id = 70290137, pos = { x = 210.005, y = 0.114, z = 15.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 18010, gadget_id = 70290137, pos = { x = 195.139, y = 0.206, z = -0.069 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 18011, gadget_id = 70290137, pos = { x = 225.090, y = 0.114, z = -0.061 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 18014, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 210.563, y = -0.160, z = 0.165 } }
}

-- 触发器
triggers = {
	{ config_id = 1018012, name = "GADGET_CREATE_18012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18012", action = "action_EVENT_GADGET_CREATE_18012" },
	{ config_id = 1018013, name = "SELECT_OPTION_18013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18013", action = "action_EVENT_SELECT_OPTION_18013" },
	{ config_id = 1018014, name = "ENTER_REGION_18014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18014", action = "action_EVENT_ENTER_REGION_18014" }
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
		gadgets = { 18001, 18007, 18008, 18009, 18010, 18011 },
		regions = { 18014 },
		triggers = { "GADGET_CREATE_18012", "SELECT_OPTION_18013", "ENTER_REGION_18014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 18005 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_18012(context, evt)
	if 18007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250056018, 18007, {12}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18013(context, evt)
	-- 判断是gadgetid 18007 option_id 12
	if 18007 ~= evt.param1 then
		return false	
	end
	
	if 12 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18013(context, evt)
	-- 删除指定group： 250056018 ；指定config：18007；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056018, 18007, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056018, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18014(context, evt)
	if evt.param1 ~= 18014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18014(context, evt)
	-- 将configid为 18008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 18009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 18010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 18011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end