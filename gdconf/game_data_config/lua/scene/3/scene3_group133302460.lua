-- 基础信息
local base_info = {
	group_id = 133302460
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 460001, monster_id = 26120101, pos = { x = -108.488, y = 215.883, z = 2931.583 }, rot = { x = 0.000, y = 138.799, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 20 },
	{ config_id = 460004, monster_id = 26090201, pos = { x = -102.754, y = 214.783, z = 2931.823 }, rot = { x = 0.000, y = 214.702, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 460005, monster_id = 26090201, pos = { x = -105.741, y = 214.783, z = 2930.811 }, rot = { x = 0.000, y = 115.863, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 460002, gadget_id = 70211002, pos = { x = -107.592, y = 216.290, z = 2935.857 }, rot = { x = 0.000, y = 290.600, z = 3.292 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 460006, gadget_id = 70210101, pos = { x = -107.729, y = 214.480, z = 2928.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 20 },
	{ config_id = 460007, gadget_id = 70210101, pos = { x = -113.379, y = 216.960, z = 2934.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1460003, name = "ANY_MONSTER_DIE_460003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460003", action = "action_EVENT_ANY_MONSTER_DIE_460003" }
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
		monsters = { 460001, 460004, 460005 },
		gadgets = { 460002, 460006, 460007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_460003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460003(context, evt)
	-- 将configid为 460002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460002, GadgetState.Default) then
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