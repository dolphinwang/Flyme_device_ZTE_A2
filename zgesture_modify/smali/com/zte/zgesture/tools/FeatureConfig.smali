.class public Lcom/zte/zgesture/tools/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/tools/FeatureConfig$1;,
        Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;
    }
.end annotation


# static fields
.field public static actionBarTextSize:I

.field public static airGestureEnable:Z

.field public static airGestureFeature:Ljava/lang/String;

.field public static airGestureSettingValue:Z

.field public static airMEnable:Z

.field public static airMFeature:Ljava/lang/String;

.field public static airMSettingValue:Z

.field public static airOEnable:Z

.field public static airOFeature:Ljava/lang/String;

.field public static airOSettingValue:Z

.field public static airVEnable:Z

.field public static airVFeature:Ljava/lang/String;

.field public static airVSettingValue:Z

.field public static airWEnable:Z

.field public static airWFeature:Ljava/lang/String;

.field public static airWSettingValue:Z

.field public static airZEnable:Z

.field public static airZFeature:Ljava/lang/String;

.field public static airZSettingValue:Z

.field public static alarmCLockEnable:Z

.field public static alarmCLockFeature:Ljava/lang/String;

.field public static alarmCLockSettingValue:Z

.field public static alarmCancelEnable:Z

.field public static alarmSnoozeEnable:Z

.field public static answerEnable:Z

.field public static answerFeature:Ljava/lang/String;

.field public static answerSettingValue:Z

.field public static appDefaultType:I

.field public static blackScreenAnimation:Z

.field public static blackScreenGestureDriver:I

.field public static blackScreenGestureEnable:Z

.field public static blackScreenGestureFeature:Ljava/lang/String;

.field public static blackScreenGestureSettingValue:Z

.field public static blackScreenGestureVisable:Z

.field public static caculatorRadioEnable:Z

.field public static caculatorRadioFeature:Ljava/lang/String;

.field public static callEnable:Z

.field public static callFeature:Ljava/lang/String;

.field public static callSettingValue:Z

.field public static callTurnEnable:Z

.field public static callTurnFeature:Ljava/lang/String;

.field public static callTurnSettingValue:Z

.field public static changeForSpeakerEnable:Z

.field public static changeForSpeakerFeature:Ljava/lang/String;

.field public static changeForSpeakerSettingValue:Z

.field public static closeAppEnable:Z

.field public static closeAppFeature:Ljava/lang/String;

.field public static closeAppSettingValue:Z

.field public static closeScreenEnable:Z

.field public static closeScreenFeature:Ljava/lang/String;

.field public static closeScreenSettingValue:Z

.field public static doubleTapEnable:Z

.field public static doubleTapFeature:Ljava/lang/String;

.field public static doubleTapSettingValue:Z

.field public static drawCEnable:Z

.field public static drawCFeature:Ljava/lang/String;

.field public static drawCSettingValue:Z

.field public static drawDownEnable:Z

.field public static drawDownFeature:Ljava/lang/String;

.field public static drawDownSettingValue:Z

.field public static drawEEnable:Z

.field public static drawEFeature:Ljava/lang/String;

.field public static drawESettingValue:Z

.field public static drawLeftEnable:Z

.field public static drawLeftFeature:Ljava/lang/String;

.field public static drawLeftSettingValue:Z

.field public static drawMEnable:Z

.field public static drawMFeature:Ljava/lang/String;

.field public static drawMSettingValue:Z

.field public static drawOEnable:Z

.field public static drawOFeature:Ljava/lang/String;

.field public static drawOSettingValue:Z

.field public static drawRightEnable:Z

.field public static drawRightFeature:Ljava/lang/String;

.field public static drawRightSettingValue:Z

.field public static drawSEnable:Z

.field public static drawSFeature:Ljava/lang/String;

.field public static drawSSettingValue:Z

.field public static drawUpEnable:Z

.field public static drawUpFeature:Ljava/lang/String;

.field public static drawUpSettingValue:Z

.field public static drawVEnable:Z

.field public static drawVFeature:Ljava/lang/String;

.field public static drawVSettingValue:Z

.field public static drawWEnable:Z

.field public static drawWFeature:Ljava/lang/String;

.field public static drawWSettingValue:Z

.field public static flashLightBroadcastType:I

.field public static flashLightRadioEnable:Z

.field public static flashLightRadioFeature:Ljava/lang/String;

.field public static forceStopFlashLightEnable:Z

.field public static gestureMotionSettingValue:Z

.field public static headTipsEnable:Z

.field public static mfvVersion:I

.field public static mifavorWidget:Z

.field public static pocketModeEnable:Z

.field public static pocketModeFeature:Ljava/lang/String;

.field public static pocketSettingValue:Z

.field public static preferenceEnable:Z

.field public static preferenceTextSize:I

.field public static screenShotFeature:Ljava/lang/String;

.field public static screenShotsEnable:Z

.field public static screenShotsSettingValue:Z

.field public static shakeEnable:Z

.field public static shakeFeature:Ljava/lang/String;

.field public static shakeSettingValue:Z

.field public static shakeToClose:Z

.field public static switchAppEnable:Z

.field public static switchAppFeature:Ljava/lang/String;

.field public static switchAppSettingValue:Z

.field public static tabCount:I

.field public static unlockType:I

.field public static voiceAssistantOptionEnable:Z

.field public static zteProject:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    sget-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->ALL:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->zteProject:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 21
    sput v6, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    .line 22
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->tabCount:I

    .line 23
    sput v5, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    .line 24
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceEnable:Z

    .line 25
    const/16 v0, 0x14

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->actionBarTextSize:I

    .line 26
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    .line 27
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 31
    sput v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 32
    sput v2, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    .line 33
    sput v2, Lcom/zte/zgesture/tools/FeatureConfig;->unlockType:I

    .line 35
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->gestureMotionSettingValue:Z

    .line 37
    const-string v0, "air_gestures"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureFeature:Ljava/lang/String;

    .line 38
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 39
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureSettingValue:Z

    .line 41
    const-string v0, "air_m"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->airMFeature:Ljava/lang/String;

    .line 42
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airMEnable:Z

    .line 43
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airMSettingValue:Z

    .line 45
    const-string v0, "air_o"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->airOFeature:Ljava/lang/String;

    .line 46
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airOEnable:Z

    .line 47
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airOSettingValue:Z

    .line 49
    const-string v0, "air_v"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->airVFeature:Ljava/lang/String;

    .line 50
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airVEnable:Z

    .line 51
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airVSettingValue:Z

    .line 53
    const-string v0, "air_z"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->airZFeature:Ljava/lang/String;

    .line 54
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airZEnable:Z

    .line 55
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airZSettingValue:Z

    .line 57
    const-string v0, "air_w"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->airWFeature:Ljava/lang/String;

    .line 58
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->airWEnable:Z

    .line 59
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airWSettingValue:Z

    .line 63
    const-string v0, "black_screen_gesture"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureFeature:Ljava/lang/String;

    .line 64
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    .line 65
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureSettingValue:Z

    .line 66
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    .line 67
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    .line 69
    const-string v0, "double_tap"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapFeature:Ljava/lang/String;

    .line 70
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    .line 71
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapSettingValue:Z

    .line 73
    const-string v0, "draw_c"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawCFeature:Ljava/lang/String;

    .line 74
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    .line 75
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawCSettingValue:Z

    .line 77
    const-string v0, "draw_o"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawOFeature:Ljava/lang/String;

    .line 78
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    .line 79
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawOSettingValue:Z

    .line 81
    const-string v0, "draw_m"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawMFeature:Ljava/lang/String;

    .line 82
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    .line 83
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawMSettingValue:Z

    .line 85
    const-string v0, "draw_w"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawWFeature:Ljava/lang/String;

    .line 86
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    .line 87
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawWSettingValue:Z

    .line 89
    const-string v0, "draw_v"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawVFeature:Ljava/lang/String;

    .line 90
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 91
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawVSettingValue:Z

    .line 93
    const-string v0, "draw_e"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawEFeature:Ljava/lang/String;

    .line 94
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    .line 95
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawESettingValue:Z

    .line 97
    const-string v0, "draw_s"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawSFeature:Ljava/lang/String;

    .line 98
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    .line 99
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawSSettingValue:Z

    .line 101
    const-string v0, "draw_up"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpFeature:Ljava/lang/String;

    .line 102
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    .line 103
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpSettingValue:Z

    .line 105
    const-string v0, "draw_down"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownFeature:Ljava/lang/String;

    .line 106
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    .line 107
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownSettingValue:Z

    .line 109
    const-string v0, "draw_left"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftFeature:Ljava/lang/String;

    .line 110
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    .line 111
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftSettingValue:Z

    .line 113
    const-string v0, "draw_right"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightFeature:Ljava/lang/String;

    .line 114
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    .line 115
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightSettingValue:Z

    .line 118
    const-string v0, "close_app"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppFeature:Ljava/lang/String;

    .line 119
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    .line 120
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppSettingValue:Z

    .line 122
    const-string v0, "switch_app"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppFeature:Ljava/lang/String;

    .line 123
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    .line 124
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppSettingValue:Z

    .line 126
    const-string v0, "screen_shot"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotFeature:Ljava/lang/String;

    .line 127
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    .line 128
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 131
    const-string v0, "call"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->callFeature:Ljava/lang/String;

    .line 132
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    .line 133
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->callSettingValue:Z

    .line 135
    const-string v0, "answer"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->answerFeature:Ljava/lang/String;

    .line 136
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->answerEnable:Z

    .line 137
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->answerSettingValue:Z

    .line 139
    const-string v0, "pocket"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeFeature:Ljava/lang/String;

    .line 140
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    .line 141
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->pocketSettingValue:Z

    .line 143
    const-string v0, "turnover"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnFeature:Ljava/lang/String;

    .line 144
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnEnable:Z

    .line 145
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnSettingValue:Z

    .line 147
    const-string v0, "alarmclock"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockFeature:Ljava/lang/String;

    .line 148
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    .line 149
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockSettingValue:Z

    .line 150
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCancelEnable:Z

    .line 151
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->alarmSnoozeEnable:Z

    .line 153
    const-string v0, "changetoreceiver"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerFeature:Ljava/lang/String;

    .line 154
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerEnable:Z

    .line 155
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerSettingValue:Z

    .line 157
    const-string v0, "closescreen"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenFeature:Ljava/lang/String;

    .line 158
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    .line 159
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenSettingValue:Z

    .line 161
    const-string v0, "shakeit"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->shakeFeature:Ljava/lang/String;

    .line 162
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->shakeEnable:Z

    .line 163
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->shakeSettingValue:Z

    .line 164
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->shakeToClose:Z

    .line 167
    const-string v0, "shake_flashlight"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioFeature:Ljava/lang/String;

    .line 168
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    .line 169
    sput v2, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    .line 171
    const-string v0, "shake_caculator"

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioFeature:Ljava/lang/String;

    .line 172
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    .line 175
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->voiceAssistantOptionEnable:Z

    .line 176
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->forceStopFlashLightEnable:Z

    .line 180
    const/4 v0, 0x5

    sput v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->proximityFarValue:I

    .line 181
    sget-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->V7MAX:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig;->zteProject:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 182
    sget-object v0, Lcom/zte/zgesture/tools/FeatureConfig$1;->$SwitchMap$com$zte$zgesture$tools$FeatureConfig$ZteProject:[I

    sget-object v1, Lcom/zte/zgesture/tools/FeatureConfig;->zteProject:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    invoke-virtual {v1}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 184
    :pswitch_0
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 185
    sput v4, Lcom/zte/zgesture/tools/FeatureConfig;->tabCount:I

    .line 186
    const/16 v0, 0x12

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    .line 187
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 188
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    .line 189
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    .line 190
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureSettingValue:Z

    .line 191
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    .line 192
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapSettingValue:Z

    .line 194
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppSettingValue:Z

    .line 195
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppSettingValue:Z

    .line 196
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 198
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->callSettingValue:Z

    .line 199
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->answerSettingValue:Z

    .line 200
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->pocketSettingValue:Z

    .line 201
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockSettingValue:Z

    .line 202
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerSettingValue:Z

    .line 203
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    .line 204
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 205
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    .line 206
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->unlockType:I

    .line 207
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    .line 208
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 209
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    goto :goto_0

    .line 212
    :pswitch_1
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 213
    sput v4, Lcom/zte/zgesture/tools/FeatureConfig;->tabCount:I

    .line 214
    const/16 v0, 0x12

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    .line 215
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 216
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    .line 217
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    .line 218
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    .line 220
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppSettingValue:Z

    .line 221
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppSettingValue:Z

    .line 222
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 223
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    .line 225
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    goto :goto_0

    .line 228
    :pswitch_2
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 229
    const/4 v0, 0x4

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    .line 230
    sput v5, Lcom/zte/zgesture/tools/FeatureConfig;->actionBarTextSize:I

    .line 231
    const/16 v0, 0xf

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    .line 232
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 233
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    .line 234
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    .line 235
    sput v6, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 236
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapEnable:Z

    .line 237
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 238
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    .line 239
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    .line 240
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    .line 241
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 242
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    .line 243
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    .line 244
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    .line 245
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    .line 246
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    .line 247
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    .line 248
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    .line 249
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    .line 250
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    .line 251
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    .line 252
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    .line 253
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    .line 254
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    goto/16 :goto_0

    .line 257
    :pswitch_3
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 258
    const/16 v0, 0x12

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->actionBarTextSize:I

    .line 259
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 260
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    .line 261
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->unlockType:I

    .line 262
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 263
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 264
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    .line 265
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 267
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    .line 268
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    .line 269
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    .line 270
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    .line 271
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    .line 272
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    goto/16 :goto_0

    .line 275
    :pswitch_4
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    .line 276
    sput v5, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceTextSize:I

    .line 277
    sput v3, Lcom/zte/zgesture/core/external/SensorConfiguration;->proximityFarValue:I

    .line 278
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->preferenceEnable:Z

    .line 279
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->gestureMotionSettingValue:Z

    .line 281
    sput v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 282
    sput v4, Lcom/zte/zgesture/tools/FeatureConfig;->appDefaultType:I

    .line 283
    sput v4, Lcom/zte/zgesture/tools/FeatureConfig;->unlockType:I

    .line 284
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    .line 285
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airWEnable:Z

    .line 286
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 287
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    .line 288
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    .line 289
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    .line 290
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    .line 291
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    .line 292
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    .line 293
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    .line 294
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->shakeToClose:Z

    .line 295
    sput v4, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    goto/16 :goto_0

    .line 299
    :pswitch_5
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 300
    sput v5, Lcom/zte/zgesture/tools/FeatureConfig;->actionBarTextSize:I

    .line 301
    const/4 v0, 0x4

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    .line 302
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 303
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    .line 304
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    .line 305
    sput v6, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 306
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapSettingValue:Z

    .line 307
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 308
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    .line 309
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    .line 310
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    .line 311
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 312
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    .line 313
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    .line 314
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    .line 315
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    .line 316
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    .line 317
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    .line 318
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    .line 319
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    .line 320
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    .line 321
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    .line 322
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    .line 323
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    .line 324
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    .line 325
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    goto/16 :goto_0

    .line 328
    :pswitch_6
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->headTipsEnable:Z

    .line 329
    sput v5, Lcom/zte/zgesture/tools/FeatureConfig;->actionBarTextSize:I

    .line 330
    const/4 v0, 0x4

    sput v0, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    .line 331
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    .line 332
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureVisable:Z

    .line 333
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    .line 334
    sput v6, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    .line 335
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->doubleTapSettingValue:Z

    .line 336
    sput-boolean v3, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsSettingValue:Z

    .line 337
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawCEnable:Z

    .line 338
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawOEnable:Z

    .line 339
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawMEnable:Z

    .line 340
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawVEnable:Z

    .line 341
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawWEnable:Z

    .line 342
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawEEnable:Z

    .line 343
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawSEnable:Z

    .line 344
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawUpEnable:Z

    .line 345
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawDownEnable:Z

    .line 346
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawLeftEnable:Z

    .line 347
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->drawRightEnable:Z

    .line 348
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    .line 349
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    .line 350
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    .line 351
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    .line 352
    sput v3, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightBroadcastType:I

    .line 353
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->flashLightRadioEnable:Z

    .line 354
    sput-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->caculatorRadioEnable:Z

    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method
