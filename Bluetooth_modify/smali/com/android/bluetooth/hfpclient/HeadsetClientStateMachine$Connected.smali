.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;

    .prologue
    .line 1561
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2062
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2063
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio changed on disconnected device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 2067
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2117
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio State Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bad state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2069
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 2072
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2074
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2075
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "stopping ring and request focus for call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 2078
    :cond_2
    const/4 v1, 0x2

    .line 2079
    .local v1, "newAudioMode":I
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2080
    .local v0, "currMode":I
    if-eq v0, v1, :cond_3

    .line 2082
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 2084
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioMode Setting audio mode from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 2088
    :cond_3
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "hfp_enable=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioWbs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2091
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "Setting sampling rate as 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_set_sampling_rate=16000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2098
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_enable=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2099
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v6, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2101
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2095
    :cond_4
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "Setting sampling rate as 8000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_set_sampling_rate=8000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 2104
    .end local v0    # "currMode":I
    .end local v1    # "newAudioMode":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2105
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v5, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2109
    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 2110
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 2111
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2039
    packed-switch p1, :pswitch_data_0

    .line 2054
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :goto_0
    return-void

    .line 2041
    :pswitch_0
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "Connected disconnects."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2047
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2048
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2050
    :cond_0
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .prologue
    .line 2028
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2029
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.headsetclient.extra.RESULT_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2030
    iget v1, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 2031
    const-string v1, "android.bluetooth.headsetclient.extra.CME_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2033
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2034
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2035
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1564
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1567
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2124
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1571
    monitor-enter p0

    :try_start_0
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected process message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 2022
    const/4 v0, 0x0

    .line 2024
    :goto_0
    monitor-exit p0

    return v0

    .line 1581
    :sswitch_0
    :try_start_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1582
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1587
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1590
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1592
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1571
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1598
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 1601
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 1602
    .local v8, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1607
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v8}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 1616
    .end local v8    # "dev":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectAudioNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1622
    :sswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1627
    :sswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->startVoiceRecognitionNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1629
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x5

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1631
    :cond_3
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1636
    :sswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->stopVoiceRecognitionNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1638
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x6

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1640
    :cond_4
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1645
    :sswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1646
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1649
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1654
    :sswitch_8
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hfp_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1657
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1660
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x8

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1665
    :sswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1666
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x9

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1668
    :cond_7
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Cannot redial"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1672
    :sswitch_a
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1673
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0xa

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1675
    :cond_8
    const-string v1, "HeadsetClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Cannot dial with a given number:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1679
    :sswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialMemoryNative(I)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1680
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0xb

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1682
    :cond_9
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Cannot dial with a given location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1686
    :sswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1689
    :sswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1692
    :sswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1695
    :sswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1698
    :sswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->enterPrivateMode(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1701
    :sswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->explicitCallTransfer()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1704
    :sswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendDtmfNative(B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1705
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x11

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1707
    :cond_a
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t send DTMF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1711
    :sswitch_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->retrieveSubscriberInfoNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1712
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x34

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1714
    :cond_b
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t retrieve subscriber info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1718
    :sswitch_14
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestLastVoiceTagNumberNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1719
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x13

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1721
    :cond_c
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t get last VTAG number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1725
    :sswitch_15
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    goto/16 :goto_1

    .line 1728
    :sswitch_16
    const/4 v11, 0x0

    .line 1729
    .local v11, "intent":Landroid/content/Intent;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .line 1734
    .local v10, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2016
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1736
    :pswitch_0
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Connection state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 1741
    :pswitch_1
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Audio state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 1746
    :pswitch_2
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Network state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1750
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1751
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1754
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_d

    .line 1756
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1757
    const-string v0, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    :cond_d
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1762
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentOperatorNameNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$6900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1767
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x33

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1769
    :cond_e
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t querry operator name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1774
    :pswitch_3
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Roaming state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1778
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1779
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1782
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1785
    :pswitch_4
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1789
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1792
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1793
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1796
    :pswitch_5
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1800
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1801
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1803
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1804
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1807
    :pswitch_6
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Operator name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1811
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1812
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1814
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1815
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1818
    :pswitch_7
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Voice recognition state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1823
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1824
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1826
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1827
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1831
    :pswitch_8
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1834
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallSetupIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1837
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallHeldIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1840
    :pswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateRespAndHold(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_1

    .line 1843
    :pswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateClip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1846
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCallWaiting(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1849
    :pswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1851
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1854
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1855
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1859
    :pswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    iget-object v3, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget v4, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    :goto_2
    iget v5, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v5, :cond_10

    const/4 v5, 0x1

    :goto_3
    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x0

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    goto :goto_3

    .line 1869
    :pswitch_10
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_11

    .line 1870
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x6

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1872
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1873
    :cond_11
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1875
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1874
    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    .line 1879
    :pswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1882
    .local v13, "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v13, :cond_13

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_14

    .line 1883
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1887
    :cond_14
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: command result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queuedAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1974
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1893
    :sswitch_17
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_15

    .line 1894
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    .line 1895
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1902
    :cond_15
    :goto_5
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1903
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1907
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1898
    :cond_16
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    goto :goto_5

    .line 1910
    :sswitch_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_1

    .line 1913
    :sswitch_19
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_17

    .line 1914
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0, v13}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_1

    .line 1916
    :cond_17
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v0

    if-nez v0, :cond_19

    .line 1917
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 1919
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1921
    :cond_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1923
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1927
    :cond_19
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1937
    :sswitch_1a
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1a

    .line 1938
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0, v13}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$7802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_1

    .line 1940
    :cond_1a
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1946
    :sswitch_1b
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1b

    .line 1947
    iget-object v6, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1949
    .local v6, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    invoke-static {v0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$8100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 1951
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1953
    .end local v6    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1b
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1960
    :sswitch_1c
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eqz v0, :cond_0

    .line 1961
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1981
    .end local v13    # "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :pswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1982
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1983
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1986
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1989
    :pswitch_13
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1990
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.headsetclient.extra.NUMBER"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1992
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1993
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1996
    :pswitch_14
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "start ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1998
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ring already playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2001
    :cond_1c
    const/4 v12, 0x1

    .line 2002
    .local v12, "newAudioMode":I
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    .line 2003
    .local v7, "currMode":I
    if-eq v7, v12, :cond_1d

    .line 2005
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 2007
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode Setting audio mode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 2011
    :cond_1d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1579
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_14
        0x32 -> :sswitch_15
        0x34 -> :sswitch_13
        0x64 -> :sswitch_16
    .end sparse-switch

    .line 1734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_e
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 1890
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_17
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_19
        0xd -> :sswitch_1a
        0xe -> :sswitch_1a
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1a
        0x13 -> :sswitch_1c
        0x32 -> :sswitch_18
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1c
        0x35 -> :sswitch_1b
        0x36 -> :sswitch_1
    .end sparse-switch
.end method
