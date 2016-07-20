.class public Lcom/hcrest/sensors/util/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

.field public static final NaN:Lcom/hcrest/sensors/util/Quaternion;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v1, 0x0

    .line 40
    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/hcrest/sensors/util/Quaternion;->NaN:Lcom/hcrest/sensors/util/Quaternion;

    .line 44
    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    invoke-direct {v0, v3, v1, v1, v1}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/hcrest/sensors/util/Quaternion;->IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    .line 57
    iput p2, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    .line 58
    iput p3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    .line 59
    iput p4, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    .line 60
    return-void
.end method

.method public constructor <init>(FFFFZ)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "normalize"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p5, :cond_0

    .line 74
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 75
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 77
    mul-float/2addr p1, v0

    .line 78
    mul-float/2addr p2, v0

    .line 79
    mul-float/2addr p3, v0

    .line 80
    mul-float/2addr p4, v0

    .line 83
    :cond_0
    iput p1, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    .line 84
    iput p2, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    .line 85
    iput p3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    .line 86
    iput p4, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    .line 87
    return-void
.end method

.method public static fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;
    .locals 3
    .param p0, "vx"    # F
    .param p1, "vy"    # F
    .param p2, "vz"    # F

    .prologue
    const/4 v0, 0x0

    .line 237
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, p0, p0

    sub-float/2addr v1, v2

    mul-float v2, p1, p1

    sub-float/2addr v1, v2

    mul-float v2, p2, p2

    sub-float/2addr v1, v2

    .line 238
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 239
    :cond_0
    new-instance v1, Lcom/hcrest/sensors/util/Quaternion;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public static fromVector(FFF)Lcom/hcrest/sensors/util/Quaternion;
    .locals 6
    .param p0, "vx"    # F
    .param p1, "vy"    # F
    .param p2, "vz"    # F

    .prologue
    const/4 v1, 0x0

    .line 267
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v2, p0, p0

    sub-float/2addr v0, v2

    mul-float v2, p1, p1

    sub-float/2addr v0, v2

    mul-float v2, p2, p2

    sub-float/2addr v0, v2

    .line 268
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 269
    :cond_0
    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v5, 0x1

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    return-object v0
.end method

.method public static fromVector(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Quaternion;
    .locals 6
    .param p0, "vector"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v2

    .line 250
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v3

    .line 251
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v4

    .line 253
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v2, v2

    sub-float/2addr v0, v5

    mul-float v5, v3, v3

    sub-float/2addr v0, v5

    mul-float v5, v4, v4

    sub-float/2addr v0, v5

    .line 254
    cmpl-float v5, v0, v1

    if-lez v5, :cond_0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 255
    :cond_0
    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    return-object v0
.end method


# virtual methods
.method public applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 11
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 195
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 196
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 197
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 199
    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 201
    new-instance v4, Lcom/hcrest/sensors/util/Vector3D;

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    neg-float v5, v5

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    neg-float v6, v6

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    mul-float/2addr v5, v10

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    neg-float v6, v6

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    neg-float v7, v7

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    neg-float v7, v7

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    neg-float v8, v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v1, v9

    iget v9, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v0, v9

    sub-float v0, v1, v0

    sub-float v0, v8, v0

    mul-float/2addr v0, v7

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v10

    sub-float/2addr v0, v2

    invoke-direct {v4, v5, v6, v0}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v4
.end method

.method public applyTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 11
    .param p1, "v"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 175
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    .line 176
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v2

    .line 179
    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 181
    new-instance v4, Lcom/hcrest/sensors/util/Vector3D;

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    mul-float/2addr v5, v10

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v1, v9

    iget v9, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v0, v9

    sub-float v0, v1, v0

    sub-float v0, v8, v0

    mul-float/2addr v0, v7

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v10

    sub-float/2addr v0, v2

    invoke-direct {v4, v5, v6, v0}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    return-object v4
.end method

.method public asArray()[F
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    aput v2, v0, v1

    return-object v0
.end method

.method public composeWith(Lcom/hcrest/sensors/util/Quaternion;)Lcom/hcrest/sensors/util/Quaternion;
    .locals 9
    .param p1, "q"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getW()F

    move-result v0

    .line 216
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getX()F

    move-result v1

    .line 217
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getY()F

    move-result v2

    .line 218
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getZ()F

    move-result v3

    .line 220
    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 221
    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 222
    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v7, v3

    iget v8, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 223
    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v0, v7

    add-float/2addr v0, v3

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 225
    new-instance v1, Lcom/hcrest/sensors/util/Quaternion;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    if-nez p1, :cond_1

    .line 357
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 349
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    goto :goto_0

    .line 350
    :cond_2
    instance-of v2, p1, Lcom/hcrest/sensors/util/Quaternion;

    if-eqz v2, :cond_0

    .line 351
    check-cast p1, Lcom/hcrest/sensors/util/Quaternion;

    .line 352
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Quaternion;->getW()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getW()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Quaternion;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getZ()F

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

.method public getMatrix()[[D
    .locals 28

    .prologue
    .line 292
    const/4 v2, 0x3

    new-array v2, v2, [[D

    .line 293
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-object v4, v2, v3

    .line 294
    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-object v4, v2, v3

    .line 295
    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-object v4, v2, v3

    .line 297
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v3, v4

    float-to-double v4, v3

    .line 298
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v3, v6

    float-to-double v6, v3

    .line 299
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v3, v8

    float-to-double v8, v3

    .line 300
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v3, v10

    float-to-double v10, v3

    .line 302
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v3, v12

    float-to-double v12, v3

    .line 303
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v3, v14

    float-to-double v14, v3

    .line 304
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    move/from16 v16, v0

    mul-float v3, v3, v16

    float-to-double v0, v3

    move-wide/from16 v16, v0

    .line 306
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    move/from16 v18, v0

    mul-float v3, v3, v18

    float-to-double v0, v3

    move-wide/from16 v18, v0

    .line 307
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    move/from16 v20, v0

    mul-float v3, v3, v20

    float-to-double v0, v3

    move-wide/from16 v20, v0

    .line 309
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    move/from16 v22, v0

    mul-float v3, v3, v22

    float-to-double v0, v3

    move-wide/from16 v22, v0

    .line 311
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double/2addr v6, v4

    mul-double v6, v6, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v26

    aput-wide v6, v3, v24

    .line 312
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v6, 0x0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    add-double v26, v18, v16

    mul-double v24, v24, v26

    aput-wide v24, v3, v6

    .line 313
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v6, 0x0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    add-double v26, v20, v14

    mul-double v24, v24, v26

    aput-wide v24, v3, v6

    .line 315
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v6, 0x1

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    add-double v16, v16, v18

    mul-double v16, v16, v24

    aput-wide v16, v3, v6

    .line 316
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v6, 0x1

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-double/2addr v8, v4

    mul-double v8, v8, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, v16

    aput-wide v8, v3, v6

    .line 317
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v6, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v16, v22, v12

    mul-double v8, v8, v16

    aput-wide v8, v3, v6

    .line 319
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v6, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v14, v14, v20

    mul-double/2addr v8, v14

    aput-wide v8, v3, v6

    .line 320
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v6, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v12, v12, v22

    mul-double/2addr v8, v12

    aput-wide v8, v3, v6

    .line 321
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v6, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v10

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    aput-wide v4, v3, v6

    .line 323
    return-object v2
.end method

.method public getOrientation()Lcom/hcrest/sensors/util/Angle;
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 278
    iget v0, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v7

    float-to-double v0, v0

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v7

    sub-float v2, v8, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 279
    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v7

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 280
    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-double v2, v2

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v4, v7

    sub-float v4, v8, v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 282
    new-instance v3, Lcom/hcrest/sensors/util/Angle;

    invoke-direct {v3, v0, v1, v2}, Lcom/hcrest/sensors/util/Angle;-><init>(FFF)V

    return-object v3
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    return v0
.end method

.method public multiply(Lcom/hcrest/sensors/util/Quaternion;)Lcom/hcrest/sensors/util/Quaternion;
    .locals 8
    .param p1, "q"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getW()F

    move-result v0

    .line 133
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getX()F

    move-result v1

    .line 134
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getY()F

    move-result v2

    .line 135
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getZ()F

    move-result v3

    .line 137
    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 138
    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    .line 139
    iget v6, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    .line 140
    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 142
    new-instance v1, Lcom/hcrest/sensors/util/Quaternion;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    return-object v1
.end method

.method public norm()D
    .locals 3

    .prologue
    .line 151
    iget v0, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()Lcom/hcrest/sensors/util/Quaternion;
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/hcrest/sensors/util/Quaternion;->norm()D

    move-result-wide v0

    double-to-float v0, v0

    .line 161
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 162
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 163
    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    iget v2, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

    mul-float/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    .line 165
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hcrest/sensors/util/Quaternion;->NaN:Lcom/hcrest/sensors/util/Quaternion;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quaternion [w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.16f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->a:F

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

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->b:F

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

    iget v3, p0, Lcom/hcrest/sensors/util/Quaternion;->c:F

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
