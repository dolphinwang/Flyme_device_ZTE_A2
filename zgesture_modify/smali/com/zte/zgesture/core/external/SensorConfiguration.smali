.class public Lcom/zte/zgesture/core/external/SensorConfiguration;
.super Ljava/lang/Object;
.source "SensorConfiguration.java"


# static fields
.field public static proximityFarValue:I

.field public static sensorDefaultEnable:Z

.field public static thirdLibEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->thirdLibEnable:Z

    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    .line 13
    const/4 v0, 0x5

    sput v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->proximityFarValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
