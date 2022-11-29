-- 基础信息
local base_info = {
	group_id = 133220182
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
	{ config_id = 182001, gadget_id = 70710221, pos = { x = -2483.858, y = 242.006, z = -4450.331 }, rot = { x = 0.275, y = 164.246, z = 359.970 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 182002, gadget_id = 70310034, pos = { x = -2458.160, y = 241.185, z = -4450.799 }, rot = { x = 356.146, y = 359.670, z = 4.900 }, level = 27, area_id = 11 },
	{ config_id = 182003, gadget_id = 70310034, pos = { x = -2486.709, y = 241.443, z = -4463.683 }, rot = { x = 0.000, y = 35.393, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 182004, gadget_id = 70211131, pos = { x = -2489.922, y = 241.843, z = -4460.837 }, rot = { x = 359.208, y = 34.471, z = 354.387 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 182005, gadget_id = 70310034, pos = { x = -2494.647, y = 242.091, z = -4461.060 }, rot = { x = 0.000, y = 19.271, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 182006, gadget_id = 70310034, pos = { x = -2463.296, y = 241.625, z = -4472.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 182013, gadget_id = 70310034, pos = { x = -2488.114, y = 242.241, z = -4452.839 }, rot = { x = 2.567, y = 100.406, z = 357.220 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 182014, gadget_id = 70710221, pos = { x = -2483.493, y = 242.836, z = -4451.827 }, rot = { x = 83.502, y = 355.898, z = 206.202 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 182015, gadget_id = 70310034, pos = { x = -2493.956, y = 242.393, z = -4460.793 }, rot = { x = 19.099, y = 2.616, z = 277.948 }, level = 27, area_id = 11 },
	{ config_id = 182016, gadget_id = 70310034, pos = { x = -2480.053, y = 241.932, z = -4452.102 }, rot = { x = 355.935, y = 352.914, z = 356.085 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1182010, name = "QUEST_FINISH_182010", event = EventType.EVENT_QUEST_FINISH, source = "7211311", condition = "", action = "action_EVENT_QUEST_FINISH_182010", trigger_count = 0 },
	{ config_id = 1182011, name = "GROUP_LOAD_182011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_182011", action = "action_EVENT_GROUP_LOAD_182011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 182007, gadget_id = 70211101, pos = { x = -2493.122, y = 242.177, z = -4463.097 }, rot = { x = 15.504, y = 54.666, z = 8.123 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 182008, gadget_id = 70211111, pos = { x = -2491.652, y = 243.322, z = -4465.611 }, rot = { x = 9.014, y = 13.481, z = 345.074 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 182009, gadget_id = 70211101, pos = { x = -2489.875, y = 241.519, z = -4464.662 }, rot = { x = 354.228, y = 349.826, z = 355.590 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 182012, gadget_id = 70360001, pos = { x = -2482.972, y = 242.961, z = -4450.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
		gadgets = { 182001, 182002, 182003, 182004, 182005, 182006 },
		regions = { },
		triggers = { "QUEST_FINISH_182010", "GROUP_LOAD_182011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 182002, 182004, 182013, 182014, 182015, 182016 },
		regions = { },
		triggers = { "QUEST_FINISH_182010", "GROUP_LOAD_182011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_182010(context, evt)
	-- 将configid为 182001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 182003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 182005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_182011(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182011(context, evt)
	-- 将configid为 182001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 182003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 182005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end