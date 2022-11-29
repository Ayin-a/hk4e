-- 基础信息
local base_info = {
	group_id = 133312004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4004, monster_id = 23010401, pos = { x = -3082.176, y = 321.152, z = 4796.318 }, rot = { x = 0.000, y = 163.430, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 28 },
	{ config_id = 4005, monster_id = 23010501, pos = { x = -3110.152, y = 322.998, z = 4787.389 }, rot = { x = 0.000, y = 233.960, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70210101, pos = { x = -3111.706, y = 323.589, z = 4787.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 28 },
	{ config_id = 4002, gadget_id = 70211012, pos = { x = -3110.192, y = 322.861, z = 4800.528 }, rot = { x = 359.133, y = 90.910, z = 3.302 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 4007, gadget_id = 70210101, pos = { x = -3110.768, y = 323.442, z = 4810.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 28 },
	{ config_id = 4008, gadget_id = 70330396, pos = { x = -3103.209, y = 321.602, z = 4802.975 }, rot = { x = 347.075, y = 301.508, z = 354.211 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 4009, gadget_id = 70210101, pos = { x = -3082.350, y = 321.857, z = 4794.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 28 },
	{ config_id = 4010, gadget_id = 70210101, pos = { x = -3084.669, y = 321.765, z = 4791.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 28 },
	{ config_id = 4011, gadget_id = 70330428, pos = { x = -3081.013, y = 321.160, z = 4795.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 28 },
	{ config_id = 4012, gadget_id = 70330427, pos = { x = -3110.710, y = 323.007, z = 4784.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 4013, gadget_id = 70330426, pos = { x = -3110.703, y = 323.036, z = 4785.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 4014, gadget_id = 70330429, pos = { x = -3112.132, y = 322.577, z = 4806.991 }, rot = { x = 0.917, y = -0.001, z = 359.891 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 28 },
	{ config_id = 4015, gadget_id = 70330428, pos = { x = -3110.047, y = 322.679, z = 4808.497 }, rot = { x = 0.917, y = 359.963, z = 359.891 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 28 },
	{ config_id = 4016, gadget_id = 70330396, pos = { x = -3090.221, y = 319.429, z = 4811.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 28 },
	{ config_id = 4017, gadget_id = 70900386, pos = { x = -3111.682, y = 323.721, z = 4804.829 }, rot = { x = 0.000, y = 71.554, z = 0.000 }, level = 26, drop_tag = "书页章节1须弥", isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003" }
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
		monsters = { 4004, 4005 },
		gadgets = { 4001, 4002, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default) then
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