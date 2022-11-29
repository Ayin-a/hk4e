-- 基础信息
local base_info = {
	group_id = 133309155
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
	{ config_id = 155001, gadget_id = 70211111, pos = { x = -2302.933, y = -94.777, z = 5996.797 }, rot = { x = 6.101, y = 92.413, z = 357.751 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 155004, gadget_id = 70330281, pos = { x = -2300.926, y = -95.438, z = 5984.451 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 155005, gadget_id = 70330281, pos = { x = -2303.002, y = -95.229, z = 5977.377 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155002, name = "GADGET_STATE_CHANGE_155002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_155002", action = "action_EVENT_GADGET_STATE_CHANGE_155002" },
	{ config_id = 1155006, name = "GROUP_LOAD_155006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_155006", action = "action_EVENT_GROUP_LOAD_155006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1155003, name = "GROUP_LOAD_155003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_155003", action = "action_EVENT_GROUP_LOAD_155003", trigger_count = 0 }
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
		gadgets = { 155004, 155005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_155002", "GROUP_LOAD_155006" },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_155002(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309155, 155004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309155, 155005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_155002(context, evt)
	-- 创建id为155001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 155001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 改变指定group组133309155中， configid为155004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309155, 155004, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133309155中， configid为155005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309155, 155005, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309168) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_155006(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309155, 155004) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309155, 155005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_155006(context, evt)
	-- 创建id为155001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 155001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end