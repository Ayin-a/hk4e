-- 基础信息
local base_info = {
	group_id = 133106128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128002, monster_id = 23010301, pos = { x = -227.280, y = 185.994, z = 920.513 }, rot = { x = 0.000, y = 185.311, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 128003, monster_id = 23010601, pos = { x = -228.300, y = 185.895, z = 916.182 }, rot = { x = 0.000, y = 73.342, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128005, gadget_id = 70211012, pos = { x = -225.783, y = 187.060, z = 924.422 }, rot = { x = 359.695, y = 194.328, z = 357.478 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 128006, gadget_id = 70310006, pos = { x = -228.091, y = 187.036, z = 924.666 }, rot = { x = 1.851, y = 92.989, z = 2.516 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128007, name = "ANY_MONSTER_DIE_128007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128007", action = "action_EVENT_ANY_MONSTER_DIE_128007" }
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
		monsters = { 128002, 128003 },
		gadgets = { 128005, 128006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_128007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128007(context, evt)
	-- 将configid为 128005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128005, GadgetState.Default) then
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