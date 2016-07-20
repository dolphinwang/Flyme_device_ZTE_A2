.class public Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;
.super Ljava/lang/Object;
.source "AlarmClockControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "AlarmClockControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;


# instance fields
.field private mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;

.field mAlarmStartFilter:Landroid/content/IntentFilter;

.field private mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;

.field mAlarmStopFilter:Landroid/content/IntentFilter;

.field private mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mRegister:Z

.field private mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field mViewrootMotionIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z

    .line 26
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mRegister:Z

    .line 30
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$3;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$3;-><init>(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$4;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$4;-><init>(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    .line 121
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    .line 123
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 124
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 125
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_alarm_turn"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "settingFilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartFilter:Landroid/content/IntentFilter;

    .line 132
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartFilter:Landroid/content/IntentFilter;

    const-string v2, "com.zte.zgesture.START_ZGESTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopFilter:Landroid/content/IntentFilter;

    .line 135
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopFilter:Landroid/content/IntentFilter;

    const-string v2, "com.zte.zgesture.STOP_ZGESTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mViewrootMotionIntentFilter:Landroid/content/IntentFilter;

    .line 138
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mViewrootMotionIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.zte.zgesture.viewrootmotion"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    :cond_0
    const-string v1, "AlarmClockControl"

    const-string v2, "AlarmClockControl"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->handleMotion(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .line 114
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    goto :goto_0
.end method

.method private handleMotion(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_0

    .line 169
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 155
    :sswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->unRegisterDetector()V

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v2, "zte.com.cn.alarmclock.gesturecancelalarm"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    const-string v2, "AlarmClockControl"

    const-string v3, " pat is trigger "

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "cancelIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AlarmClockControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MotionEvent.ACTION_POINTER_DOWN Exception e :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private registerDetector()V
    .locals 3

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mRegister:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 91
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mViewrootMotionIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mRegister:Z

    .line 95
    :cond_0
    return-void
.end method

.method private unRegisterDetector()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mRegister:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 100
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mScreenMotionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mRegister:Z

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->unRegisterDetector()V

    .line 183
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    .line 192
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmClockControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unregisterReceiver Exception e :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recongizerAction()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->unRegisterDetector()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "zte.com.cn.alarmclock.gesturestopalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    const-string v1, "AlarmClockControl"

    const-string v2, " turn over is trigger "

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
