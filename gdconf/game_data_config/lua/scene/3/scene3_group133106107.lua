-- 基础信息
local base_info = {
	group_id = 133106107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 21010601, pos = { x = -529.796, y = 200.748, z = 872.944 }, rot = { x = 0.000, y = 279.804, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 8 },
	{ config_id = 107004, monster_id = 21020201, pos = { x = -522.558, y = 207.860, z = 851.017 }, rot = { x = 0.000, y = 9.281, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, isElite = true, pose_id = 401, area_id = 8 },
	{ config_id = 107005, monster_id = 21010701, pos = { x = -509.447, y = 200.347, z = 855.951 }, rot = { x = 0.000, y = 322.967, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 107006, monster_id = 21010401, pos = { x = -494.819, y = 203.616, z = 855.536 }, rot = { x = 0.000, y = 12.260, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 107002, gadget_id = 70211022, pos = { x = -519.562, y = 204.436, z = 871.245 }, rot = { x = 0.000, y = 9.144, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1107003, name = "ANY_MONSTER_DIE_107003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107003", action = "action_EVENT_ANY_MONSTER_DIE_107003" }
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
		monsters = { 107001, 107004, 107005, 107006 },
		gadgets = { 107002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_107003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 将configid为 107002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107002, GadgetState.Default) then
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