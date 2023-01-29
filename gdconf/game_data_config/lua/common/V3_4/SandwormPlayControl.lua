
--[[======================================
||	filename:	SandwormPlayControl
||	owner: 		luyao.huang
||	description:	
||	LogName:	SandwormPlayControl
||	Protection:	
=======================================]]--



local business_type = "direct"
local priority = 3

local local_defs = 
{
    sandworm_manager_group = 133314001,
}



local challenge_Tri = {
  }

function challenge_Initialize()
    for k,v in pairs(challenge_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    --沙虫攻击次数计数开关，打开后才会开始计数
    table.insert(variables,{ config_id = 100010001,  name = "is_attack_count", value = 0})
    --沙虫攻击次数计数
    table.insert(variables,{ config_id = 100010002,  name = "attack_count", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--



--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫控制回调                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

--沙虫控制回调：创建沙虫成功
function LF_On_Create_Sandworm_Success(context)
    ScriptLib.PrintContextLog(context,"## [SandwormchallengeControl]LF_On_Create_Sandworm_Success: 沙虫控制回调：创建沙虫成功")
end

--沙虫控制回调：创建沙虫失败
function LF_On_Create_Sandworm_Fail(context)
    ScriptLib.PrintContextLog(context,"## [SandwormchallengeControl]LF_On_Create_Sandworm_Success: 沙虫控制回调：创建沙虫失败")
end

--沙虫控制回调：移除沙虫
function LF_On_Remove_Sandworm(context) 
    ScriptLib.PrintContextLog(context,"## [SandwormchallengeControl]LF_On_Create_Sandworm_Success: 沙虫控制回调：清除沙虫")
end

--沙虫控制回调：沙虫攻击完成
function LF_On_Attack_Finish(context)
    ScriptLib.PrintContextLog(context,"## [SandwormchallengeControl]LF_On_Attack_Finish: 沙虫控制回调：攻击完成")
    if LF_Is_Attack_Count(context) then
        ScriptLib.ChangeGroupVariableValue(context,"attack_count",1)
    end
end

--沙虫控制回调：沙虫攻击命中玩家
function LF_On_Attack_Hit_Avatar(context)
    if LF_Is_Attack_Count(context) then
        ScriptLib.ChangeGroupVariableValue(context,"attack_count",1)
    end
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫攻击计数                                ||
||                                                                 ||
-----------------------------------------------------------------]]--
function LF_Start_Attack_Count(context)
    ScriptLib.SetGroupVariableValue(context,"is_attack_count",1)
end

function LF_Stop_Attack_Count(context)
    ScriptLib.SetGroupVariableValue(context,"is_attack_count",0)
end

function LF_Is_Attack_Count(context)
    return ScriptLib.GetGroupVariableValue(context,"is_attack_count")
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--
------------------------------------------------------------------
challenge_Initialize()