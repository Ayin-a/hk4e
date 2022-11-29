-- 基础信息
local base_info = {
	group_id = 133309080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80004, monster_id = 21010101, pos = { x = -2775.461, y = 1.810, z = 5345.091 }, rot = { x = 0.000, y = 245.176, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9017, area_id = 27 },
	{ config_id = 80005, monster_id = 21010101, pos = { x = -2776.397, y = 1.881, z = 5350.732 }, rot = { x = 0.000, y = 204.016, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9011, area_id = 27 },
	{ config_id = 80010, monster_id = 21010501, pos = { x = -2766.440, y = 8.011, z = 5336.837 }, rot = { x = 0.000, y = 55.747, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 27 },
	{ config_id = 80011, monster_id = 21020201, pos = { x = -2770.573, y = 1.841, z = 5342.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80001, gadget_id = 70210101, pos = { x = -2780.773, y = 4.180, z = 5380.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 80002, gadget_id = 70211012, pos = { x = -2772.902, y = 1.829, z = 5352.746 }, rot = { x = 0.000, y = 69.833, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 80006, gadget_id = 70210101, pos = { x = -2776.864, y = 2.238, z = 5343.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 80014, gadget_id = 70220048, pos = { x = -2770.221, y = 1.880, z = 5339.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 80015, gadget_id = 70210101, pos = { x = -2776.043, y = 1.983, z = 5349.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 80016, gadget_id = 70210101, pos = { x = -2778.230, y = 15.780, z = 5364.382 }, rot = { x = 3.606, y = 330.478, z = 359.755 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 80017, gadget_id = 70330396, pos = { x = -2769.303, y = 1.845, z = 5356.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 80019, gadget_id = 70210101, pos = { x = -2778.928, y = 4.217, z = 5381.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080003, name = "ANY_MONSTER_DIE_80003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80003", action = "action_EVENT_ANY_MONSTER_DIE_80003" }
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
		monsters = { 80004, 80005, 80010, 80011 },
		gadgets = { 80001, 80002, 80006, 80014, 80015, 80016, 80017, 80019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 将configid为 80002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80002, GadgetState.Default) then
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