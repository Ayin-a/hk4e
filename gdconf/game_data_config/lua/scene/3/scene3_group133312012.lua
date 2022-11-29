-- 基础信息
local base_info = {
	group_id = 133312012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21010201, pos = { x = -3014.732, y = 79.690, z = 4644.250 }, rot = { x = 0.000, y = 36.185, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 28 },
	{ config_id = 12004, monster_id = 21030201, pos = { x = -3007.385, y = 72.403, z = 4662.354 }, rot = { x = 0.000, y = 256.326, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 28 },
	{ config_id = 12006, monster_id = 21020101, pos = { x = -3012.760, y = 72.830, z = 4661.155 }, rot = { x = 0.000, y = 100.837, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 28 },
	{ config_id = 12007, monster_id = 21010101, pos = { x = -3007.719, y = 74.367, z = 4674.854 }, rot = { x = 0.000, y = 26.523, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9016, area_id = 28 },
	{ config_id = 12008, monster_id = 21010401, pos = { x = -3002.064, y = 78.571, z = 4668.580 }, rot = { x = 0.000, y = 185.470, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12002, gadget_id = 70211012, pos = { x = -3019.202, y = 74.035, z = 4659.682 }, rot = { x = 0.000, y = 75.898, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 12005, gadget_id = 70310009, pos = { x = -3009.379, y = 72.446, z = 4661.858 }, rot = { x = 2.196, y = 74.197, z = 356.612 }, level = 1, area_id = 28 },
	{ config_id = 12009, gadget_id = 70220026, pos = { x = -3015.814, y = 73.139, z = 4664.933 }, rot = { x = 0.000, y = 19.559, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 12010, gadget_id = 70220013, pos = { x = -3016.354, y = 73.365, z = 4666.614 }, rot = { x = 350.574, y = 343.817, z = 349.951 }, level = 1, area_id = 28 },
	{ config_id = 12011, gadget_id = 70300089, pos = { x = -2995.785, y = 72.721, z = 4659.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 12012, gadget_id = 70300089, pos = { x = -2996.474, y = 72.906, z = 4655.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 12013, gadget_id = 70300089, pos = { x = -2976.232, y = 71.251, z = 4657.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 12014, gadget_id = 70220013, pos = { x = -3006.392, y = 73.383, z = 4671.092 }, rot = { x = 347.302, y = 344.005, z = 3.606 }, level = 32, area_id = 28 },
	{ config_id = 12015, gadget_id = 70220013, pos = { x = -2993.735, y = 95.831, z = 4643.455 }, rot = { x = 4.360, y = 264.823, z = 1.145 }, level = 32, area_id = 28 },
	{ config_id = 12016, gadget_id = 70220013, pos = { x = -2994.780, y = 95.833, z = 4645.887 }, rot = { x = 4.308, y = 232.966, z = 358.674 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "ANY_MONSTER_DIE_12003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12003", action = "action_EVENT_ANY_MONSTER_DIE_12003" }
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
		monsters = { 12001, 12004, 12006, 12007, 12008 },
		gadgets = { 12002, 12005, 12009, 12010, 12011, 12012, 12013, 12014, 12015, 12016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12003(context, evt)
	-- 将configid为 12002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12002, GadgetState.Default) then
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