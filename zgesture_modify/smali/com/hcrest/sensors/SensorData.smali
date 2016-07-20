.class public Lcom/hcrest/sensors/SensorData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/sensors/SensorData$1;
    }
.end annotation


# instance fields
.field A:Lcom/hcrest/sensors/util/Quaternion;

.field B:F

.field C:I

.field D:I

.field E:I

.field F:[I

.field G:F

.field H:F

.field I:Lcom/hcrest/sensors/util/Vector3D;

.field J:Lcom/hcrest/sensors/util/Vector3D;

.field K:Lcom/hcrest/sensors/util/Vector3D;

.field a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field d:Lcom/hcrest/sensors/util/Vector3D;

.field e:Lcom/hcrest/sensors/util/Vector3D;

.field f:Lcom/hcrest/sensors/util/Vector3D;

.field g:Lcom/hcrest/sensors/util/Vector3D;

.field h:Lcom/hcrest/sensors/util/Vector3D;

.field i:Lcom/hcrest/sensors/util/Vector3D;

.field j:Lcom/hcrest/sensors/util/Quaternion;

.field k:F

.field l:Lcom/hcrest/sensors/util/Angle;

.field m:[F

.field n:I

.field o:F

.field p:F

.field q:F

.field r:F

.field s:F

.field t:F

.field u:[F

.field v:Lcom/hcrest/sensors/util/Quaternion;

.field w:[F

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    .line 50
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->d:Lcom/hcrest/sensors/util/Vector3D;

    .line 53
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->e:Lcom/hcrest/sensors/util/Vector3D;

    .line 56
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->f:Lcom/hcrest/sensors/util/Vector3D;

    .line 59
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->g:Lcom/hcrest/sensors/util/Vector3D;

    .line 62
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->h:Lcom/hcrest/sensors/util/Vector3D;

    .line 65
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->i:Lcom/hcrest/sensors/util/Vector3D;

    .line 68
    sget-object v0, Lcom/hcrest/sensors/util/Quaternion;->IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->j:Lcom/hcrest/sensors/util/Quaternion;

    .line 73
    sget-object v0, Lcom/hcrest/sensors/util/Angle;->ZERO:Lcom/hcrest/sensors/util/Angle;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->l:Lcom/hcrest/sensors/util/Angle;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->m:[F

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/sensors/SensorData;->n:I

    .line 81
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->o:F

    .line 82
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->p:F

    .line 83
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->q:F

    .line 84
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->r:F

    .line 85
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->s:F

    .line 86
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->t:F

    .line 87
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->u:[F

    .line 88
    sget-object v0, Lcom/hcrest/sensors/util/Quaternion;->IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->v:Lcom/hcrest/sensors/util/Quaternion;

    .line 89
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->w:[F

    .line 90
    iput v2, p0, Lcom/hcrest/sensors/SensorData;->x:I

    .line 91
    iput v2, p0, Lcom/hcrest/sensors/SensorData;->y:I

    .line 92
    iput v2, p0, Lcom/hcrest/sensors/SensorData;->z:I

    .line 93
    sget-object v0, Lcom/hcrest/sensors/util/Quaternion;->IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->A:Lcom/hcrest/sensors/util/Quaternion;

    .line 94
    iput v1, p0, Lcom/hcrest/sensors/SensorData;->B:F

    .line 95
    iput v2, p0, Lcom/hcrest/sensors/SensorData;->C:I

    .line 96
    iput v2, p0, Lcom/hcrest/sensors/SensorData;->D:I

    .line 97
    iput v2, p0, Lcom/hcrest/sensors/SensorData;->E:I

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->F:[I

    .line 99
    iput v3, p0, Lcom/hcrest/sensors/SensorData;->G:F

    .line 100
    iput v3, p0, Lcom/hcrest/sensors/SensorData;->H:F

    .line 101
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->I:Lcom/hcrest/sensors/util/Vector3D;

    .line 102
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->J:Lcom/hcrest/sensors/util/Vector3D;

    .line 103
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->K:Lcom/hcrest/sensors/util/Vector3D;

    return-void

    .line 76
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getAmbientTemperature()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->t:F

    return v0
.end method

.method public getAngularPosition()Lcom/hcrest/sensors/util/Quaternion;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->j:Lcom/hcrest/sensors/util/Quaternion;

    return-object v0
.end method

.method public getAngularPositionAccuracy()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->k:F

    return v0
.end method

.method public getAngularVelocity()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->g:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getAngularVelocitySamplePeriod()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/hcrest/sensors/SensorData;->b:J

    return-wide v0
.end method

.method public getApplicationState()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->n:I

    return v0
.end method

.method public getFlipDetected()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->C:I

    return v0
.end method

.method public getGameRotationVector()Lcom/hcrest/sensors/util/Quaternion;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->v:Lcom/hcrest/sensors/util/Quaternion;

    return-object v0
.end method

.method public getGeomagneticRotationVector()Lcom/hcrest/sensors/util/Quaternion;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->A:Lcom/hcrest/sensors/util/Quaternion;

    return-object v0
.end method

.method public getGeomagneticRotationVectorAccuracy()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->B:F

    return v0
.end method

.method public getGravity()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->f:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getGyroscopeUncalibrated()[F
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->w:[F

    return-object v0
.end method

.method public getLight()F
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->o:F

    return v0
.end method

.method public getLinearAcceleration()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->d:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getLinearAccelerationNoGravity()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->e:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getMagneticFieldUncalibrated()[F
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->u:[F

    return-object v0
.end method

.method public getMagnetometer()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->h:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getOrientation()Lcom/hcrest/sensors/util/Angle;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->l:Lcom/hcrest/sensors/util/Angle;

    return-object v0
.end method

.method public getPickUpDetected()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->D:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->p:F

    return v0
.end method

.method public getProximity()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->r:F

    return v0
.end method

.method public getRawAccelerometer()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->I:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getRawGyroscope()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->J:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getRawMagneticField()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->K:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getRelativeCursorPosition()[F
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->m:[F

    return-object v0
.end method

.method public getRelativeHumidity()F
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->s:F

    return v0
.end method

.method public getSensorTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getShakeDetected()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->E:I

    return v0
.end method

.method public getSignificantMotion()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->x:I

    return v0
.end method

.method public getStabilityClassified()F
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->G:F

    return v0
.end method

.method public getStabilityDetected()F
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->H:F

    return v0
.end method

.method public getStepsCounted()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->z:I

    return v0
.end method

.method public getStepsDetected()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/hcrest/sensors/SensorData;->y:I

    return v0
.end method

.method public getTapDetected()[I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->F:[I

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/hcrest/sensors/SensorData;->c:J

    return-wide v0
.end method

.method public setAmbientTemperature(F)V
    .locals 2
    .param p1, "ambientTemperature"    # F

    .prologue
    .line 377
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->t:F

    .line 378
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->AMBIENT_TEMPERATURE:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;)V
    .locals 2
    .param p1, "angularPosition"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->j:Lcom/hcrest/sensors/util/Quaternion;

    .line 276
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;F)V
    .locals 0
    .param p1, "angularPosition"    # Lcom/hcrest/sensors/util/Quaternion;
    .param p2, "accuracy"    # F

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/hcrest/sensors/SensorData;->setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;)V

    .line 281
    iput p2, p0, Lcom/hcrest/sensors/SensorData;->k:F

    .line 282
    return-void
.end method

.method public setAngularVelocity(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "angularVelocity"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->g:Lcom/hcrest/sensors/util/Vector3D;

    .line 206
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public setAngularVelocity(Lcom/hcrest/sensors/util/Vector3D;J)V
    .locals 2
    .param p1, "angularVelocity"    # Lcom/hcrest/sensors/util/Vector3D;
    .param p2, "angularVelocitySamplePeriod"    # J

    .prologue
    .line 217
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->g:Lcom/hcrest/sensors/util/Vector3D;

    .line 218
    iput-wide p2, p0, Lcom/hcrest/sensors/SensorData;->b:J

    .line 219
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public setAngularVelocitySamplePeriod(J)V
    .locals 1
    .param p1, "angularVelocitySamplePeriod"    # J

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/hcrest/sensors/SensorData;->b:J

    .line 238
    return-void
.end method

.method public setApplicationState(I)V
    .locals 2
    .param p1, "appState"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->n:I

    .line 333
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->APP_STATE:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public setFlipDetected(I)V
    .locals 2
    .param p1, "flipDetected"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->C:I

    .line 459
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->FLIP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public setGameRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V
    .locals 2
    .param p1, "gameRotationVector"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->v:Lcom/hcrest/sensors/util/Quaternion;

    .line 396
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->GAME_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V
    .locals 2
    .param p1, "geomagneticRotationVector"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->A:Lcom/hcrest/sensors/util/Quaternion;

    .line 441
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->GEOMAGNETIC_ROTATION_VECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method public setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;F)V
    .locals 0
    .param p1, "geomagneticRotationVector"    # Lcom/hcrest/sensors/util/Quaternion;
    .param p2, "accuracy"    # F

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/hcrest/sensors/SensorData;->setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    .line 446
    iput p2, p0, Lcom/hcrest/sensors/SensorData;->B:F

    .line 447
    return-void
.end method

.method public setGravity(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "gravity"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->f:Lcom/hcrest/sensors/util/Vector3D;

    .line 187
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public setGyroscopeUncalibrated([F)V
    .locals 2
    .param p1, "gyroscopeUncalibrated"    # [F

    .prologue
    .line 404
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->w:[F

    .line 405
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->GYROSCOPE_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public setLight(F)V
    .locals 2
    .param p1, "light"    # F

    .prologue
    .line 341
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->o:F

    .line 342
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->LIGHT:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public setLinearAcceleration(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "linearAcceleration"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->d:Lcom/hcrest/sensors/util/Vector3D;

    .line 149
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public setLinearAccelerationNoGravity(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "linearAccelerationNoGravity"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->e:Lcom/hcrest/sensors/util/Vector3D;

    .line 168
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public setMagneticFieldUncalibrated([F)V
    .locals 2
    .param p1, "magneticFieldUncalibrated"    # [F

    .prologue
    .line 386
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->u:[F

    .line 387
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD_UNCALIBRATED:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 388
    return-void
.end method

.method public setMagnetometer(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "magnetometer"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->h:Lcom/hcrest/sensors/util/Vector3D;

    .line 257
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public setOrientation(Lcom/hcrest/sensors/util/Angle;)V
    .locals 2
    .param p1, "orientation"    # Lcom/hcrest/sensors/util/Angle;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->l:Lcom/hcrest/sensors/util/Angle;

    .line 304
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ORIENTATION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public setPickUpDetected(I)V
    .locals 2
    .param p1, "pickUpDetected"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->D:I

    .line 468
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->PICKUP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public setPressure(F)V
    .locals 2
    .param p1, "pressure"    # F

    .prologue
    .line 350
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->p:F

    .line 351
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->PRESSURE:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public setProximity(F)V
    .locals 2
    .param p1, "proximity"    # F

    .prologue
    .line 359
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->r:F

    .line 360
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public setRawAccelerometer(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "rawAccelerometer"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->I:Lcom/hcrest/sensors/util/Vector3D;

    .line 513
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->RAW_ACCELEROMETER:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method public setRawGyroscope(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "rawGyroscope"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->J:Lcom/hcrest/sensors/util/Vector3D;

    .line 522
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->RAW_GYROSCOPE:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public setRawMagneticField(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 2
    .param p1, "rawMagneticField"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/hcrest/sensors/SensorData;->K:Lcom/hcrest/sensors/util/Vector3D;

    .line 531
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->RAW_MAGNETIC_FIELD:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public setRelativeCursorPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->m:[F

    .line 324
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->RELATIVE_CURSOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public setRelativeHumidity(F)V
    .locals 2
    .param p1, "relativeHumidity"    # F

    .prologue
    .line 368
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->s:F

    .line 369
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->RELATIVE_HUMIDITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method public setShakeDetected(I)V
    .locals 2
    .param p1, "shakeDetected"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->E:I

    .line 477
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->SHAKE_DETECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public setSignificantMotion(I)V
    .locals 2
    .param p1, "significantMotion"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->x:I

    .line 414
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->SIGNIFICANT_MOTION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public setStabilityClassified(F)V
    .locals 2
    .param p1, "stabilityClassifed"    # F

    .prologue
    .line 494
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->G:F

    .line 495
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->STABILITY_CLASSIFIER:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 496
    return-void
.end method

.method public setStabilityDetected(F)V
    .locals 2
    .param p1, "stabilityDetected"    # F

    .prologue
    .line 503
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->H:F

    .line 504
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->STABILITY_DETECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public setStepsCounted(I)V
    .locals 2
    .param p1, "stepsCounted"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->z:I

    .line 432
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->STEP_COUNTER:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method public setStepsDetected(I)V
    .locals 2
    .param p1, "stepsDetected"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/hcrest/sensors/SensorData;->y:I

    .line 423
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->STEP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public setTapDetected(III)V
    .locals 2
    .param p1, "tapX"    # I
    .param p2, "tapY"    # I
    .param p3, "tapZ"    # I

    .prologue
    .line 485
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/hcrest/sensors/SensorData;->F:[I

    .line 486
    iget-object v0, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->TAP_DETECTOR:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/hcrest/sensors/SensorData;->c:J

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/hcrest/sensors/SensorData;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const/4 v0, 0x0

    .line 549
    iget-object v1, p0, Lcom/hcrest/sensors/SensorData;->a:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/sensors/SensorType;

    .line 550
    if-lez v1, :cond_0

    .line 551
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_0
    sget-object v4, Lcom/hcrest/sensors/SensorData$1;->a:[I

    invoke-virtual {v0}, Lcom/hcrest/sensors/SensorType;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "orientation:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->l:Lcom/hcrest/sensors/util/Angle;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 558
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angularPosition:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->j:Lcom/hcrest/sensors/util/Quaternion;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 561
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angularVelocity:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->g:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angularVelocitySamplePeriod:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/hcrest/sensors/SensorData;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 567
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "magnetometer:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->h:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 570
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gravity:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->f:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 573
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linearAcceleration:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->d:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 576
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linearAccelerationNoGrav:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->e:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 580
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applicationState:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/hcrest/sensors/SensorData;->n:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 583
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relativeCursorPosition:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/hcrest/sensors/SensorData;->m:[F

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 591
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
