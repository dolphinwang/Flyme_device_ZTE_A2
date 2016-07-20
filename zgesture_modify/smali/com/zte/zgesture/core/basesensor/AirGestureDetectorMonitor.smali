.class public Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "AirGestureDetectorMonitor.java"


# static fields
.field private static final airGestureDetectorName:Ljava/lang/String; = "ALPHABET_GESTURE_RECOGNITION"

.field private static mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const-string v0, "ALPHABET_GESTURE_RECOGNITION"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    if-nez v0, :cond_0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    .line 20
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    return-object v0
.end method
