-- 基础信息
local base_info = {
	group_id = 133225136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 136001, monster_id = 22050201, pos = { x = -6319.966, y = 207.100, z = -2696.725 }, rot = { x = 0.000, y = 71.185, z = 0.000 }, level = 32, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 136004, monster_id = 22040201, pos = { x = -6319.720, y = 207.100, z = -2692.617 }, rot = { x = 0.000, y = 35.802, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 136002, gadget_id = 70211012, pos = { x = -6319.611, y = 207.850, z = -2703.897 }, rot = { x = 358.736, y = 335.571, z = 357.149 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1136003, name = "ANY_MONSTER_DIE_136003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_136003", action = "action_EVENT_ANY_MONSTER_DIE_136003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 136005, monster_id = 22040201, pos = { x = -6325.001, y = 207.100, z = -2697.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 136006, monster_id = 22040201, pos = { x = -6321.702, y = 207.100, z = -2700.852 }, rot = { x = 0.000, y = 155.764, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		monsters = { 136001, 136004 },
		gadgets = { 136002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_136003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_136003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_136003(context, evt)
	-- 将configid为 136002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136002, GadgetState.Default) then
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