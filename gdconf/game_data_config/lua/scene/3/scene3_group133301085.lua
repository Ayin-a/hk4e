-- 基础信息
local base_info = {
	group_id = 133301085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 25210401, pos = { x = -576.371, y = 215.994, z = 3125.644 }, rot = { x = 0.000, y = 262.075, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9504, area_id = 22 },
	{ config_id = 85004, monster_id = 25210403, pos = { x = -581.042, y = 215.879, z = 3127.946 }, rot = { x = 0.000, y = 314.837, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 22 },
	{ config_id = 85007, monster_id = 25210201, pos = { x = -582.530, y = 215.890, z = 3129.919 }, rot = { x = 0.000, y = 132.652, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 22 },
	{ config_id = 85009, monster_id = 25210103, pos = { x = -574.466, y = 218.006, z = 3135.755 }, rot = { x = 0.000, y = 19.847, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9505, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85002, gadget_id = 70211002, pos = { x = -587.069, y = 215.902, z = 3131.811 }, rot = { x = 4.862, y = 202.990, z = 1.597 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 85005, gadget_id = 70310006, pos = { x = -578.023, y = 216.290, z = 3130.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 85006, gadget_id = 70220048, pos = { x = -563.793, y = 219.135, z = 3136.583 }, rot = { x = 345.197, y = 359.288, z = 6.217 }, level = 33, area_id = 22 },
	{ config_id = 85008, gadget_id = 70220048, pos = { x = -561.711, y = 219.469, z = 3135.889 }, rot = { x = 353.839, y = 318.656, z = 16.771 }, level = 33, area_id = 22 },
	{ config_id = 85010, gadget_id = 70220052, pos = { x = -584.678, y = 215.951, z = 3132.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 85011, gadget_id = 70220052, pos = { x = -576.602, y = 216.290, z = 3129.567 }, rot = { x = 0.000, y = 228.671, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 85012, gadget_id = 70220051, pos = { x = -585.312, y = 216.305, z = 3133.588 }, rot = { x = 6.739, y = 281.414, z = 91.289 }, level = 33, area_id = 22 },
	{ config_id = 85013, gadget_id = 70220015, pos = { x = -572.059, y = 221.263, z = 3143.680 }, rot = { x = 76.391, y = 346.572, z = 274.736 }, level = 33, area_id = 22 },
	{ config_id = 85014, gadget_id = 70220015, pos = { x = -572.071, y = 222.024, z = 3143.420 }, rot = { x = 76.391, y = 346.572, z = 274.736 }, level = 33, area_id = 22 },
	{ config_id = 85015, gadget_id = 70220015, pos = { x = -573.714, y = 221.099, z = 3142.939 }, rot = { x = 74.567, y = 0.000, z = 346.469 }, level = 33, area_id = 22 },
	{ config_id = 85017, gadget_id = 70210101, pos = { x = -573.979, y = 219.527, z = 3134.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 85018, gadget_id = 70210101, pos = { x = -577.039, y = 216.519, z = 3128.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 22 },
	{ config_id = 85019, gadget_id = 70220052, pos = { x = -576.132, y = 216.016, z = 3127.469 }, rot = { x = 353.551, y = 61.950, z = 357.383 }, level = 33, area_id = 22 },
	{ config_id = 85020, gadget_id = 70217020, pos = { x = -575.149, y = 220.662, z = 3143.580 }, rot = { x = 339.370, y = 336.268, z = 6.106 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 85023, gadget_id = 70220128, pos = { x = -581.808, y = 215.784, z = 3128.984 }, rot = { x = 354.002, y = 51.516, z = 2.483 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1085003, name = "ANY_MONSTER_DIE_85003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85003", action = "action_EVENT_ANY_MONSTER_DIE_85003" }
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
		monsters = { 85001, 85004, 85007, 85009 },
		gadgets = { 85002, 85005, 85006, 85008, 85010, 85011, 85012, 85013, 85014, 85015, 85017, 85018, 85019, 85020, 85023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85003(context, evt)
	-- 将configid为 85002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85002, GadgetState.Default) then
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