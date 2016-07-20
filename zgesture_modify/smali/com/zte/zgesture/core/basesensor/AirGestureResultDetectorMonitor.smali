.class public Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "AirGestureResultDetectorMonitor.java"


# static fields
.field private static final airGestureResultDetectorName:Ljava/lang/String; = "RECOG_RESULT"

.field private static mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-string v0, "RECOG_RESULT"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    if-nez v0, :cond_0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    .line 19
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    return-object v0
.end method
