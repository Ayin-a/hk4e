-- 基础信息
local base_info = {
	group_id = 155004035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 20060601, pos = { x = 38.224, y = 201.392, z = 1569.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 35004, monster_id = 20060601, pos = { x = 36.805, y = 201.777, z = 1562.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 35005, monster_id = 20060601, pos = { x = 43.591, y = 201.950, z = 1568.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35002, gadget_id = 70211002, pos = { x = 35.517, y = 201.699, z = 1572.048 }, rot = { x = 0.000, y = 318.023, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035003, name = "ANY_MONSTER_DIE_35003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35003", action = "action_EVENT_ANY_MONSTER_DIE_35003" }
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
		monsters = { 35001, 35004, 35005 },
		gadgets = { 35002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 将configid为 35002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35002, GadgetState.Default) then
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