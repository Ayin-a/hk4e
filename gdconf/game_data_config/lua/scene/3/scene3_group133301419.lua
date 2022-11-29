-- 基础信息
local base_info = {
	group_id = 133301419
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 419001, monster_id = 26120301, pos = { x = -186.495, y = 233.939, z = 3735.817 }, rot = { x = 0.000, y = 251.145, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 22 },
	{ config_id = 419002, monster_id = 26090101, pos = { x = -176.302, y = 230.340, z = 3734.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 419003, monster_id = 26090101, pos = { x = -170.127, y = 230.340, z = 3741.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
	{ config_id = 419006, monster_id = 26090101, pos = { x = -183.713, y = 231.983, z = 3741.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 22 },
	{ config_id = 419007, monster_id = 26090101, pos = { x = -181.874, y = 232.344, z = 3742.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 419004, gadget_id = 70211012, pos = { x = -181.608, y = 234.357, z = 3747.044 }, rot = { x = 4.552, y = 155.447, z = 6.200 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1419005, name = "ANY_MONSTER_DIE_419005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419005", action = "action_EVENT_ANY_MONSTER_DIE_419005" }
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
		monsters = { 419001, 419002, 419003, 419006, 419007 },
		gadgets = { 419004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_419005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_419005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_419005(context, evt)
	-- 将configid为 419004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 419004, GadgetState.Default) then
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