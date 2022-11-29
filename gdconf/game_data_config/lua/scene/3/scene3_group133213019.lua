-- 基础信息
local base_info = {
	group_id = 133213019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 21020701, pos = { x = -3714.230, y = 201.431, z = -2867.958 }, rot = { x = 359.614, y = 160.722, z = 8.377 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 19004, monster_id = 21011001, pos = { x = -3727.740, y = 209.116, z = -2875.543 }, rot = { x = 356.299, y = 69.137, z = 352.578 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 12 },
	{ config_id = 19005, monster_id = 21011301, pos = { x = -3724.742, y = 208.860, z = -2874.706 }, rot = { x = 354.108, y = 71.191, z = 5.209 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 12 },
	{ config_id = 19022, monster_id = 21010101, pos = { x = -3716.386, y = 201.431, z = -2863.523 }, rot = { x = 359.614, y = 113.306, z = 8.377 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19002, gadget_id = 70211002, pos = { x = -3713.173, y = 200.682, z = -2862.191 }, rot = { x = 353.139, y = 154.596, z = 4.227 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 19006, gadget_id = 70310001, pos = { x = -3704.225, y = 200.210, z = -2862.100 }, rot = { x = 3.575, y = 359.909, z = 359.101 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 19007, gadget_id = 70300108, pos = { x = -3711.278, y = 202.027, z = -2869.876 }, rot = { x = 0.000, y = 157.209, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 19008, gadget_id = 70300108, pos = { x = -3708.823, y = 202.508, z = -2874.251 }, rot = { x = 0.000, y = 169.935, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 19013, gadget_id = 70220013, pos = { x = -3736.167, y = 208.558, z = -2875.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 19014, gadget_id = 70220013, pos = { x = -3719.064, y = 201.683, z = -2867.334 }, rot = { x = 0.000, y = 306.348, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 19015, gadget_id = 70220013, pos = { x = -3721.068, y = 201.429, z = -2865.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 19016, gadget_id = 70310006, pos = { x = -3715.022, y = 201.163, z = -2865.363 }, rot = { x = 6.230, y = 359.805, z = 356.424 }, level = 27, area_id = 12 },
	{ config_id = 19020, gadget_id = 70220014, pos = { x = -3734.390, y = 208.765, z = -2874.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 19021, gadget_id = 70220014, pos = { x = -3719.188, y = 201.381, z = -2865.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019003, name = "ANY_MONSTER_DIE_19003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19003", action = "action_EVENT_ANY_MONSTER_DIE_19003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19009, gadget_id = 42101010, pos = { x = -3709.539, y = 204.356, z = -2874.474 }, rot = { x = 0.000, y = 81.946, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 19010, gadget_id = 42101010, pos = { x = -3709.539, y = 204.147, z = -2874.078 }, rot = { x = 0.000, y = 81.946, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 19011, gadget_id = 42101010, pos = { x = -3712.082, y = 203.741, z = -2869.964 }, rot = { x = 0.000, y = 68.842, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 19012, gadget_id = 42101010, pos = { x = -3711.982, y = 203.741, z = -2870.179 }, rot = { x = 0.000, y = 68.842, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 19017, gadget_id = 42101010, pos = { x = -3714.268, y = 203.141, z = -2870.776 }, rot = { x = 30.827, y = 69.887, z = 30.211 }, level = 27, area_id = 12 },
		{ config_id = 19018, gadget_id = 42101010, pos = { x = -3711.930, y = 203.009, z = -2873.821 }, rot = { x = 11.798, y = 76.825, z = 4.891 }, level = 27, area_id = 12 },
		{ config_id = 19019, gadget_id = 42101010, pos = { x = -3712.713, y = 202.274, z = -2870.184 }, rot = { x = 14.030, y = 56.703, z = 15.250 }, level = 27, area_id = 12 }
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
		monsters = { 19001, 19004, 19005, 19022 },
		gadgets = { 19002, 19006, 19007, 19008, 19013, 19014, 19015, 19016, 19020, 19021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 将configid为 19002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.Default) then
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