class_name BattlerSkill

var Key
var Name

var EffectStatus

func _init(_Key, _Name, _effectStatus):
    Key = _Key
    Name = _Name
    EffectStatus = _effectStatus

func GetEffect():
    return EffectStatus