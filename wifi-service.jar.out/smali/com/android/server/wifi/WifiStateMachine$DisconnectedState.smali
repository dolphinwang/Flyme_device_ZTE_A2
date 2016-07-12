.class Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mFrameworkScanStopDelayMs:J

.field private mFrameworkScanStopSupport:Z

.field private mStopScanAlarmEnabled:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10186
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 10190
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 10191
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    return-void
.end method

.method private setStopScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 10194
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 10207
    :cond_0
    :goto_0
    return-void

    .line 10195
    :cond_1
    if-eqz p1, :cond_2

    .line 10196
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 10197
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStopScanAlarm, mFrameworkScanStopDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10198
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mStopScanIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 10200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    goto :goto_0

    .line 10203
    :cond_2
    const-string v0, "WifiStateMachine"

    const-string v1, "Cancel setStopScanAlarm!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10204
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mStopScanIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10205
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 10212
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10215
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10216
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 10312
    :cond_1
    :goto_0
    return-void

    .line 10220
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10226
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10227
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_framework_scan_interval_ms"

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$32200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    int-to-long v0, v0

    :goto_1
    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$31202(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10239
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13700()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10240
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Enter disconnected State scan interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31200(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEnableBackgroundScan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFrameworkScanIntervalMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31200(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10247
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$19702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10249
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsDriverRoamingRenewDhcp:Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$20402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10251
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsDriverRoamingWhenDhcp:Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$20502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10254
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v6, v7, v7}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 10255
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10259
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    invoke-static {v0, v1, v7, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 10284
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 10285
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32404(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 10289
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32502(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10292
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 10294
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    .line 10296
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrameworkScanStopSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrameworkScanStopDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10298
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 10299
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 10301
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 10302
    const-string v0, "WifiStateMachine"

    const-string v1, "Start timer setStopScanAlarm!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10303
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 10305
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$32602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10306
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpConfigLost:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10307
    const-string v0, "WifiStateMachine"

    const-string v1, "IpConfigLost, reconnect!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10308
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIpConfigLost:Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$8102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10309
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    goto/16 :goto_0

    .line 10227
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_1

    .line 10233
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_framework_scan_interval_ms"

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$32200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31202(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_2

    .line 10264
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10271
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10272
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    goto/16 :goto_3

    .line 10275
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$28900(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_3
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10553
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10554
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 10556
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$28900(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10557
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10558
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 10559
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 10315
    const/4 v8, 0x1

    .line 10317
    .local v8, "ret":Z
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10319
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 10545
    const/4 v8, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    move v0, v8

    .line 10547
    :goto_1
    return v0

    .line 10321
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10322
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10325
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 10329
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$32600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10330
    const-string v0, "WifiStateMachine"

    const-string v1, "No periodic scan because stop scan timeout."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10331
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    goto :goto_0

    .line 10333
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 10334
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$32404(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 10344
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$32404(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 10346
    const/4 v8, 0x0

    .line 10347
    goto/16 :goto_0

    .line 10349
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 10350
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$12102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10352
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 10354
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 10357
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10358
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10364
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_0

    .line 10360
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 10371
    :sswitch_4
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/wifi/StateChangeResult;

    .line 10372
    .local v9, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$700()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10373
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUPPLICANT_STATE_CHANGE_EVENT state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " debouncing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10377
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, v9, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14300(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 10379
    const/4 v8, 0x0

    .line 10380
    goto/16 :goto_0

    .line 10382
    .end local v9    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkOrDeferScanAllowed(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$32900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10384
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$26400()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10385
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10392
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_9

    .line 10395
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$32300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    .line 10396
    .local v3, "period":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10397
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_interval_p2p_connected_ms"

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$32300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v3, v0

    .line 10401
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine;->access$26000(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 10403
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$26100()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10404
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiStateMachine Disconnected CMD_START_SCAN source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> obsolete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10408
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10412
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10413
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 10415
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$15500(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    .line 10416
    const/4 v8, 0x1

    .line 10417
    goto/16 :goto_0

    .line 10420
    .end local v3    # "period":I
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10421
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 10423
    :cond_a
    const/4 v8, 0x0

    .line 10425
    goto/16 :goto_0

    .line 10428
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10429
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 10432
    :cond_b
    const/4 v8, 0x0

    .line 10433
    goto/16 :goto_0

    .line 10435
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 10436
    .local v7, "info":Landroid/net/NetworkInfo;
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10437
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10438
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 10440
    .local v6, "defaultInterval":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_interval_p2p_connected_ms"

    int-to-long v4, v6

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 10443
    .local v10, "scanIntervalMs":J
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    long-to-int v1, v10

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 10457
    .end local v6    # "defaultInterval":I
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "scanIntervalMs":J
    :goto_3
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10463
    const/4 v8, 0x0

    .line 10465
    goto/16 :goto_0

    .line 10444
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 10445
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$700()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "Turn on scanning after p2p disconnected"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10446
    :cond_d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$32404(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_3

    .line 10453
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_3

    .line 10467
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    .line 10472
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10473
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworksDisabledDuringConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->isNetworksDisabledDuringConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectNetwork:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10476
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10477
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10491
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$33000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10492
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWfdConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10494
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10479
    :cond_12
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->isNetworksDisabledDuringConnect()Z

    move-result v0

    if-nez v0, :cond_10

    .line 10480
    const-string v0, "WifiStateMachine"

    const-string v1, "Disable supplicant auto scan!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10481
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto :goto_5

    .line 10484
    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 10486
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10487
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto :goto_5

    .line 10496
    :cond_14
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10501
    :sswitch_b
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_0

    .line 10502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 10503
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$32600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10504
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10505
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$33100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10506
    const-string v0, "WifiStateMachine"

    const-string v1, "Screen on, transition to mDisconnectedState!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10510
    :sswitch_c
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_0

    .line 10511
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10512
    const-string v0, "WifiStateMachine"

    const-string v1, "Start stop scan alarm!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10513
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    goto/16 :goto_0

    .line 10516
    :sswitch_d
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_0

    .line 10517
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$32602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10518
    const-string v0, "WifiStateMachine"

    const-string v1, "mIsPeriodicScanTimeout get!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10519
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10520
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 10521
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$28900(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10522
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20058

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$33200(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 10528
    :sswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 10529
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 10530
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10531
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 10533
    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 10534
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 10539
    :sswitch_f
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkPasspointR1Support:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10540
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPasspointConnectedBssid:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 10319
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x20058 -> :sswitch_1
        0x2005f -> :sswitch_9
        0x200ad -> :sswitch_a
        0x200af -> :sswitch_d
        0x200b0 -> :sswitch_c
        0x200b1 -> :sswitch_b
        0x2300b -> :sswitch_7
        0x2300c -> :sswitch_e
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_6
        0x24006 -> :sswitch_4
        0x24059 -> :sswitch_f
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
