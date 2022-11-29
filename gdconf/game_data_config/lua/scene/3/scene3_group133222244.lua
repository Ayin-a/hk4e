-- 基础信息
local base_info = {
	group_id = 133222244
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
	{ config_id = 244003, gadget_id = 70211122, pos = { x = -4665.524, y = 100.100, z = -4263.445 }, rot = { x = 0.000, y = 28.178, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 244004, gadget_id = 70211132, pos = { x = -4661.753, y = 100.829, z = -4258.346 }, rot = { x = 0.000, y = 272.492, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 244007, shape = RegionShape.CUBIC, size = { x = 20.000, y = 30.000, z = 20.000 }, pos = { x = -4663.988, y = 100.718, z = -4258.963 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1244007, name = "ENTER_REGION_244007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_244007", action = "action_EVENT_ENTER_REGION_244007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 244001, gadget_id = 70211001, pos = { x = -4675.863, y = 130.407, z = -4244.295 }, rot = { x = 344.294, y = 209.594, z = 355.290 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 244002, gadget_id = 70211112, pos = { x = -4664.101, y = 100.512, z = -4254.339 }, rot = { x = 0.000, y = 211.049, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 244006, gadget_id = 70211102, pos = { x = -4661.772, y = 100.300, z = -4263.735 }, rot = { x = 0.000, y = 333.469, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	regions = {
		{ config_id = 244005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 30.000, z = 20.000 }, pos = { x = -4663.988, y = 100.718, z = -4258.963 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1244005, name = "ENTER_REGION_244005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_244005", action = "action_EVENT_ENTER_REGION_244005", trigger_count = 0 }
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
		gadgets = { 244003, 244004 },
		regions = { 244007 },
		triggers = { "ENTER_REGION_244007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_244007(context, evt)
	if evt.param1 ~= 244007 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_244007(context, evt)
	-- 将configid为 244003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 244004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end