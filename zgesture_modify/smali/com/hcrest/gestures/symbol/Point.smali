.class public Lcom/hcrest/gestures/symbol/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public final dx:F

.field public final dy:F

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/hcrest/gestures/symbol/Point;->x:F

    .line 49
    iput p2, p0, Lcom/hcrest/gestures/symbol/Point;->y:F

    .line 50
    iput p3, p0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    .line 51
    iput p4, p0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    .line 52
    return-void
.end method


# virtual methods
.method public distance(Lcom/hcrest/gestures/symbol/Point;)F
    .locals 4
    .param p1, "point"    # Lcom/hcrest/gestures/symbol/Point;

    .prologue
    .line 63
    iget v0, p1, Lcom/hcrest/gestures/symbol/Point;->x:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/Point;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/hcrest/gestures/symbol/Point;->x:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/Point;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/hcrest/gestures/symbol/Point;->y:F

    iget v2, p0, Lcom/hcrest/gestures/symbol/Point;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/hcrest/gestures/symbol/Point;->y:F

    iget v3, p0, Lcom/hcrest/gestures/symbol/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    .line 82
    :cond_2
    instance-of v3, p1, Lcom/hcrest/gestures/symbol/Point;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/hcrest/gestures/symbol/Point;

    .line 84
    .local v0, "p2":Lcom/hcrest/gestures/symbol/Point;
    iget v3, p0, Lcom/hcrest/gestures/symbol/Point;->x:F

    iget v4, v0, Lcom/hcrest/gestures/symbol/Point;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/hcrest/gestures/symbol/Point;->y:F

    iget v4, v0, Lcom/hcrest/gestures/symbol/Point;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    iget v4, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    iget v4, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/hcrest/gestures/symbol/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hcrest/gestures/symbol/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
