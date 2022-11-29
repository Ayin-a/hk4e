-- 基础信息
local base_info = {
	group_id = 155005149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 149001, monster_id = 21020301, pos = { x = 530.872, y = 190.197, z = 534.334 }, rot = { x = 0.000, y = 30.313, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 149008, monster_id = 21010501, pos = { x = 523.875, y = 196.419, z = 534.716 }, rot = { x = 0.000, y = 27.286, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", area_id = 200 },
	{ config_id = 149009, monster_id = 21011201, pos = { x = 532.039, y = 190.139, z = 538.180 }, rot = { x = 0.000, y = 152.911, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 },
	{ config_id = 149010, monster_id = 21011201, pos = { x = 535.255, y = 190.121, z = 537.270 }, rot = { x = 0.000, y = 245.990, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149002, gadget_id = 70211002, pos = { x = 535.674, y = 190.035, z = 532.919 }, rot = { x = 358.902, y = 329.833, z = 1.673 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 149004, gadget_id = 70310001, pos = { x = 533.173, y = 190.112, z = 536.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 149005, gadget_id = 70220013, pos = { x = 531.205, y = 190.057, z = 531.146 }, rot = { x = 0.000, y = 3.249, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 149006, gadget_id = 70220013, pos = { x = 527.692, y = 190.434, z = 534.067 }, rot = { x = 0.000, y = 80.047, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 149007, gadget_id = 70220026, pos = { x = 527.947, y = 190.473, z = 535.677 }, rot = { x = 0.000, y = 11.481, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149003, name = "ANY_MONSTER_DIE_149003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_149003", action = "action_EVENT_ANY_MONSTER_DIE_149003" }
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
		monsters = { 149001, 149008, 149009, 149010 },
		gadgets = { 149002, 149004, 149005, 149006, 149007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_149003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_149003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_149003(context, evt)
	-- 将configid为 149002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149002, GadgetState.Default) then
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