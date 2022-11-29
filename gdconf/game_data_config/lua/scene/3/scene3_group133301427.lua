-- 基础信息
local base_info = {
	group_id = 133301427
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 427001, monster_id = 21010301, pos = { x = -620.036, y = 146.419, z = 3507.110 }, rot = { x = 0.000, y = 34.660, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 427004, monster_id = 21010201, pos = { x = -621.560, y = 146.541, z = 3508.829 }, rot = { x = 0.000, y = 341.169, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 427002, gadget_id = 70211012, pos = { x = -623.729, y = 146.961, z = 3501.952 }, rot = { x = 0.000, y = 115.987, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 427005, gadget_id = 70220014, pos = { x = -625.507, y = 147.001, z = 3501.277 }, rot = { x = 32.602, y = 0.000, z = 11.545 }, level = 33, area_id = 22 },
	{ config_id = 427006, gadget_id = 70220014, pos = { x = -625.055, y = 147.153, z = 3502.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 427007, gadget_id = 70220035, pos = { x = -623.220, y = 146.969, z = 3507.493 }, rot = { x = 0.000, y = 146.874, z = 289.875 }, level = 33, area_id = 22 },
	{ config_id = 427008, gadget_id = 70300086, pos = { x = -625.149, y = 146.003, z = 3497.496 }, rot = { x = 353.288, y = 3.872, z = 8.395 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1427003, name = "ANY_MONSTER_DIE_427003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_427003", action = "action_EVENT_ANY_MONSTER_DIE_427003" }
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
		monsters = { 427001, 427004 },
		gadgets = { 427002, 427005, 427006, 427007, 427008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_427003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_427003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_427003(context, evt)
	-- 将configid为 427002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 427002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end