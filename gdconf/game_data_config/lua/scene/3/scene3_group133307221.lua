-- 基础信息
local base_info = {
	group_id = 133307221
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 221001, monster_id = 25310101, pos = { x = -1328.430, y = 5.752, z = 5369.522 }, rot = { x = 0.000, y = 95.129, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 221005, monster_id = 25210202, pos = { x = -1341.768, y = 12.734, z = 5381.595 }, rot = { x = 0.000, y = 141.079, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 221006, monster_id = 25210203, pos = { x = -1345.277, y = 12.765, z = 5374.905 }, rot = { x = 0.000, y = 104.735, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 221007, monster_id = 25210202, pos = { x = -1337.949, y = 12.913, z = 5354.521 }, rot = { x = 0.000, y = 22.047, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 221002, gadget_id = 70211002, pos = { x = -1326.170, y = 5.752, z = 5368.518 }, rot = { x = 0.000, y = 287.068, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 221008, gadget_id = 70210101, pos = { x = -1325.120, y = 5.865, z = 5367.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 },
	{ config_id = 221009, gadget_id = 70210101, pos = { x = -1345.766, y = 12.769, z = 5353.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 221010, gadget_id = 70210101, pos = { x = -1347.046, y = 13.002, z = 5392.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221003, name = "ANY_MONSTER_DIE_221003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_221003", action = "action_EVENT_ANY_MONSTER_DIE_221003" },
	{ config_id = 1221004, name = "MONSTER_BATTLE_221004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_221004", action = "action_EVENT_MONSTER_BATTLE_221004", trigger_count = 0 }
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
		monsters = { 221001 },
		gadgets = { 221002, 221008, 221009, 221010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_221003", "MONSTER_BATTLE_221004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 221005, 221006, 221007 },
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
function condition_EVENT_ANY_MONSTER_DIE_221003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_221003(context, evt)
	-- 将configid为 221002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_221004(context, evt)
	if 221001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_221004(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 133307221, 2)
	
	return 0
end