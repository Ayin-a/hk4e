-- 基础信息
local base_info = {
	group_id = 133008126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 21010901, pos = { x = 842.627, y = 295.105, z = -994.496 }, rot = { x = 0.000, y = 357.303, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 126004, monster_id = 21011401, pos = { x = 840.104, y = 293.725, z = -988.514 }, rot = { x = 0.000, y = 146.019, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 },
	{ config_id = 126005, monster_id = 21030501, pos = { x = 846.389, y = 292.742, z = -994.346 }, rot = { x = 0.000, y = 27.475, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 126006, monster_id = 21030301, pos = { x = 844.095, y = 292.972, z = -991.577 }, rot = { x = 0.000, y = 93.592, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 126002, gadget_id = 70211012, pos = { x = 839.838, y = 294.137, z = -989.958 }, rot = { x = 19.068, y = 103.186, z = 16.114 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126003, name = "ANY_MONSTER_DIE_126003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126003", action = "action_EVENT_ANY_MONSTER_DIE_126003" }
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
		monsters = { 126001, 126004, 126005, 126006 },
		gadgets = { 126002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126003(context, evt)
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
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