.class Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;
.super Landroid/content/BroadcastReceiver;
.source "HandTurnControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$300(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 75
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$300(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_close_screen"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$402(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;Z)Z

    .line 78
    const-string v0, "HandTurnControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSwitchBroadcast mSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$400(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$400(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$100(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    .line 82
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$600(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$500(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 85
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$900(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$700(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenonfilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$800(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$900(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$1000(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenofffilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$1100(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$200(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    .line 91
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$600(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$500(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$900(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$700(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$900(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$1000(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method
