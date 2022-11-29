-- 基础信息
local base_info = {
	group_id = 155005206
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 206001, monster_id = 21030101, pos = { x = 343.445, y = 334.952, z = 178.370 }, rot = { x = 0.000, y = 192.179, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, area_id = 200 },
	{ config_id = 206010, monster_id = 21010901, pos = { x = 353.891, y = 331.879, z = 182.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 200 },
	{ config_id = 206011, monster_id = 21010901, pos = { x = 346.163, y = 333.627, z = 190.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 206002, gadget_id = 70211002, pos = { x = 348.503, y = 334.055, z = 178.138 }, rot = { x = 11.637, y = 20.169, z = 351.673 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 206004, gadget_id = 70300086, pos = { x = 344.921, y = 333.868, z = 173.671 }, rot = { x = 349.917, y = 0.000, z = 3.819 }, level = 36, area_id = 200 },
	{ config_id = 206006, gadget_id = 70300086, pos = { x = 343.105, y = 333.955, z = 191.228 }, rot = { x = 7.762, y = 0.000, z = 20.877 }, level = 36, area_id = 200 },
	{ config_id = 206007, gadget_id = 70310006, pos = { x = 346.138, y = 334.234, z = 176.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 206008, gadget_id = 70310001, pos = { x = 343.105, y = 334.216, z = 190.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 206009, gadget_id = 70310001, pos = { x = 335.782, y = 336.730, z = 184.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 206013, gadget_id = 70300088, pos = { x = 354.018, y = 331.808, z = 188.060 }, rot = { x = 0.000, y = 86.596, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 206014, gadget_id = 70300088, pos = { x = 336.815, y = 336.231, z = 187.262 }, rot = { x = 0.000, y = 26.851, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 206015, gadget_id = 70300088, pos = { x = 352.944, y = 332.043, z = 174.147 }, rot = { x = 0.000, y = 233.537, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1206003, name = "ANY_MONSTER_DIE_206003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_206003", action = "action_EVENT_ANY_MONSTER_DIE_206003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 206012, monster_id = 21010901, pos = { x = 346.264, y = 334.233, z = 180.435 }, rot = { x = 0.000, y = 176.409, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 200 }
	},
	gadgets = {
		{ config_id = 206005, gadget_id = 70300086, pos = { x = 358.062, y = 330.428, z = 178.709 }, rot = { x = 0.000, y = 0.000, z = 342.254 }, level = 36, area_id = 200 }
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
		monsters = { 206001, 206010, 206011 },
		gadgets = { 206002, 206004, 206006, 206007, 206008, 206009, 206013, 206014, 206015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_206003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_206003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_206003(context, evt)
	-- 将configid为 206002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206002, GadgetState.Default) then
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