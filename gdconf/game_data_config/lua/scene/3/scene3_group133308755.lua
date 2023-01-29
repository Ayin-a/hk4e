-- 基础信息
local base_info = {
	group_id = 133308755
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 755001, monster_id = 25210403, pos = { x = -1413.028, y = 63.534, z = 5015.326 }, rot = { x = 0.000, y = 107.640, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
	{ config_id = 755005, monster_id = 21010101, pos = { x = -1418.487, y = 63.880, z = 5010.085 }, rot = { x = 0.000, y = 91.356, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9013, area_id = 32 },
	{ config_id = 755006, monster_id = 25210201, pos = { x = -1411.172, y = 63.522, z = 5014.991 }, rot = { x = 0.000, y = 280.499, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 32 },
	{ config_id = 755007, monster_id = 25210303, pos = { x = -1411.944, y = 63.538, z = 5008.199 }, rot = { x = 0.000, y = 164.892, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 755002, gadget_id = 70211012, pos = { x = -1409.560, y = 63.533, z = 5017.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 755004, gadget_id = 70710221, pos = { x = -1418.206, y = 63.674, z = 5010.025 }, rot = { x = 3.178, y = 0.600, z = 1.902 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1755003, name = "ANY_MONSTER_DIE_755003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_755003", action = "action_EVENT_ANY_MONSTER_DIE_755003" }
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
		monsters = { 755001, 755005, 755006, 755007 },
		gadgets = { 755002, 755004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_755003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_755003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_755003(context, evt)
	-- 将configid为 755002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 755002, GadgetState.Default) then
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