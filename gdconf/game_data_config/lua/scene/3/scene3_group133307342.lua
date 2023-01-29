-- 基础信息
local base_info = {
	group_id = 133307342
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 342001, monster_id = 26120401, pos = { x = -1818.621, y = -31.346, z = 5497.847 }, rot = { x = 0.000, y = 251.305, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 103, area_id = 27 },
	{ config_id = 342004, monster_id = 26120401, pos = { x = -1822.517, y = -31.710, z = 5492.056 }, rot = { x = 0.000, y = 257.498, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 103, area_id = 27 },
	{ config_id = 342005, monster_id = 26090901, pos = { x = -1827.442, y = -31.191, z = 5499.233 }, rot = { x = 0.000, y = 236.396, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 342002, gadget_id = 70211002, pos = { x = -1824.388, y = -30.949, z = 5489.575 }, rot = { x = 12.520, y = 6.910, z = 4.168 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1342003, name = "ANY_MONSTER_DIE_342003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_342003", action = "action_EVENT_ANY_MONSTER_DIE_342003" }
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
		monsters = { 342001, 342004, 342005 },
		gadgets = { 342002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_342003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_342003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_342003(context, evt)
	-- 将configid为 342002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 342002, GadgetState.Default) then
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