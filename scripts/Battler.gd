class_name Battler

var Key
var Name

var battlerStatus
var battlerSkills

func _init(_Key, _Name):
    Key = _Key
    Name = _Name

func IsAlive():
    if battlerStatus.HP > 0:
        return true
    return false

func ApplyAnotherSkill(anotherSkill):
    battlerStatus.AddFromAnother(anotherSkill.GetEffect())