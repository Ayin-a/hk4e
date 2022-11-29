-- 基础信息
local base_info = {
	group_id = 133309726
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 726002
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1
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
	{ config_id = 726001, gadget_id = 70211101, pos = { x = -2425.918, y = 113.008, z = 5284.095 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 接收装置#1
	{ config_id = 726002, gadget_id = 70330281, pos = { x = -2425.916, y = 119.115, z = 5284.095 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 同时激活判定
	{ config_id = 1726005, name = "GADGET_STATE_CHANGE_726005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_726005", action = "action_EVENT_GADGET_STATE_CHANGE_726005" },
	-- 玩法完成表现
	{ config_id = 1726008, name = "VARIABLE_CHANGE_726008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_726008", action = "action_EVENT_VARIABLE_CHANGE_726008" },
	-- （可魔改）玩法完成时行为
	{ config_id = 1726009, name = "VARIABLE_CHANGE_726009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_726009", action = "action_EVENT_VARIABLE_CHANGE_726009" },
	-- 玩法完成保底
	{ config_id = 1726010, name = "GROUP_LOAD_726010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_726010", action = "action_EVENT_GROUP_LOAD_726010", trigger_count = 0 },
	-- 保底刷宝箱
	{ config_id = 1726012, name = "GROUP_LOAD_726012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_726012", action = "action_EVENT_GROUP_LOAD_726012", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1726013, name = "VARIABLE_CHANGE_726013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_726013", action = "action_EVENT_VARIABLE_CHANGE_726013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 726002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_726005", "VARIABLE_CHANGE_726008", "VARIABLE_CHANGE_726009", "GROUP_LOAD_726010", "GROUP_LOAD_726012", "VARIABLE_CHANGE_726013" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 726001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_726005(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309726, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_726005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_726008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_726008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309726中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309726, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_726009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_726009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309726, 3)
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309727) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_726010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_726010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309726中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309726, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_726012(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_726012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309726, 3)
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309727) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_726013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_726013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end