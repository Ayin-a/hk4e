-- 基础信息
local base_info = {
	group_id = 133314275
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275001, monster_id = 26100401, pos = { x = -248.314, y = 230.627, z = 4368.743 }, rot = { x = 0.000, y = 249.539, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 32 },
	{ config_id = 275004, monster_id = 28060401, pos = { x = -252.575, y = 229.346, z = 4368.149 }, rot = { x = 0.000, y = 118.856, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 32 },
	{ config_id = 275005, monster_id = 28060401, pos = { x = -254.129, y = 229.570, z = 4363.499 }, rot = { x = 0.000, y = 90.837, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 32 },
	{ config_id = 275006, monster_id = 28060401, pos = { x = -253.279, y = 230.207, z = 4359.075 }, rot = { x = 0.000, y = 83.227, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 275002, gadget_id = 70211012, pos = { x = -246.479, y = 232.792, z = 4364.086 }, rot = { x = 27.315, y = 251.274, z = 329.425 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1275003, name = "ANY_MONSTER_DIE_275003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275003", action = "action_EVENT_ANY_MONSTER_DIE_275003" },
	{ config_id = 1275007, name = "ANY_MONSTER_DIE_275007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275007", action = "action_EVENT_ANY_MONSTER_DIE_275007" }
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
		monsters = { 275004, 275005, 275006 },
		gadgets = { 275002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 275001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275003(context, evt)
	-- 将configid为 275002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133314275) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314275, 2)
	
	return 0
end