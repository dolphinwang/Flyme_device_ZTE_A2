.class public Lcom/hcrest/sensors/util/Angle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/sensors/util/Angle$1;
    }
.end annotation


# static fields
.field public static final ZERO:Lcom/hcrest/sensors/util/Angle;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcom/hcrest/sensors/util/Angle;

    invoke-direct {v0, v1, v1, v1}, Lcom/hcrest/sensors/util/Angle;-><init>(FFF)V

    sput-object v0, Lcom/hcrest/sensors/util/Angle;->ZERO:Lcom/hcrest/sensors/util/Angle;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/hcrest/sensors/util/Angle;->a:F

    .line 38
    iput p2, p0, Lcom/hcrest/sensors/util/Angle;->b:F

    .line 39
    iput p3, p0, Lcom/hcrest/sensors/util/Angle;->c:F

    .line 40
    return-void
.end method


# virtual methods
.method public asArray()[F
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/hcrest/sensors/util/Angle;->a:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/hcrest/sensors/util/Angle;->b:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/hcrest/sensors/util/Angle;->c:F

    aput v2, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 117
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 110
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    goto :goto_0

    .line 111
    :cond_2
    instance-of v2, p1, Lcom/hcrest/sensors/util/Angle;

    if-eqz v2, :cond_0

    .line 112
    check-cast p1, Lcom/hcrest/sensors/util/Angle;

    .line 113
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Angle;->getYaw()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Angle;->getYaw()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Angle;->getPitch()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Angle;->getPitch()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Angle;->getRoll()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Angle;->getRoll()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAngleByAxis(Lcom/hcrest/sensors/util/RotationAxis;)F
    .locals 2
    .param p1, "axis"    # Lcom/hcrest/sensors/util/RotationAxis;

    .prologue
    .line 77
    sget-object v0, Lcom/hcrest/sensors/util/Angle$1;->a:[I

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/RotationAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 79
    :pswitch_0
    iget v0, p0, Lcom/hcrest/sensors/util/Angle;->a:F

    goto :goto_0

    .line 81
    :pswitch_1
    iget v0, p0, Lcom/hcrest/sensors/util/Angle;->b:F

    goto :goto_0

    .line 83
    :pswitch_2
    iget v0, p0, Lcom/hcrest/sensors/util/Angle;->c:F

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/hcrest/sensors/util/Angle;->b:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/hcrest/sensors/util/Angle;->c:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/hcrest/sensors/util/Angle;->a:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Angle [yaw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Angle;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Angle;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Angle;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
