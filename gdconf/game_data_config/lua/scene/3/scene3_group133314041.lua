-- 基础信息
local base_info = {
	group_id = 133314041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 25210403, pos = { x = -638.333, y = 99.699, z = 4316.383 }, rot = { x = 0.000, y = 258.708, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 32 },
	{ config_id = 41004, monster_id = 25210303, pos = { x = -640.498, y = 99.704, z = 4315.941 }, rot = { x = 0.000, y = 80.103, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 32 },
	{ config_id = 41005, monster_id = 25310301, pos = { x = -649.173, y = 101.281, z = 4309.597 }, rot = { x = 0.000, y = 84.897, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 41007, monster_id = 25310201, pos = { x = -640.683, y = 99.573, z = 4313.817 }, rot = { x = 0.000, y = 15.112, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41002, gadget_id = 70211012, pos = { x = -654.336, y = 103.477, z = 4312.105 }, rot = { x = 358.906, y = 114.502, z = 354.715 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 41006, gadget_id = 70220128, pos = { x = -639.519, y = 99.579, z = 4316.092 }, rot = { x = 359.351, y = 347.966, z = 359.861 }, level = 32, area_id = 32 },
	{ config_id = 41008, gadget_id = 70210101, pos = { x = -662.581, y = 101.926, z = 4305.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 32 },
	{ config_id = 41009, gadget_id = 70210101, pos = { x = -652.228, y = 102.246, z = 4309.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 41010, gadget_id = 70330428, pos = { x = -645.155, y = 99.480, z = 4316.655 }, rot = { x = 0.000, y = 353.041, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 41011, gadget_id = 70330427, pos = { x = -645.645, y = 99.483, z = 4316.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 41012, gadget_id = 70330428, pos = { x = -639.046, y = 99.575, z = 4313.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 41013, gadget_id = 70330429, pos = { x = -664.931, y = 101.465, z = 4309.173 }, rot = { x = 41.355, y = 160.287, z = 70.454 }, level = 32, area_id = 32 },
	{ config_id = 41014, gadget_id = 70330427, pos = { x = -664.555, y = 101.285, z = 4310.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 41015, gadget_id = 70330428, pos = { x = -666.528, y = 101.325, z = 4308.512 }, rot = { x = 0.000, y = 353.041, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 41016, gadget_id = 70330426, pos = { x = -658.955, y = 101.373, z = 4310.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 41017, gadget_id = 70330428, pos = { x = -659.173, y = 101.363, z = 4309.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1041003, name = "ANY_MONSTER_DIE_41003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41003", action = "action_EVENT_ANY_MONSTER_DIE_41003" }
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
		monsters = { 41001, 41004, 41005, 41007 },
		gadgets = { 41002, 41006, 41008, 41009, 41010, 41011, 41012, 41013, 41014, 41015, 41016, 41017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_41003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41003(context, evt)
	-- 将configid为 41002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end