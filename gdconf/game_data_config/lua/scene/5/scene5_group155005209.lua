-- 基础信息
local base_info = {
	group_id = 155005209
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 209001, monster_id = 21020501, pos = { x = 609.147, y = 194.124, z = 280.006 }, rot = { x = 0.000, y = 138.153, z = 0.000 }, level = 36, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 200 },
	{ config_id = 209004, monster_id = 21010201, pos = { x = 618.772, y = 195.281, z = 274.176 }, rot = { x = 0.000, y = 286.714, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 },
	{ config_id = 209005, monster_id = 21010201, pos = { x = 612.742, y = 194.670, z = 268.308 }, rot = { x = 0.000, y = 33.106, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 },
	{ config_id = 209006, monster_id = 21010201, pos = { x = 613.503, y = 194.663, z = 272.733 }, rot = { x = 0.000, y = 318.082, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 },
	{ config_id = 209007, monster_id = 21010401, pos = { x = 617.605, y = 195.029, z = 278.738 }, rot = { x = 0.000, y = 269.763, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 200 },
	{ config_id = 209008, monster_id = 21010401, pos = { x = 607.776, y = 194.156, z = 272.099 }, rot = { x = 0.000, y = 13.047, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 209002, gadget_id = 70211012, pos = { x = 602.504, y = 193.563, z = 281.305 }, rot = { x = 0.146, y = 129.536, z = 359.261 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 209009, gadget_id = 70300086, pos = { x = 610.159, y = 193.903, z = 286.264 }, rot = { x = 0.000, y = 328.083, z = 354.521 }, level = 36, area_id = 200 },
	{ config_id = 209010, gadget_id = 70300086, pos = { x = 599.492, y = 193.219, z = 270.703 }, rot = { x = 0.000, y = 275.100, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209011, gadget_id = 70300089, pos = { x = 609.727, y = 194.283, z = 264.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209012, gadget_id = 70350007, pos = { x = 607.083, y = 194.000, z = 261.771 }, rot = { x = 0.000, y = 10.278, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209013, gadget_id = 70310001, pos = { x = 615.010, y = 194.873, z = 264.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209014, gadget_id = 70310001, pos = { x = 621.026, y = 195.434, z = 278.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209015, gadget_id = 70350007, pos = { x = 612.769, y = 194.609, z = 262.483 }, rot = { x = 0.000, y = 329.814, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209016, gadget_id = 70300089, pos = { x = 616.569, y = 194.787, z = 283.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209017, gadget_id = 70350007, pos = { x = 620.350, y = 195.211, z = 282.143 }, rot = { x = 0.000, y = 245.917, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209019, gadget_id = 70300089, pos = { x = 600.740, y = 193.746, z = 263.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209020, gadget_id = 70220013, pos = { x = 605.454, y = 193.785, z = 266.154 }, rot = { x = 0.000, y = 350.391, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 209021, gadget_id = 70220013, pos = { x = 602.507, y = 193.372, z = 266.626 }, rot = { x = 0.000, y = 310.306, z = 5.884 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1209003, name = "ANY_MONSTER_DIE_209003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_209003", action = "action_EVENT_ANY_MONSTER_DIE_209003" }
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
		monsters = { 209001, 209004, 209005, 209006, 209007, 209008 },
		gadgets = { 209002, 209009, 209010, 209011, 209012, 209013, 209014, 209015, 209016, 209017, 209019, 209020, 209021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_209003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_209003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_209003(context, evt)
	-- 将configid为 209002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 209002, GadgetState.Default) then
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