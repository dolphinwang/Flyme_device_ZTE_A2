.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1397
    packed-switch p1, :pswitch_data_0

    .line 1425
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1399
    :pswitch_0
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "HFPClient Connecting from Disconnected state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1401
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "Incoming AG accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1404
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1405
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1407
    :cond_1
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming AG rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bondState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    .line 1414
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1415
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 1416
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1397
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1299
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "stopping ring when disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1308
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "setMode to MODE_NORMAL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1314
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1315
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1316
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1318
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1321
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1322
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1323
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1325
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;

    .line 1329
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1331
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1332
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1334
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1335
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;
    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1336
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z
    invoke-static {v0, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1338
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1339
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1341
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x32

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1342
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1432
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1346
    monitor-enter p0

    :try_start_0
    const-string v4, "HeadsetClientStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1349
    const-string v3, "HeadsetClientStateMachine"

    const-string v4, "ERROR: current device not null in Disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    :goto_0
    monitor-exit p0

    return v2

    .line 1353
    :cond_0
    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1355
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1357
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v0, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1360
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectNative([B)Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1361
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v0, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    :sswitch_1
    move v2, v3

    .line 1391
    goto :goto_0

    .line 1366
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1367
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1346
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1373
    :sswitch_2
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    .line 1377
    .local v1, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1384
    const-string v2, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnected: Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1379
    :pswitch_0
    const-string v2, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnected: Connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1353
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 1377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
