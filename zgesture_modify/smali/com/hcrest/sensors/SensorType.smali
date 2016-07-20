.class public final enum Lcom/hcrest/sensors/SensorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/sensors/SensorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/hcrest/sensors/SensorType;

.field public static final enum AMBIENT_TEMPERATURE:Lcom/hcrest/sensors/SensorType;

.field public static final enum ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

.field public static final enum ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

.field public static final enum APP_STATE:Lcom/hcrest/sensors/SensorType;

.field public static final enum FLIP_DETECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum GAME_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum GEOMAGNETIC_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum GRAVITY:Lcom/hcrest/sensors/SensorType;

.field public static final enum GYROSCOPE_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

.field public static final enum LIGHT:Lcom/hcrest/sensors/SensorType;

.field public static final enum LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

.field public static final enum LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

.field public static final enum MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

.field public static final enum MAGNETIC_FIELD_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

.field public static final enum ORIENTATION:Lcom/hcrest/sensors/SensorType;

.field public static final enum PICKUP_DETECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum PRESSURE:Lcom/hcrest/sensors/SensorType;

.field public static final enum PROXIMITY:Lcom/hcrest/sensors/SensorType;

.field public static final enum RAW_ACCELEROMETER:Lcom/hcrest/sensors/SensorType;

.field public static final enum RAW_GYROSCOPE:Lcom/hcrest/sensors/SensorType;

.field public static final enum RAW_MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

.field public static final enum RELATIVE_CURSOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum RELATIVE_HUMIDITY:Lcom/hcrest/sensors/SensorType;

.field public static final enum SHAKE_DETECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum SIGNIFICANT_MOTION:Lcom/hcrest/sensors/SensorType;

.field public static final enum STABILITY_CLASSIFIER:Lcom/hcrest/sensors/SensorType;

.field public static final enum STABILITY_DETECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum STEP_COUNTER:Lcom/hcrest/sensors/SensorType;

.field public static final enum STEP_DETECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum TAP_DETECTOR:Lcom/hcrest/sensors/SensorType;

.field public static final enum TEMPERATURE:Lcom/hcrest/sensors/SensorType;

.field private static final synthetic a:[Lcom/hcrest/sensors/SensorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->ALL:Lcom/hcrest/sensors/SensorType;

    .line 8
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "LINEAR_ACCELERATION"

    invoke-direct {v0, v1, v4}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    .line 14
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "LINEAR_ACCELERATION_NOGRAV"

    invoke-direct {v0, v1, v5}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    .line 17
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "MAGNETIC_FIELD"

    invoke-direct {v0, v1, v6}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    .line 23
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v7}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->ORIENTATION:Lcom/hcrest/sensors/SensorType;

    .line 26
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "GRAVITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    .line 29
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "ANGULAR_VELOCITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    .line 35
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "ANGULAR_POSITION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    .line 38
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "RELATIVE_CURSOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->RELATIVE_CURSOR:Lcom/hcrest/sensors/SensorType;

    .line 41
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "APP_STATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->APP_STATE:Lcom/hcrest/sensors/SensorType;

    .line 43
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "LIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->LIGHT:Lcom/hcrest/sensors/SensorType;

    .line 45
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "PRESSURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->PRESSURE:Lcom/hcrest/sensors/SensorType;

    .line 47
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "PROXIMITY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    .line 49
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "RELATIVE_HUMIDITY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->RELATIVE_HUMIDITY:Lcom/hcrest/sensors/SensorType;

    .line 51
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "AMBIENT_TEMPERATURE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->AMBIENT_TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    .line 53
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "MAGNETIC_FIELD_UNCALIBRATED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    .line 55
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "GAME_ROTATION_VECTOR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->GAME_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    .line 57
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "GYROSCOPE_UNCALIBRATED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->GYROSCOPE_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    .line 59
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "SIGNIFICANT_MOTION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->SIGNIFICANT_MOTION:Lcom/hcrest/sensors/SensorType;

    .line 61
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "STEP_DETECTOR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->STEP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    .line 63
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "STEP_COUNTER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->STEP_COUNTER:Lcom/hcrest/sensors/SensorType;

    .line 65
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "GEOMAGNETIC_ROTATION_VECTOR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->GEOMAGNETIC_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    .line 67
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "TAP_DETECTOR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->TAP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    .line 69
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "TEMPERATURE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    .line 71
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "FLIP_DETECTOR"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->FLIP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    .line 73
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "PICKUP_DETECTOR"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->PICKUP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    .line 75
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "SHAKE_DETECTOR"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->SHAKE_DETECTOR:Lcom/hcrest/sensors/SensorType;

    .line 77
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "STABILITY_DETECTOR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->STABILITY_DETECTOR:Lcom/hcrest/sensors/SensorType;

    .line 79
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "STABILITY_CLASSIFIER"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->STABILITY_CLASSIFIER:Lcom/hcrest/sensors/SensorType;

    .line 81
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "RAW_ACCELEROMETER"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->RAW_ACCELEROMETER:Lcom/hcrest/sensors/SensorType;

    .line 83
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "RAW_GYROSCOPE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->RAW_GYROSCOPE:Lcom/hcrest/sensors/SensorType;

    .line 85
    new-instance v0, Lcom/hcrest/sensors/SensorType;

    const-string v1, "RAW_MAGNETIC_FIELD"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/SensorType;->RAW_MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    .line 3
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/hcrest/sensors/SensorType;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ALL:Lcom/hcrest/sensors/SensorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ORIENTATION:Lcom/hcrest/sensors/SensorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hcrest/sensors/SensorType;->RELATIVE_CURSOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/hcrest/sensors/SensorType;->APP_STATE:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/hcrest/sensors/SensorType;->LIGHT:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/hcrest/sensors/SensorType;->PRESSURE:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/hcrest/sensors/SensorType;->RELATIVE_HUMIDITY:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/hcrest/sensors/SensorType;->AMBIENT_TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/hcrest/sensors/SensorType;->GAME_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/hcrest/sensors/SensorType;->GYROSCOPE_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/hcrest/sensors/SensorType;->SIGNIFICANT_MOTION:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/hcrest/sensors/SensorType;->STEP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/hcrest/sensors/SensorType;->STEP_COUNTER:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/hcrest/sensors/SensorType;->GEOMAGNETIC_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/hcrest/sensors/SensorType;->TAP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/hcrest/sensors/SensorType;->TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/hcrest/sensors/SensorType;->FLIP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/hcrest/sensors/SensorType;->PICKUP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/hcrest/sensors/SensorType;->SHAKE_DETECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/hcrest/sensors/SensorType;->STABILITY_DETECTOR:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/hcrest/sensors/SensorType;->STABILITY_CLASSIFIER:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/hcrest/sensors/SensorType;->RAW_ACCELEROMETER:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/hcrest/sensors/SensorType;->RAW_GYROSCOPE:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/hcrest/sensors/SensorType;->RAW_MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hcrest/sensors/SensorType;->a:[Lcom/hcrest/sensors/SensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/sensors/SensorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/hcrest/sensors/SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/sensors/SensorType;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/sensors/SensorType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/hcrest/sensors/SensorType;->a:[Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0}, [Lcom/hcrest/sensors/SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/sensors/SensorType;

    return-object v0
.end method
