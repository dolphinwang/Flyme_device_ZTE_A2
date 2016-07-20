.class public Lcom/hcrest/sensors/util/Vector3D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NaN:Lcom/hcrest/sensors/util/Vector3D;

.field public static final ZERO:Lcom/hcrest/sensors/util/Vector3D;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v1, 0x0

    .line 25
    new-instance v0, Lcom/hcrest/sensors/util/Vector3D;

    invoke-direct {v0, v1, v1, v1}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    sput-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    .line 29
    new-instance v0, Lcom/hcrest/sensors/util/Vector3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    sput-object v0, Lcom/hcrest/sensors/util/Vector3D;->NaN:Lcom/hcrest/sensors/util/Vector3D;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    .line 41
    iput p2, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    .line 42
    iput p3, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    .line 43
    return-void
.end method


# virtual methods
.method public add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 5
    .param p1, "scalar"    # F
    .param p2, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 170
    invoke-virtual {p2, p1}, Lcom/hcrest/sensors/util/Vector3D;->scalarMultiply(F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 172
    invoke-virtual {p2}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 173
    invoke-virtual {p2}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 175
    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    add-float/2addr v2, v4

    invoke-direct {v3, v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public add(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 5
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 152
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 153
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 155
    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    add-float/2addr v2, v4

    invoke-direct {v3, v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public angle(Lcom/hcrest/sensors/util/Vector3D;)F
    .locals 10
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    const-wide/16 v8, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 214
    cmpl-double v2, v0, v8

    if-nez v2, :cond_0

    .line 215
    const/high16 v0, 0x7fc00000    # NaNf

    .line 228
    :goto_0
    return v0

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hcrest/sensors/util/Vector3D;->dotProduct(Lcom/hcrest/sensors/util/Vector3D;)F

    move-result v2

    float-to-double v2, v2

    .line 218
    const-wide v4, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v4, v0

    .line 219
    neg-double v6, v4

    cmpg-double v6, v2, v6

    if-ltz v6, :cond_1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    .line 221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hcrest/sensors/util/Vector3D;->crossProduct(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v4

    .line 222
    cmpl-double v2, v2, v8

    if-ltz v2, :cond_2

    .line 223
    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v2

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    .line 225
    :cond_2
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v4

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_0

    .line 228
    :cond_3
    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public asArray()[F
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    aput v2, v0, v1

    return-object v0
.end method

.method public crossProduct(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 6
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 103
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 104
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 106
    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    mul-float/2addr v0, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    invoke-direct {v3, v4, v2, v0}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public distanceFromLine(Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)F
    .locals 4
    .param p1, "v1"    # Lcom/hcrest/sensors/util/Vector3D;
    .param p2, "v2"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/Vector3D;->crossProduct(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v0

    invoke-virtual {p2, p1}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public dotProduct(Lcom/hcrest/sensors/util/Vector3D;)F
    .locals 4
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 120
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 121
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 123
    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    if-nez p1, :cond_1

    .line 259
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 252
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    goto :goto_0

    .line 253
    :cond_2
    instance-of v2, p1, Lcom/hcrest/sensors/util/Vector3D;

    if-eqz v2, :cond_0

    .line 254
    check-cast p1, Lcom/hcrest/sensors/util/Vector3D;

    .line 255
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

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

.method public getX()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    return v0
.end method

.method public norm()D
    .locals 3

    .prologue
    .line 78
    iget v0, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    iget v1, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()Lcom/hcrest/sensors/util/Vector3D;
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v0

    double-to-float v0, v0

    .line 88
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 89
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 90
    new-instance v0, Lcom/hcrest/sensors/util/Vector3D;

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    mul-float/2addr v1, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->NaN:Lcom/hcrest/sensors/util/Vector3D;

    goto :goto_0
.end method

.method public scalarMultiply(F)Lcom/hcrest/sensors/util/Vector3D;
    .locals 4
    .param p1, "scalar"    # F

    .prologue
    .line 190
    new-instance v0, Lcom/hcrest/sensors/util/Vector3D;

    iget v1, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 5
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 134
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 135
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 137
    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    sub-float v0, v4, v0

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    sub-float v1, v4, v1

    iget v4, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

    sub-float v2, v4, v2

    invoke-direct {v3, v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector3D [x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Vector3D;->c:F

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
