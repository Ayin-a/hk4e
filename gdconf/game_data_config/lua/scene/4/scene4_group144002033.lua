-- 基础信息
local base_info = {
	group_id = 144002033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 21010901, pos = { x = 558.558, y = 120.321, z = -386.510 }, rot = { x = 0.000, y = 325.268, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 101 },
	{ config_id = 33004, monster_id = 21011001, pos = { x = 556.048, y = 120.321, z = -376.194 }, rot = { x = 0.000, y = 283.572, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 101 },
	{ config_id = 33005, monster_id = 21010201, pos = { x = 556.414, y = 120.264, z = -383.309 }, rot = { x = 0.000, y = 270.047, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 101 },
	{ config_id = 33006, monster_id = 21010201, pos = { x = 556.457, y = 120.229, z = -378.821 }, rot = { x = 0.000, y = 225.230, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 101 },
	{ config_id = 33007, monster_id = 21020201, pos = { x = 559.890, y = 120.263, z = -380.455 }, rot = { x = 0.000, y = 247.872, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33002, gadget_id = 70211012, pos = { x = 563.060, y = 120.321, z = -379.263 }, rot = { x = 0.000, y = 84.846, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 33008, gadget_id = 70220051, pos = { x = 577.232, y = 119.937, z = -363.753 }, rot = { x = 0.000, y = 0.000, z = 71.133 }, level = 1, area_id = 101 },
	{ config_id = 33009, gadget_id = 70220050, pos = { x = 578.484, y = 120.413, z = -365.517 }, rot = { x = 8.289, y = 180.000, z = 180.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033003, name = "ANY_MONSTER_DIE_33003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33003", action = "action_EVENT_ANY_MONSTER_DIE_33003" }
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
		monsters = { 33001, 33004, 33005, 33006, 33007 },
		gadgets = { 33002, 33008, 33009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
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