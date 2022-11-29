-- 基础信息
local base_info = {
	group_id = 133106518
}

-- Trigger变量
local defs = {
	gadget_node01 = 518002,
	gadget_node02 = 518003,
	gadget_node03 = 518004,
	gadget_node04 = 518005,
	gadget_node05 = 518010,
	gadget_node06 = 518011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 518006,
	gadget_hint02 = 518007,
	gadget_hint03 = 518008,
	gadget_hint04 = 518009,
	gadget_hint05 = 518012,
	gadget_hint06 = 518013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 518001
}

-- DEFS_MISCS
local nodeTable={
	[1]=defs.gadget_node01,
	[2]=defs.gadget_node02,
	[3]=defs.gadget_node03,
	[4]=defs.gadget_node04,
  [5]=defs.gadget_node05,
  [6]=defs.gadget_node06,
  [7]=defs.gadget_node07,
  [8]=defs.gadget_node08,
}

local guideEffTable={
	[1]=defs.gadget_hint01,
	[2]=defs.gadget_hint02,
	[3]=defs.gadget_hint03,
	[4]=defs.gadget_hint04,
  [5]=defs.gadget_hint05,
  [6]=defs.gadget_hint06,
  [7]=defs.gadget_hint07,
  [8]=defs.gadget_hint08,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 518001, gadget_id = 70290318, pos = { x = -886.039, y = 135.212, z = 1812.094 }, rot = { x = 350.973, y = 353.175, z = 359.295 }, level = 15, area_id = 19 },
	{ config_id = 518002, gadget_id = 70290319, pos = { x = -886.518, y = 134.392, z = 1798.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518003, gadget_id = 70290319, pos = { x = -888.592, y = 138.916, z = 1797.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518004, gadget_id = 70290319, pos = { x = -893.508, y = 144.598, z = 1798.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518005, gadget_id = 70290319, pos = { x = -893.266, y = 148.174, z = 1804.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518006, gadget_id = 70290320, pos = { x = -886.643, y = 135.263, z = 1807.178 }, rot = { x = 0.000, y = 179.527, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518007, gadget_id = 70290320, pos = { x = -886.942, y = 135.742, z = 1798.094 }, rot = { x = 287.095, y = 258.140, z = 4.734 }, level = 15, area_id = 19 },
	{ config_id = 518008, gadget_id = 70290320, pos = { x = -889.504, y = 142.991, z = 1797.580 }, rot = { x = 338.933, y = 271.613, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518009, gadget_id = 70290320, pos = { x = -893.535, y = 145.379, z = 1798.959 }, rot = { x = 320.987, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518010, gadget_id = 70290319, pos = { x = -896.115, y = 148.988, z = 1815.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518011, gadget_id = 70290319, pos = { x = -886.405, y = 149.469, z = 1821.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518012, gadget_id = 70290320, pos = { x = -894.364, y = 150.239, z = 1807.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518013, gadget_id = 70290320, pos = { x = -893.219, y = 150.487, z = 1817.074 }, rot = { x = 0.000, y = 61.594, z = 0.000 }, level = 15, area_id = 19 },
	{ config_id = 518015, gadget_id = 70211101, pos = { x = -878.820, y = 150.110, z = 1823.880 }, rot = { x = 353.625, y = 71.608, z = 359.386 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { },
		gadgets = { 518001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 518001, 518002, 518003, 518004, 518005, 518010, 518011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 518015 },
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

require "V2_6/BW_LightRoadTrack"