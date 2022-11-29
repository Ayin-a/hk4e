-- 基础信息
local base_info = {
	group_id = 144004013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 20010401, pos = { x = -661.387, y = 202.576, z = 9.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 103 },
	{ config_id = 13004, monster_id = 20010301, pos = { x = -666.226, y = 202.283, z = 9.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 103 },
	{ config_id = 13005, monster_id = 20010301, pos = { x = -662.498, y = 202.520, z = 6.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13002, gadget_id = 70211012, pos = { x = -665.553, y = 202.552, z = 14.040 }, rot = { x = 0.000, y = 139.540, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "ANY_MONSTER_DIE_13003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13003", action = "action_EVENT_ANY_MONSTER_DIE_13003" }
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
		monsters = { 13001, 13004, 13005 },
		gadgets = { 13002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13003(context, evt)
	-- 将configid为 13002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.Default) then
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