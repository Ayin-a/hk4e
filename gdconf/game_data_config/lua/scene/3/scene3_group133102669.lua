-- 基础信息
local base_info = {
	group_id = 133102669
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 669001, monster_id = 20011401, pos = { x = 1937.143, y = 224.328, z = 635.634 }, rot = { x = 9.507, y = 274.980, z = 354.203 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 669004, monster_id = 20011401, pos = { x = 1936.346, y = 223.723, z = 639.718 }, rot = { x = 7.052, y = 255.559, z = 351.379 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 669006, monster_id = 20011501, pos = { x = 1934.295, y = 223.655, z = 637.537 }, rot = { x = 5.997, y = 248.860, z = 350.617 }, level = 18, drop_tag = "大史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 669002, gadget_id = 70211012, pos = { x = 1936.246, y = 226.116, z = 637.738 }, rot = { x = 0.000, y = 317.608, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 669011, gadget_id = 70220019, pos = { x = 1936.253, y = 219.626, z = 637.807 }, rot = { x = 0.000, y = 47.886, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 669010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1936.240, y = 224.816, z = 637.643 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1669003, name = "ANY_MONSTER_DIE_669003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_669003", action = "action_EVENT_ANY_MONSTER_DIE_669003" },
	{ config_id = 1669010, name = "ENTER_REGION_669010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_669010", action = "action_EVENT_ENTER_REGION_669010" }
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
		monsters = { 669001, 669004, 669006 },
		gadgets = { 669002, 669011 },
		regions = { 669010 },
		triggers = { "ANY_MONSTER_DIE_669003", "ENTER_REGION_669010" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_669003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_669003(context, evt)
	-- 将configid为 669002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 669002, GadgetState.Default) then
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
function condition_EVENT_ENTER_REGION_669010(context, evt)
	if evt.param1 ~= 669010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_669010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102669, 2)
	
	return 0
end