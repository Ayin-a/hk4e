-- 基础信息
local base_info = {
	group_id = 133213071
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71001, monster_id = 25080201, pos = { x = -3931.652, y = 200.498, z = -3323.526 }, rot = { x = 0.000, y = 202.226, z = 0.000 }, level = 25, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 12 },
	{ config_id = 71005, monster_id = 25080101, pos = { x = -3935.339, y = 200.710, z = -3320.867 }, rot = { x = 0.000, y = 204.210, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1006, area_id = 12 },
	{ config_id = 71006, monster_id = 25010501, pos = { x = -3932.207, y = 201.816, z = -3315.823 }, rot = { x = 0.000, y = 184.313, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9002, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71002, gadget_id = 70211002, pos = { x = -3931.868, y = 201.070, z = -3320.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 71004, gadget_id = 70310006, pos = { x = -3929.699, y = 201.247, z = -3319.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071003, name = "ANY_MONSTER_DIE_71003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71003", action = "action_EVENT_ANY_MONSTER_DIE_71003" }
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
		monsters = { 71001, 71005, 71006 },
		gadgets = { 71002, 71004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71003(context, evt)
	-- 将configid为 71002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71002, GadgetState.Default) then
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