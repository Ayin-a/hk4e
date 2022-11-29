-- 基础信息
local base_info = {
	group_id = 133106568
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 568001, monster_id = 21010201, pos = { x = -969.404, y = 230.153, z = 1936.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 19 },
	{ config_id = 568004, monster_id = 21020301, pos = { x = -970.383, y = 232.920, z = 1945.073 }, rot = { x = 0.000, y = 204.930, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 19 },
	{ config_id = 568005, monster_id = 21010201, pos = { x = -974.629, y = 230.307, z = 1938.024 }, rot = { x = 0.000, y = 32.733, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9014, area_id = 19 },
	{ config_id = 568006, monster_id = 21010601, pos = { x = -978.413, y = 230.500, z = 1940.750 }, rot = { x = 0.000, y = 51.460, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9013, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 568002, gadget_id = 70211012, pos = { x = -960.536, y = 236.242, z = 1958.934 }, rot = { x = 0.000, y = 216.993, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1568003, name = "ANY_MONSTER_DIE_568003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_568003", action = "action_EVENT_ANY_MONSTER_DIE_568003" }
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
		monsters = { 568001, 568004, 568005, 568006 },
		gadgets = { 568002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_568003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_568003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_568003(context, evt)
	-- 将configid为 568002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 568002, GadgetState.Default) then
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