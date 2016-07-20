.class public Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "ShakeDetectorMonitor.java"


# static fields
.field private static mShakeDetectorMonitor:Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorName"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorName"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-object v0, Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;->mShakeDetectorMonitor:Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;

    if-nez v0, :cond_0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    new-instance v0, Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;

    invoke-direct {v0, p0, p1}, Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;->mShakeDetectorMonitor:Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;

    .line 18
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;->mShakeDetectorMonitor:Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;

    return-object v0
.end method
