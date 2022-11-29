-- 基础信息
local base_info = {
	group_id = 133301015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15004, monster_id = 25210501, pos = { x = -446.625, y = 225.421, z = 3423.795 }, rot = { x = 0.000, y = 277.683, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 22 },
	{ config_id = 15005, monster_id = 25310201, pos = { x = -448.085, y = 224.756, z = 3429.679 }, rot = { x = 0.000, y = 206.456, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 22 },
	{ config_id = 15006, monster_id = 25210203, pos = { x = -456.152, y = 224.424, z = 3436.056 }, rot = { x = 0.000, y = 112.176, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 15010, monster_id = 25310101, pos = { x = -449.698, y = 224.466, z = 3430.686 }, rot = { x = 0.000, y = 206.467, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15001, gadget_id = 70310009, pos = { x = -451.351, y = 224.528, z = 3432.491 }, rot = { x = 359.217, y = 333.721, z = 356.398 }, level = 33, area_id = 22 },
	{ config_id = 15002, gadget_id = 70211002, pos = { x = -455.466, y = 224.996, z = 3427.001 }, rot = { x = 354.394, y = 138.686, z = 8.417 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 15012, gadget_id = 70220048, pos = { x = -466.095, y = 225.409, z = 3428.712 }, rot = { x = 5.545, y = 294.149, z = 351.715 }, level = 33, area_id = 22 },
	{ config_id = 15013, gadget_id = 70220048, pos = { x = -464.839, y = 225.805, z = 3426.661 }, rot = { x = 7.025, y = 314.351, z = 356.270 }, level = 33, area_id = 22 },
	{ config_id = 15018, gadget_id = 70210101, pos = { x = -446.456, y = 225.886, z = 3422.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 22 },
	{ config_id = 15019, gadget_id = 70210101, pos = { x = -461.160, y = 223.183, z = 3442.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 22 },
	{ config_id = 15020, gadget_id = 70217020, pos = { x = -462.337, y = 224.172, z = 3435.977 }, rot = { x = 349.654, y = 78.178, z = 15.540 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015003, name = "MONSTER_BATTLE_15003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_15003" },
	{ config_id = 1015011, name = "ANY_MONSTER_DIE_15011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15011", action = "action_EVENT_ANY_MONSTER_DIE_15011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 15016, gadget_id = 70220048, pos = { x = -440.564, y = 225.501, z = 3425.917 }, rot = { x = 352.962, y = 229.127, z = 349.001 }, level = 33, area_id = 22 },
		{ config_id = 15017, gadget_id = 70220048, pos = { x = -440.330, y = 224.829, z = 3431.422 }, rot = { x = 6.364, y = 318.141, z = 359.088 }, level = 33, area_id = 22 },
		{ config_id = 15021, gadget_id = 70220048, pos = { x = -439.507, y = 225.225, z = 3427.922 }, rot = { x = 7.813, y = 301.647, z = 357.508 }, level = 33, area_id = 22 }
	}
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
		monsters = { 15004, 15006, 15010 },
		gadgets = { 15001, 15002, 15012, 15013, 15018, 15019, 15020 },
		regions = { },
		triggers = { "MONSTER_BATTLE_15003", "ANY_MONSTER_DIE_15011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 15005 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_15003", "ANY_MONSTER_DIE_15011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_15003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301015, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15011(context, evt)
	-- 将configid为 15002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end