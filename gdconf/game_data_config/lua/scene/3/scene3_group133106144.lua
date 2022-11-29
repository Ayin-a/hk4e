-- 基础信息
local base_info = {
	group_id = 133106144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 25030201, pos = { x = -650.816, y = 221.290, z = 689.125 }, rot = { x = 0.000, y = 305.463, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 7 },
	{ config_id = 144002, monster_id = 25060101, pos = { x = -643.358, y = 221.347, z = 683.517 }, rot = { x = 0.000, y = 274.332, z = 0.000 }, level = 20, drop_tag = "盗宝团", disableWander = true, area_id = 7 },
	{ config_id = 144003, monster_id = 25010501, pos = { x = -638.807, y = 221.320, z = 685.456 }, rot = { x = 0.000, y = 303.205, z = 0.000 }, level = 20, drop_tag = "盗宝团", pose_id = 9007, area_id = 7 },
	{ config_id = 144004, monster_id = 25010201, pos = { x = -637.438, y = 221.380, z = 682.856 }, rot = { x = 0.000, y = 117.918, z = 0.000 }, level = 20, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 7 },
	{ config_id = 144005, monster_id = 25020201, pos = { x = -644.039, y = 221.264, z = 675.657 }, rot = { x = 0.000, y = 303.205, z = 0.000 }, level = 20, drop_tag = "盗宝团", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144006, gadget_id = 70211012, pos = { x = -636.176, y = 221.320, z = 691.652 }, rot = { x = 359.735, y = 221.166, z = 1.338 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 144007, gadget_id = 70310006, pos = { x = -650.376, y = 221.264, z = 684.455 }, rot = { x = 357.108, y = 92.705, z = 4.331 }, level = 32, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144008, name = "ANY_MONSTER_DIE_144008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144008", action = "action_EVENT_ANY_MONSTER_DIE_144008" },
	{ config_id = 1144009, name = "MONSTER_BATTLE_144009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_144009", action = "action_EVENT_MONSTER_BATTLE_144009" }
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
		monsters = { 144001, 144002, 144004 },
		gadgets = { 144006, 144007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144008", "MONSTER_BATTLE_144009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 144003, 144005 },
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
function condition_EVENT_ANY_MONSTER_DIE_144008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144008(context, evt)
	-- 将configid为 144006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144006, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_144009(context, evt)
	if 144001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_144009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106144, 3)
	
	return 0
end