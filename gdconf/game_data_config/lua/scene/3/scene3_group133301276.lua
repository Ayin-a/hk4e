-- 基础信息
local base_info = {
	group_id = 133301276
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 276001, monster_id = 25210101, pos = { x = -363.374, y = 259.170, z = 3952.295 }, rot = { x = 0.000, y = 251.890, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 },
	{ config_id = 276005, monster_id = 25210202, pos = { x = -360.990, y = 256.109, z = 3943.223 }, rot = { x = 0.000, y = 287.847, z = 0.000 }, level = 33, drop_tag = "镀金旅团", pose_id = 9003, area_id = 22 },
	{ config_id = 276006, monster_id = 25210503, pos = { x = -374.981, y = 260.724, z = 3950.514 }, rot = { x = 0.000, y = 299.160, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, area_id = 22 },
	{ config_id = 276007, monster_id = 28060601, pos = { x = -365.819, y = 259.135, z = 3951.097 }, rot = { x = 0.000, y = 54.964, z = 0.000 }, level = 33, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 276002, gadget_id = 70211002, pos = { x = -359.907, y = 257.854, z = 3942.544 }, rot = { x = 0.000, y = 138.908, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 276004, gadget_id = 70310006, pos = { x = -358.869, y = 256.383, z = 3947.205 }, rot = { x = 0.000, y = 334.442, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276003, name = "ANY_MONSTER_DIE_276003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_276003", action = "action_EVENT_ANY_MONSTER_DIE_276003" }
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
		monsters = { 276001, 276005, 276006, 276007 },
		gadgets = { 276002, 276004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_276003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_276003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_276003(context, evt)
	-- 将configid为 276002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276002, GadgetState.Default) then
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