.class public Lcom/zte/zgesture/GestureService;
.super Landroid/app/Service;
.source "GestureService.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/zgesture/core/external/InterfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/zte/zgesture/GestureService$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/GestureService$1;-><init>(Lcom/zte/zgesture/GestureService;)V

    iput-object v0, p0, Lcom/zte/zgesture/GestureService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/GestureService;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/GestureService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method private createSensorControllers()V
    .locals 2

    .prologue
    .line 80
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->airGestureEnable:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureEnable:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->closeAppEnable:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->switchAppEnable:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->screenShotsEnable:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    if-eqz v0, :cond_3

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/MultitouchInterceptManager;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/MultitouchInterceptManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ScreenMotionControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->pocketModeEnable:Z

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->callEnable:Z

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/CallControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_5
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->answerEnable:Z

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_6
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->callTurnEnable:Z

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_7
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->alarmCLockEnable:Z

    if-eqz v0, :cond_8

    .line 106
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_8
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->changeForSpeakerEnable:Z

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_9
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->closeScreenEnable:Z

    if-eqz v0, :cond_a

    .line 112
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_a
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->shakeEnable:Z

    if-eqz v0, :cond_b

    .line 116
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_b
    return-void
.end method

.method private destorySensorControllers()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/core/external/InterfaceControl;

    .line 123
    .local v1, "interfaceControl":Lcom/zte/zgesture/core/external/InterfaceControl;
    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1}, Lcom/zte/zgesture/core/external/InterfaceControl;->destroyAction()V

    goto :goto_0

    .line 127
    .end local v1    # "interfaceControl":Lcom/zte/zgesture/core/external/InterfaceControl;
    :cond_1
    iget-object v2, p0, Lcom/zte/zgesture/GestureService;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 128
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendRotationBroadcast()V
    .locals 5

    .prologue
    .line 142
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/GestureService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 143
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 145
    .local v1, "rotation":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "rotation"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v3, "com.zte.zgesture.onConfigurationChanged"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/GestureService;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation degree is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v1, 0x5a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "and sendsendBroadcast: com.zte.zgesture.onConfigurationChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 152
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    const-string v0, "gesture service is onBind"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-direct {p0}, Lcom/zte/zgesture/GestureService;->sendRotationBroadcast()V

    .line 159
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/zte/zgesture/GestureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    .line 47
    sget-object v1, Lcom/zte/zgesture/GestureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 48
    iget-object v1, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 50
    iget-object v1, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_all"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 51
    iget-object v1, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 53
    invoke-direct {p0}, Lcom/zte/zgesture/GestureService;->createSensorControllers()V

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, "broadCastIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/zte/zgesture/GestureService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/zgesture/GestureService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    const-string v1, "gesture service is created"

    invoke-static {v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zte/zgesture/GestureService;->destorySensorControllers()V

    .line 71
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 73
    iget-object v0, p0, Lcom/zte/zgesture/GestureService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/GestureService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    const-string v0, "gesture service is destroyed"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 65
    return-void
.end method
