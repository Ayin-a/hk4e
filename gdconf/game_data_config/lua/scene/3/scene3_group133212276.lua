-- 基础信息
local base_info = {
	group_id = 133212276
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 276004, monster_id = 20010601, pos = { x = -3990.798, y = 224.046, z = -2500.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", isOneoff = true, area_id = 13 },
	{ config_id = 276005, monster_id = 20010501, pos = { x = -3987.667, y = 223.116, z = -2503.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", isOneoff = true, area_id = 13 },
	{ config_id = 276007, monster_id = 20010501, pos = { x = -3983.014, y = 222.687, z = -2500.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", isOneoff = true, area_id = 13 },
	{ config_id = 276008, monster_id = 20010501, pos = { x = -3984.125, y = 222.057, z = -2519.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", isOneoff = true, area_id = 13 },
	{ config_id = 276009, monster_id = 20010501, pos = { x = -3985.594, y = 221.545, z = -2513.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", isOneoff = true, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 276001, gadget_id = 70330090, pos = { x = -3992.319, y = 222.774, z = -2507.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 276002, gadget_id = 70211101, pos = { x = -3990.963, y = 222.972, z = -2506.061 }, rot = { x = 0.000, y = 48.490, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 276006, gadget_id = 70330064, pos = { x = -3958.134, y = 229.843, z = -2498.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 276010, gadget_id = 70900394, pos = { x = -3727.343, y = 233.676, z = -2499.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276003, name = "GADGET_STATE_CHANGE_276003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276003", action = "action_EVENT_GADGET_STATE_CHANGE_276003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 276001, 276002, 276006, 276010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_276003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 276004, 276005, 276007, 276008, 276009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_276003(context, evt)
	if 276001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_276003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212276, 2)
	
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end