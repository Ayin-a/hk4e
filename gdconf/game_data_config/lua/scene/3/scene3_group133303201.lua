-- 基础信息
local base_info = {
	group_id = 133303201
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 201001, monster_id = 26120101, pos = { x = -1340.429, y = 244.004, z = 3774.988 }, rot = { x = 0.000, y = 245.095, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 201004, monster_id = 26090801, pos = { x = -1344.623, y = 247.297, z = 3768.418 }, rot = { x = 0.000, y = 323.060, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 23 },
	{ config_id = 201005, monster_id = 26090801, pos = { x = -1349.899, y = 247.262, z = 3768.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 23 },
	{ config_id = 201006, monster_id = 26090201, pos = { x = -1348.855, y = 246.564, z = 3776.614 }, rot = { x = 0.000, y = 161.604, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 201002, gadget_id = 70211002, pos = { x = -1349.931, y = 247.585, z = 3779.913 }, rot = { x = 351.142, y = 176.049, z = 18.402 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201003, name = "ANY_MONSTER_DIE_201003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_201003", action = "action_EVENT_ANY_MONSTER_DIE_201003" }
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
		monsters = { 201001, 201004, 201005, 201006 },
		gadgets = { 201002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_201003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_201003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_201003(context, evt)
	-- 将configid为 201002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 201002, GadgetState.Default) then
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