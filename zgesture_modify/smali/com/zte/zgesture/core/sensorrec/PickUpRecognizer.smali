.class public Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
.super Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;
.source "PickUpRecognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PickUpReconizer"

.field private static mInstance:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;


# instance fields
.field private final FAR_BOUNCE_PITCH:I

.field private final FAR_BOUNCE_ROLL:I

.field private final FAR_BOUNCE_TIME:F

.field private final NEAR_BOUNCE_PITCH:I

.field private final NEAR_BOUNCE_ROLL:I

.field private final NEAR_BOUNCE_TIME:F

.field private final NEAR_MAX_TIME:F

.field private final PITCH_HIGH:I

.field private final PITCH_LOW:I

.field private final ROLL_HIGH:I

.field private final ROLL_LOW:I

.field private mContext:Landroid/content/Context;

.field private mDetector:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

.field private mFarBounceTime:F

.field private mFarMoved:Z

.field private mFarToNear:Z

.field private mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

.field private mHasTrigger:Z

.field private mIsNear:Z

.field private mIsProximityInit:Z

.field private mLastPitch:I

.field private mLastRoll:I

.field private mNearBounceTime:F

.field private mNearStill:Z

.field private mNearTime:F

.field private mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

.field private mStopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

.field private mUsedSensorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;-><init>()V

    .line 38
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z

    .line 39
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarToNear:Z

    .line 40
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsProximityInit:Z

    .line 41
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F

    .line 42
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F

    .line 43
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F

    .line 45
    const/16 v3, -0x168

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I

    .line 46
    const/16 v3, -0x168

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I

    .line 48
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z

    .line 49
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z

    .line 51
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mHasTrigger:Z

    .line 53
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->ROLL_LOW:I

    .line 54
    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->ROLL_HIGH:I

    .line 55
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->PITCH_LOW:I

    .line 56
    const/16 v3, 0x1e

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->PITCH_HIGH:I

    .line 58
    const v3, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->NEAR_BOUNCE_TIME:F

    .line 59
    const v3, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->FAR_BOUNCE_TIME:F

    .line 60
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->NEAR_MAX_TIME:F

    .line 62
    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->FAR_BOUNCE_ROLL:I

    .line 63
    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->FAR_BOUNCE_PITCH:I

    .line 65
    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->NEAR_BOUNCE_ROLL:I

    .line 66
    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->NEAR_BOUNCE_PITCH:I

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mContext:Landroid/content/Context;

    .line 71
    sget-boolean v3, Lcom/zte/zgesture/core/external/SensorConfiguration;->thirdLibEnable:Z

    if-eqz v3, :cond_0

    .line 73
    new-instance v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    sget-object v3, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;->FAR_TO_NEAR:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    sget-boolean v4, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v7, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v8, 0x0

    const v9, -0x40cafb09

    const/4 v10, 0x0

    const v11, 0x3f3504f7

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x1

    const/high16 v11, -0x3e100000    # -30.0f

    const/high16 v12, 0x41f00000    # 30.0f

    const/4 v13, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    const v15, 0x3e99999a    # 0.3f

    const/high16 v16, 0x40200000    # 2.5f

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3d4ccccd    # 0.05f

    const/high16 v19, 0x3e000000    # 0.125f

    invoke-direct/range {v2 .. v19}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;-><init>(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;ZFFLcom/hcrest/sensors/util/Quaternion;FFZFFZFFFFFF)V

    .line 91
    .local v2, "config":Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;
    new-instance v3, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$1;-><init>(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mStopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    .line 104
    new-instance v3, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    new-instance v4, Lcom/hcrest/android/sensors/SensorManagerAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/hcrest/android/sensors/SensorManagerAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, v2}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mDetector:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mDetector:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mStopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    invoke-virtual {v3, v4}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->setStopWithinTiltRegionEventListener(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;)V

    .line 240
    .end local v2    # "config":Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v3, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;-><init>(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    .line 134
    new-instance v3, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$3;-><init>(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    .line 235
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->resetData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F

    return v0
.end method

.method static synthetic access$1102(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F

    return p1
.end method

.method static synthetic access$1116(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearBounceTime:F

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mHasTrigger:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mHasTrigger:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsProximityInit:Z

    return v0
.end method

.method static synthetic access$202(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsProximityInit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarToNear:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarToNear:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I

    return v0
.end method

.method static synthetic access$502(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I

    return p1
.end method

.method static synthetic access$600(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I

    return p1
.end method

.method static synthetic access$700(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z

    return v0
.end method

.method static synthetic access$702(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z

    return p1
.end method

.method static synthetic access$800(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F

    return v0
.end method

.method static synthetic access$802(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F

    return p1
.end method

.method static synthetic access$816(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F

    return v0
.end method

.method static synthetic access$900(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F

    return v0
.end method

.method static synthetic access$916(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;F)F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    if-nez v0, :cond_0

    .line 291
    if-eqz p0, :cond_0

    .line 292
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .line 293
    const-string v0, "PickUpReconizer"

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    return-object v0
.end method

.method private resetData()V
    .locals 3

    .prologue
    const/16 v2, -0x168

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z

    .line 244
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarToNear:Z

    .line 245
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsProximityInit:Z

    .line 246
    iput v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearTime:F

    .line 247
    iput v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarBounceTime:F

    .line 248
    iput v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastRoll:I

    .line 249
    iput v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mLastPitch:I

    .line 250
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarMoved:Z

    .line 251
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mNearStill:Z

    .line 252
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mHasTrigger:Z

    .line 253
    return-void
.end method


# virtual methods
.method public registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 4
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->hasClient()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    sget-boolean v2, Lcom/zte/zgesture/core/external/SensorConfiguration;->thirdLibEnable:Z

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mDetector:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    invoke-virtual {v2}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->start()V

    .line 267
    :cond_0
    const-string v2, "PickUpReconizer"

    const-string v3, "registerClient()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 270
    return-void

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->resetData()V

    .line 262
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    .line 263
    .local v1, "monitor":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    goto :goto_0
.end method

.method public unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 4
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 274
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->hasClient()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    sget-boolean v2, Lcom/zte/zgesture/core/external/SensorConfiguration;->thirdLibEnable:Z

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mDetector:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    invoke-virtual {v2}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stop()V

    .line 284
    :cond_0
    const-string v2, "PickUpReconizer"

    const-string v3, "unRegisterClient()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    return-void

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    .line 280
    .local v1, "monitor":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
    iget-object v2, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mUsedSensorList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    goto :goto_0
.end method
