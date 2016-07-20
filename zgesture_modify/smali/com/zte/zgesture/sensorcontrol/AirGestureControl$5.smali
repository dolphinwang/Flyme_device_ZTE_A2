.class Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;
.super Ljava/lang/Object;
.source "AirGestureControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/sensorcontrol/AirGestureControl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 10
    .param p1, "values"    # [F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x3

    .line 181
    aget v3, p1, v8

    float-to-int v2, v3

    .line 182
    .local v2, "value":I
    const/4 v0, 0x0

    .line 183
    .local v0, "appStr":Ljava/lang/String;
    const-string v3, "AirGestureControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mAirGestureResultCallBack value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1100(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 187
    packed-switch v2, :pswitch_data_0

    .line 252
    const-string v3, "AirGestureControl"

    const-string v4, " not recongizer "

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirMSwitch:Z
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1300(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->M:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_3

    .line 193
    :cond_2
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)I

    move-result v4

    invoke-virtual {v3, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 195
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.zte.zgesture.overhead.gesture"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v3, "gesture"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "AirGestureControl"

    const-string v4, " recongizer: M "

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirOSwitch:Z
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->O:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_6

    .line 208
    :cond_5
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)I

    move-result v4

    invoke-virtual {v3, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 210
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 211
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.zte.zgesture.overhead.gesture"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v3, "gesture"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v3, "AirGestureControl"

    const-string v4, " recongizer: O "

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :pswitch_2
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirVSwitch:Z
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1500(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->V:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_9

    .line 222
    :cond_8
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)I

    move-result v4

    invoke-virtual {v3, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 224
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v3

    const-string v4, "setting_air_v_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_9
    const-string v3, "AirGestureControl"

    const-string v4, " recongizer: V "

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    if-eqz v0, :cond_0

    .line 258
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/zte/zgesture/tools/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 259
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->setToastTips(Ljava/lang/String;)V

    .line 260
    invoke-static {v9}, Lcom/zte/zgesture/tools/Utils;->setToastFlag(Z)V

    .line 263
    :cond_a
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 264
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->showToastTips(Landroid/content/Context;)V

    .line 269
    :goto_2
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->lightScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 232
    :pswitch_3
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirWSwitch:Z
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->W:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_d

    .line 234
    :cond_c
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v3

    const-string v4, "setting_air_w_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_d
    const-string v3, "AirGestureControl"

    const-string v4, " recongizer: W "

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    :pswitch_4
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirZSwitch:Z
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    move-result-object v3

    sget-object v4, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->Z:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    if-ne v3, v4, :cond_10

    .line 243
    :cond_f
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)I

    move-result v4

    invoke-virtual {v3, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 245
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v3

    const-string v4, "setting_air_z_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_10
    const-string v3, "AirGestureControl"

    const-string v4, " recongizer: Z "

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 266
    :cond_11
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->unLockSafe(Landroid/content/Context;)V

    .line 267
    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$900(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$1800(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
