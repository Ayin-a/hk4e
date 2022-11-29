-- 基础信息
local base_info = {
	group_id = 177006015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 21020201, pos = { x = 516.593, y = 197.546, z = -425.670 }, rot = { x = 0.000, y = 318.801, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", affix = { 1032 }, pose_id = 401, area_id = 210 },
	{ config_id = 15009, monster_id = 21011001, pos = { x = 507.207, y = 196.874, z = -414.781 }, rot = { x = 0.000, y = 107.955, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1032 }, pose_id = 32, area_id = 210 },
	{ config_id = 15010, monster_id = 21011001, pos = { x = 525.864, y = 200.535, z = -413.857 }, rot = { x = 0.000, y = 248.165, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1032 }, pose_id = 32, area_id = 210 },
	{ config_id = 15011, monster_id = 21010201, pos = { x = 509.203, y = 196.066, z = -426.448 }, rot = { x = 0.000, y = 59.039, z = 0.000 }, level = 36, drop_tag = "丘丘人", affix = { 1032 }, pose_id = 9003, area_id = 210 },
	{ config_id = 15012, monster_id = 21010201, pos = { x = 510.475, y = 196.756, z = -422.240 }, rot = { x = 0.000, y = 122.131, z = 0.000 }, level = 36, drop_tag = "丘丘人", affix = { 1032 }, pose_id = 9003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15002, gadget_id = 70211157, pos = { x = 518.569, y = 197.611, z = -419.778 }, rot = { x = 0.000, y = 247.127, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 15004, gadget_id = 70300089, pos = { x = 508.755, y = 196.262, z = -419.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 15005, gadget_id = 70300089, pos = { x = 504.895, y = 195.295, z = -425.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 15006, gadget_id = 70300089, pos = { x = 506.320, y = 195.919, z = -435.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 15007, gadget_id = 70300089, pos = { x = 516.201, y = 197.088, z = -417.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 15008, gadget_id = 70300089, pos = { x = 524.518, y = 198.449, z = -429.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 15013, gadget_id = 70300108, pos = { x = 523.224, y = 198.144, z = -421.253 }, rot = { x = 0.000, y = 201.842, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 15014, gadget_id = 70300108, pos = { x = 522.045, y = 198.224, z = -426.971 }, rot = { x = 0.000, y = 225.490, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 15015, gadget_id = 70300108, pos = { x = 522.816, y = 198.228, z = -424.297 }, rot = { x = 0.000, y = 210.296, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 15016, gadget_id = 70310006, pos = { x = 513.773, y = 197.147, z = -423.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 15017, gadget_id = 70300091, pos = { x = 514.095, y = 196.480, z = -405.787 }, rot = { x = 7.579, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 15018, gadget_id = 70300090, pos = { x = 502.426, y = 194.317, z = -433.074 }, rot = { x = 0.000, y = 28.861, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 15019, gadget_id = 70300081, pos = { x = 518.459, y = 197.224, z = -431.449 }, rot = { x = 356.379, y = 66.078, z = 359.540 }, level = 36, area_id = 210 },
	{ config_id = 15020, gadget_id = 70220013, pos = { x = 508.031, y = 195.975, z = -430.778 }, rot = { x = 357.902, y = 4.822, z = 9.970 }, level = 36, area_id = 210 },
	{ config_id = 15021, gadget_id = 70220013, pos = { x = 506.086, y = 195.663, z = -429.994 }, rot = { x = 358.578, y = 20.153, z = 9.912 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015003, name = "ANY_MONSTER_DIE_15003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15003", action = "action_EVENT_ANY_MONSTER_DIE_15003", trigger_count = 0 }
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
		monsters = { 15001, 15009, 15010, 15011, 15012 },
		gadgets = { 15002, 15004, 15005, 15006, 15007, 15008, 15013, 15014, 15015, 15016, 15017, 15018, 15019, 15020, 15021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 15002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end