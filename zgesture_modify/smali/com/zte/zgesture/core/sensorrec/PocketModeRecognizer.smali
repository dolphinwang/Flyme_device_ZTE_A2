.class public Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;
.super Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;
.source "PocketModeRecognizer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PocketModeRecognizer"

.field private static mInstance:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;


# instance fields
.field private final PITCH_HORIZONTAL:I

.field private mContext:Landroid/content/Context;

.field private mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

.field private mHorizontal:Z

.field private mIsNear:Z

.field private mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z

    .line 22
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z

    .line 23
    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->PITCH_HORIZONTAL:I

    .line 27
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$1;-><init>(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 41
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    .line 44
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$2;-><init>(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 57
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z

    return p1
.end method

.method static synthetic access$102(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    if-nez v0, :cond_0

    .line 88
    if-eqz p0, :cond_0

    .line 89
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    .line 90
    const-string v0, "PocketModeRecognizer"

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    return-object v0
.end method


# virtual methods
.method public isInPocket()Z
    .locals 3

    .prologue
    .line 97
    const-string v0, "PocketModeRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsNear and mHorizontal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->hasClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iput-boolean v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z

    .line 64
    iput-boolean v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z

    .line 65
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 66
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 67
    const-string v0, "PocketModeRecognizer"

    const-string v1, "registerClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 71
    return-void
.end method

.method public unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 76
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->hasClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iput-boolean v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z

    .line 78
    iput-boolean v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z

    .line 79
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 80
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 81
    const-string v0, "PocketModeRecognizer"

    const-string v1, " unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method
