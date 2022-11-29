-- 基础信息
local base_info = {
	group_id = 133302643
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 643001, monster_id = 21030601, pos = { x = -424.709, y = 216.338, z = 2978.005 }, rot = { x = 0.000, y = 310.045, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, area_id = 24 },
	{ config_id = 643009, monster_id = 21020701, pos = { x = -421.044, y = 217.752, z = 2981.904 }, rot = { x = 0.000, y = 290.025, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 24 },
	{ config_id = 643010, monster_id = 21011001, pos = { x = -425.854, y = 215.613, z = 2980.411 }, rot = { x = 0.000, y = 190.644, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 24 },
	{ config_id = 643011, monster_id = 21011001, pos = { x = -429.654, y = 213.794, z = 2973.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 643002, gadget_id = 70211012, pos = { x = -422.356, y = 217.200, z = 2979.820 }, rot = { x = 26.859, y = 288.880, z = 2.962 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 643004, gadget_id = 70300086, pos = { x = -424.624, y = 214.924, z = 2976.293 }, rot = { x = 352.179, y = 0.000, z = 9.573 }, level = 27, area_id = 24 },
	{ config_id = 643005, gadget_id = 70300086, pos = { x = -419.347, y = 216.876, z = 2980.433 }, rot = { x = 14.526, y = 356.338, z = 345.683 }, level = 27, area_id = 24 },
	{ config_id = 643006, gadget_id = 70300086, pos = { x = -423.526, y = 213.751, z = 2985.085 }, rot = { x = 23.728, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 643007, gadget_id = 70220013, pos = { x = -420.294, y = 218.048, z = 2978.995 }, rot = { x = 0.000, y = 0.000, z = 19.591 }, level = 27, area_id = 24 },
	{ config_id = 643008, gadget_id = 70220013, pos = { x = -425.866, y = 215.739, z = 2975.525 }, rot = { x = 18.210, y = 327.053, z = 25.743 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1643003, name = "ANY_MONSTER_DIE_643003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_643003", action = "action_EVENT_ANY_MONSTER_DIE_643003" }
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
		monsters = { 643001, 643009, 643010, 643011 },
		gadgets = { 643002, 643004, 643005, 643006, 643007, 643008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_643003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_643003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_643003(context, evt)
	-- 将configid为 643002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 643002, GadgetState.Default) then
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