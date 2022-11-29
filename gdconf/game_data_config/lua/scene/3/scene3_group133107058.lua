-- 基础信息
local base_info = {
	group_id = 133107058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58012, monster_id = 21020201, pos = { x = -324.635, y = 337.994, z = 598.863 }, rot = { x = 0.000, y = 198.547, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, area_id = 7 },
	{ config_id = 58013, monster_id = 21030401, pos = { x = -323.985, y = 338.557, z = 594.247 }, rot = { x = 0.000, y = 298.037, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 7 },
	{ config_id = 58014, monster_id = 21010901, pos = { x = -319.956, y = 340.237, z = 590.982 }, rot = { x = 0.000, y = 298.872, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211022, pos = { x = -320.022, y = 339.502, z = 598.974 }, rot = { x = 14.363, y = 242.221, z = 348.021 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 58006, gadget_id = 70310006, pos = { x = -325.255, y = 337.991, z = 596.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" }
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
		monsters = { 58012, 58013, 58014 },
		gadgets = { 58002, 58006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
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