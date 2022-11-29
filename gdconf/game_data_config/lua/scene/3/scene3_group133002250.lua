-- 基础信息
local base_info = {
	group_id = 133002250
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 250001, monster_id = 21010301, pos = { x = 1934.462, y = 224.437, z = -566.078 }, rot = { x = 0.000, y = 112.863, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 250002, monster_id = 21010301, pos = { x = 1935.644, y = 224.520, z = -564.661 }, rot = { x = 0.000, y = 168.170, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 250003, monster_id = 21010601, pos = { x = 1938.812, y = 224.126, z = -564.142 }, rot = { x = 0.000, y = 146.189, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 250004, monster_id = 21010301, pos = { x = 1939.729, y = 224.419, z = -560.395 }, rot = { x = 0.000, y = 84.100, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 250005, gadget_id = 70211012, pos = { x = 1935.919, y = 224.671, z = -560.165 }, rot = { x = 0.000, y = 118.246, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1250006, name = "ANY_MONSTER_DIE_250006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_250006", action = "action_EVENT_ANY_MONSTER_DIE_250006" }
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
		monsters = { 250001, 250002, 250003, 250004 },
		gadgets = { 250005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_250006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_250006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_250006(context, evt)
	-- 将configid为 250005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250005, GadgetState.Default) then
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