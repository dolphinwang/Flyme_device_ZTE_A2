.class public Lcom/hcrest/android/sensors/SensorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorTypeFromAndroidType(I)Lcom/hcrest/sensors/SensorType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 10
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 12
    :sswitch_0
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ALL:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 15
    :sswitch_1
    sget-object v0, Lcom/hcrest/sensors/SensorType;->GAME_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 18
    :sswitch_2
    sget-object v0, Lcom/hcrest/sensors/SensorType;->GEOMAGNETIC_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 21
    :sswitch_3
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 24
    :sswitch_4
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 27
    :sswitch_5
    sget-object v0, Lcom/hcrest/sensors/SensorType;->GYROSCOPE_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 30
    :sswitch_6
    sget-object v0, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 33
    :sswitch_7
    sget-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 36
    :sswitch_8
    sget-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 39
    :sswitch_9
    sget-object v0, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 42
    :sswitch_a
    sget-object v0, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 45
    :sswitch_b
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ORIENTATION:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 48
    :sswitch_c
    sget-object v0, Lcom/hcrest/sensors/SensorType;->LIGHT:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 51
    :sswitch_d
    sget-object v0, Lcom/hcrest/sensors/SensorType;->PRESSURE:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 54
    :sswitch_e
    sget-object v0, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 57
    :sswitch_f
    sget-object v0, Lcom/hcrest/sensors/SensorType;->TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 60
    :sswitch_10
    sget-object v0, Lcom/hcrest/sensors/SensorType;->AMBIENT_TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 63
    :sswitch_11
    sget-object v0, Lcom/hcrest/sensors/SensorType;->RELATIVE_HUMIDITY:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 66
    :sswitch_12
    sget-object v0, Lcom/hcrest/sensors/SensorType;->SIGNIFICANT_MOTION:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 69
    :sswitch_13
    sget-object v0, Lcom/hcrest/sensors/SensorType;->STEP_COUNTER:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 72
    :sswitch_14
    sget-object v0, Lcom/hcrest/sensors/SensorType;->STEP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 75
    :sswitch_15
    sget-object v0, Lcom/hcrest/sensors/SensorType;->RAW_ACCELEROMETER:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 78
    :sswitch_16
    sget-object v0, Lcom/hcrest/sensors/SensorType;->RAW_GYROSCOPE:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 81
    :sswitch_17
    sget-object v0, Lcom/hcrest/sensors/SensorType;->RAW_MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 84
    :sswitch_18
    sget-object v0, Lcom/hcrest/sensors/SensorType;->TAP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 87
    :sswitch_19
    sget-object v0, Lcom/hcrest/sensors/SensorType;->SHAKE_DETECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 90
    :sswitch_1a
    sget-object v0, Lcom/hcrest/sensors/SensorType;->FLIP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 93
    :sswitch_1b
    sget-object v0, Lcom/hcrest/sensors/SensorType;->PICKUP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 96
    :sswitch_1c
    sget-object v0, Lcom/hcrest/sensors/SensorType;->STABILITY_DETECTOR:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 99
    :sswitch_1d
    sget-object v0, Lcom/hcrest/sensors/SensorType;->STABILITY_CLASSIFIER:Lcom/hcrest/sensors/SensorType;

    goto :goto_0

    .line 10
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_9
        0x3 -> :sswitch_b
        0x4 -> :sswitch_4
        0x5 -> :sswitch_c
        0x6 -> :sswitch_d
        0x7 -> :sswitch_f
        0x8 -> :sswitch_e
        0x9 -> :sswitch_6
        0xa -> :sswitch_8
        0xb -> :sswitch_3
        0xc -> :sswitch_11
        0xd -> :sswitch_10
        0xe -> :sswitch_a
        0xf -> :sswitch_1
        0x10 -> :sswitch_5
        0x11 -> :sswitch_12
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x14 -> :sswitch_2
        0x1010002 -> :sswitch_15
        0x1010003 -> :sswitch_16
        0x1010004 -> :sswitch_17
        0x1010005 -> :sswitch_1d
        0x1010007 -> :sswitch_18
        0x1010008 -> :sswitch_19
        0x1010009 -> :sswitch_1a
        0x101000a -> :sswitch_1b
        0x101000b -> :sswitch_1c
    .end sparse-switch
.end method
