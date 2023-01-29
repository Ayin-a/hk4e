-- 基础信息
local base_info = {
	group_id = 133307217
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217001, monster_id = 25410201, pos = { x = -1200.563, y = 41.717, z = 5526.429 }, rot = { x = 0.000, y = 312.479, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 32 },
	{ config_id = 217004, monster_id = 28060301, pos = { x = -1193.648, y = 53.733, z = 5524.302 }, rot = { x = 0.000, y = 121.555, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 121, area_id = 32 },
	{ config_id = 217005, monster_id = 28060301, pos = { x = -1206.726, y = 51.664, z = 5528.536 }, rot = { x = 0.000, y = 111.871, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 217002, gadget_id = 70211012, pos = { x = -1204.860, y = 43.715, z = 5530.662 }, rot = { x = 24.279, y = 123.949, z = 357.583 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 217006, gadget_id = 70330397, pos = { x = -1204.430, y = 41.717, z = 5526.346 }, rot = { x = 0.000, y = 285.731, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 217007, gadget_id = 70310009, pos = { x = -1193.229, y = 41.717, z = 5533.974 }, rot = { x = 358.894, y = 310.779, z = 0.714 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 217008, gadget_id = 70330397, pos = { x = -1200.832, y = 41.717, z = 5532.435 }, rot = { x = 0.000, y = 358.452, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 217009, gadget_id = 70330427, pos = { x = -1200.344, y = 41.880, z = 5519.862 }, rot = { x = 64.927, y = -0.002, z = 49.423 }, level = 32, area_id = 32 },
	{ config_id = 217010, gadget_id = 70330426, pos = { x = -1200.027, y = 41.717, z = 5520.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 217011, gadget_id = 70330428, pos = { x = -1200.284, y = 41.717, z = 5520.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 217012, gadget_id = 70300104, pos = { x = -1196.341, y = 41.717, z = 5534.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217003, name = "ANY_MONSTER_DIE_217003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217003", action = "action_EVENT_ANY_MONSTER_DIE_217003" }
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
		monsters = { 217001, 217004, 217005 },
		gadgets = { 217002, 217006, 217007, 217008, 217009, 217010, 217011, 217012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_217003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.Default) then
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